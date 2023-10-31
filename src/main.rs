use std::mem;

use wasmtime::{Engine, Linker, Module, Store};

#[repr(C)]
#[derive(Debug)]
struct _Res {
    status: i32,
    len: i32,
    body: i32,
}

#[repr(C)]
#[derive(Debug)]
struct _Ctx {
    a: i32,
    b: i32,
    c: i32,
}

impl _Ctx {
    unsafe fn as_u8_slice(&self) -> &[u8] {
        std::slice::from_raw_parts(
            (self as *const Self) as *const u8,
            std::mem::size_of::<Self>(),
        )
    }
}

#[derive(Default, Debug)]
struct Res {
    status: i32,
    body: String,
}

fn main() -> anyhow::Result<()> {
    #[derive(Clone)]
    struct State {}

    let engine = Engine::default();
    let module = Module::from_file(&engine, "foo.wat")?;
    let mut linker = Linker::new(&engine);
    let mut store = Store::new(&engine, State {});

    linker.func_wrap("env", "_puts", |s: i32| {
        println!("puts: {}", s);
    })?;

    let instance = linker.instantiate(&mut store, &module)?;

    let guest_init = instance.get_typed_func::<(i32, i32), ()>(&mut store, "init")?;
    let guest_stackalloc = instance.get_typed_func::<i32, i32>(&mut store, "stackAlloc")?;

    let arg_in = 0i32;
    let arg_out = 0i32;
    let memory = instance.get_memory(&mut store, "memory").unwrap();

    let offset = guest_stackalloc.call(&mut store, mem::size_of::<_Ctx>() as i32)?; // TODO how to free the space allocated here?
    let ctx = _Ctx { a: 123, b: 8, c: 0 };

    memory.write(&mut store, 0, unsafe { ctx.as_u8_slice() })?;
    println!("offset: {:?}", offset);

    guest_init.call(&mut store, (arg_in, 0 as i32))?;

    let mut buf = [0u8; mem::size_of::<_Res>()];
    memory.read(&store, arg_in as usize, &mut buf.as_mut_slice())?;
    let r: _Res = unsafe { mem::transmute(buf) };
    println!("{:?}", r);

    let mut res: Res = Res::default();
    res.status = r.status;
    let mut buf = [0u8; 255];
    memory.read(&store, r.body as usize, buf.as_mut_slice())?;
    unsafe {
        memory
            .data_ptr(&store)
            .add(r.body as usize)
            .copy_to_nonoverlapping(buf.as_mut_ptr(), r.len as usize)
    }
    res.body = std::str::from_utf8(&buf[0usize..(r.len as usize)])
        .unwrap()
        .to_string();

    println!("{:?}", res);

    Ok(())
}
