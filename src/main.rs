use std::mem;

use wasmtime::{Engine, Linker, Module, Store};

#[repr(C)]
#[derive(Debug)]
struct _Ret {
    status: i32,
    len: i32,
    ptr_body: i32,
}

#[repr(C)]
#[derive(Debug)]
struct _Call {
    a: i32,
    b: i32,
    c: i32,
}

impl From<_Call> for &[u8] {
    fn from(val: _Call) -> Self {
        unsafe {
            std::slice::from_raw_parts(
                (&val as *const _Call) as *const u8,
                std::mem::size_of::<_Call>(),
            )
        }
    }
}

#[derive(Default, Debug)]
struct Ret {
    status: i32,
    body: String,
}

fn main() -> anyhow::Result<()> {
    #[derive(Clone)]
    struct State {}

    let engine = Engine::default();
    let module = Module::from_file(&engine, "guest.wasm")?;
    let mut linker = Linker::new(&engine);
    let mut store = Store::new(&engine, State {});

    linker.func_wrap("env", "_sys_puts", |s: i32| {
        println!("puts: {}", s); // TODO print the actual string
    })?;

    linker.func_wrap("wasi_snapshot_preview1", "proc_exit", |r: i32| {
        println!("proc_exit with {}", r);
    })?;

    let instance = linker.instantiate(&mut store, &module)?;

    let guest_init = instance.get_typed_func::<(i32, i32), ()>(&mut store, "init")?;
    let guest_stackalloc = instance.get_typed_func::<i32, i32>(&mut store, "stackAlloc")?;

    let arg_in = 0i32;
    let memory = instance.get_memory(&mut store, "memory").unwrap();

    // TODO how to free the space allocated here? also maybe don't depend on emscripten conveniences?
    let offset = guest_stackalloc.call(&mut store, mem::size_of::<_Ret>() as i32)?;
    let call = _Call { a: 123, b: 8, c: 0 };

    memory.write(&mut store, offset as usize, call.into())?;
    guest_init.call(&mut store, (arg_in, offset))?;

    let mut buf = [0u8; mem::size_of::<_Ret>()];
    memory.read(&store, arg_in as usize, &mut buf.as_mut_slice())?;
    let r: _Ret = unsafe { mem::transmute(buf) };
    println!("{:?}", r);

    let mut ret: Ret = Ret::default();
    ret.status = r.status;
    let mut buf: Vec<u8> = vec![0u8; r.len as usize];
    memory.read(&store, r.ptr_body as usize, buf.as_mut_slice())?;
    unsafe {
        memory
            .data_ptr(&store)
            .add(r.ptr_body as usize)
            .copy_to_nonoverlapping(buf.as_mut_ptr(), r.len as usize)
    }
    ret.body = std::str::from_utf8(buf.as_slice())
        .unwrap()
        .to_string();

    println!("{:?}", ret);

    Ok(())
}
