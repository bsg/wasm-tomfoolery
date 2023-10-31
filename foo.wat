(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32) (result i32)))
  (func (;0;) (type 1) (param i32 i32)
    (local i32)
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 1
    local.get 0
    i32.const 1024
    i32.store offset=8
    local.get 0
    i32.const 5
    i32.store offset=4
    local.get 0
    local.get 1
    local.get 2
    i32.add
    i32.store)
  (func (;1;) (type 0) (result i32)
    i32.const 1032)
  (func (;2;) (type 0) (result i32)
    global.get 0)
  (func (;3;) (type 2) (param i32)
    local.get 0
    global.set 0)
  (func (;4;) (type 3) (param i32) (result i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set 0
    local.get 0)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 66576))
  (export "memory" (memory 0))
  (export "init" (func 0))
  (export "__indirect_function_table" (table 0))
  (export "__errno_location" (func 1))
  (export "stackSave" (func 2))
  (export "stackRestore" (func 3))
  (export "stackAlloc" (func 4))
  (data (;0;) (i32.const 1024) "hello"))