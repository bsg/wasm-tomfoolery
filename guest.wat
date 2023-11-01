(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;3;) (func (param i32 i32 i32 i32)))
  (type (;4;) (func (param i32 i32 i32 i32 i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func))
  (type (;7;) (func (result i32)))
  (type (;8;) (func (param i32 i32 i32)))
  (type (;9;) (func (param i32 i32)))
  (import "wasi_snapshot_preview1" "proc_exit" (func (;0;) (type 1)))
  (func (;1;) (type 9) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 8
    global.set 0
    block (result i32)  ;; label = @1
      i32.const 1024
      call 5
      local.tee 6
      i32.const 2147483632
      i32.lt_u
      if  ;; label = @2
        local.get 8
        i32.const 4
        i32.add
        local.set 7
        block  ;; label = @3
          local.get 6
          i32.const 10
          i32.le_u
          if  ;; label = @4
            local.get 7
            local.get 6
            i32.store8 offset=11
            local.get 7
            local.set 4
            br 1 (;@3;)
          end
          local.get 6
          i32.const 15
          i32.or
          i32.const 1
          i32.add
          local.tee 3
          call 9
          local.set 4
          local.get 7
          local.get 3
          i32.const -2147483648
          i32.or
          i32.store offset=8
          local.get 7
          local.get 4
          i32.store
          local.get 7
          local.get 6
          i32.store offset=4
        end
        block (result i32)  ;; label = @3
          local.get 6
          local.set 2
          i32.const 1024
          local.set 5
          block  ;; label = @4
            local.get 4
            i32.const 1024
            i32.eq
            br_if 0 (;@4;)
            i32.const 1024
            local.get 2
            local.get 4
            i32.add
            local.tee 3
            i32.sub
            i32.const 0
            local.get 2
            i32.const 1
            i32.shl
            i32.sub
            i32.le_u
            if  ;; label = @5
              local.get 4
              i32.const 1024
              local.get 2
              call 4
              br 2 (;@3;)
            end
            local.get 4
            i32.const 1024
            i32.xor
            i32.const 3
            i32.and
            local.set 9
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.const 1024
                i32.lt_u
                if  ;; label = @7
                  local.get 9
                  if  ;; label = @8
                    local.get 4
                    local.set 3
                    br 3 (;@5;)
                  end
                  local.get 4
                  i32.const 3
                  i32.and
                  i32.eqz
                  if  ;; label = @8
                    local.get 4
                    local.set 3
                    br 2 (;@6;)
                  end
                  local.get 4
                  local.set 3
                  loop  ;; label = @8
                    local.get 2
                    i32.eqz
                    br_if 4 (;@4;)
                    local.get 3
                    local.get 5
                    i32.load8_u
                    i32.store8
                    local.get 5
                    i32.const 1
                    i32.add
                    local.set 5
                    local.get 2
                    i32.const 1
                    i32.sub
                    local.set 2
                    local.get 3
                    i32.const 1
                    i32.add
                    local.tee 3
                    i32.const 3
                    i32.and
                    br_if 0 (;@8;)
                  end
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  local.get 9
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 3
                  i32.and
                  if  ;; label = @8
                    loop  ;; label = @9
                      local.get 2
                      i32.eqz
                      br_if 5 (;@4;)
                      local.get 4
                      local.get 2
                      i32.const 1
                      i32.sub
                      local.tee 2
                      i32.add
                      local.tee 3
                      local.get 2
                      i32.const 1024
                      i32.add
                      i32.load8_u
                      i32.store8
                      local.get 3
                      i32.const 3
                      i32.and
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 2
                  i32.const 3
                  i32.le_u
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 4
                    local.get 2
                    i32.const 4
                    i32.sub
                    local.tee 2
                    i32.add
                    local.get 2
                    i32.const 1024
                    i32.add
                    i32.load
                    i32.store
                    local.get 2
                    i32.const 3
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 2
                i32.eqz
                br_if 2 (;@4;)
                loop  ;; label = @7
                  local.get 4
                  local.get 2
                  i32.const 1
                  i32.sub
                  local.tee 2
                  i32.add
                  local.get 2
                  i32.const 1024
                  i32.add
                  i32.load8_u
                  i32.store8
                  local.get 2
                  br_if 0 (;@7;)
                end
                br 2 (;@4;)
              end
              local.get 2
              i32.const 3
              i32.le_u
              br_if 0 (;@5;)
              loop  ;; label = @6
                local.get 3
                local.get 5
                i32.load
                i32.store
                local.get 5
                i32.const 4
                i32.add
                local.set 5
                local.get 3
                i32.const 4
                i32.add
                local.set 3
                local.get 2
                i32.const 4
                i32.sub
                local.tee 2
                i32.const 3
                i32.gt_u
                br_if 0 (;@6;)
              end
            end
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 3
              local.get 5
              i32.load8_u
              i32.store8
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 5
              i32.const 1
              i32.add
              local.set 5
              local.get 2
              i32.const 1
              i32.sub
              local.tee 2
              br_if 0 (;@5;)
            end
          end
          local.get 4
        end
        local.get 6
        i32.add
        i32.const 0
        i32.store8
        local.get 7
        br 1 (;@1;)
      end
      i32.const 88
      call 7
      i32.const 80
      i32.add
      local.tee 4
      i32.const 1308
      i32.store
      local.get 4
      i32.const 1352
      i32.store
      i32.const 1061
      call 5
      local.tee 1
      i32.const 13
      i32.add
      call 9
      local.tee 0
      i32.const 0
      i32.store offset=8
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      local.get 1
      i32.store
      local.get 4
      local.get 0
      i32.const 12
      i32.add
      i32.const 1061
      local.get 1
      i32.const 1
      i32.add
      call 4
      i32.store offset=4
      local.get 4
      i32.const 1400
      i32.store
      call 2
      unreachable
    end
    local.set 3
    local.get 0
    local.get 1
    i32.load offset=4
    local.get 1
    i32.load
    i32.add
    i32.store
    local.get 0
    local.get 3
    i32.load offset=4
    local.get 3
    i32.load8_u offset=11
    local.tee 1
    local.get 1
    i32.extend8_s
    local.tee 4
    i32.const 0
    i32.lt_s
    local.tee 1
    select
    i32.store offset=4
    local.get 0
    local.get 3
    i32.load
    local.tee 0
    local.get 3
    local.get 1
    select
    i32.store offset=8
    local.get 4
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      local.get 0
      call 8
    end
    local.get 8
    i32.const 16
    i32.add
    global.set 0)
  (func (;2;) (type 6)
    i32.const 1
    call 0
    unreachable)
  (func (;3;) (type 7) (result i32)
    i32.const 1472)
  (func (;4;) (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          local.get 1
          i32.xor
          i32.const 3
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            local.get 2
            i32.const 0
            i32.le_s
            i32.or
            br_if 1 (;@3;)
            local.get 0
            local.set 2
            loop  ;; label = @5
              local.get 2
              local.get 1
              i32.load8_u
              i32.store8
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 2
              i32.const 1
              i32.add
              local.tee 2
              i32.const 3
              i32.and
              i32.eqz
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.lt_u
              br_if 0 (;@5;)
            end
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 3
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 4
            i32.sub
            local.tee 4
            local.get 0
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            local.set 2
            loop  ;; label = @5
              local.get 2
              local.get 1
              i32.load8_u
              i32.store8
              local.get 2
              local.get 1
              i32.load8_u offset=1
              i32.store8 offset=1
              local.get 2
              local.get 1
              i32.load8_u offset=2
              i32.store8 offset=2
              local.get 2
              local.get 1
              i32.load8_u offset=3
              i32.store8 offset=3
              local.get 1
              i32.const 4
              i32.add
              local.set 1
              local.get 2
              i32.const 4
              i32.add
              local.tee 2
              local.get 4
              i32.le_u
              br_if 0 (;@5;)
            end
            br 3 (;@1;)
          end
          local.get 0
          local.set 2
          br 2 (;@1;)
        end
        local.get 0
        local.set 2
      end
      block  ;; label = @2
        local.get 3
        i32.const -4
        i32.and
        local.tee 4
        i32.const 64
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        local.get 4
        i32.const -64
        i32.add
        local.tee 5
        i32.gt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 2
          local.get 1
          i32.load
          i32.store
          local.get 2
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 2
          local.get 1
          i32.load offset=8
          i32.store offset=8
          local.get 2
          local.get 1
          i32.load offset=12
          i32.store offset=12
          local.get 2
          local.get 1
          i32.load offset=16
          i32.store offset=16
          local.get 2
          local.get 1
          i32.load offset=20
          i32.store offset=20
          local.get 2
          local.get 1
          i32.load offset=24
          i32.store offset=24
          local.get 2
          local.get 1
          i32.load offset=28
          i32.store offset=28
          local.get 2
          local.get 1
          i32.load offset=32
          i32.store offset=32
          local.get 2
          local.get 1
          i32.load offset=36
          i32.store offset=36
          local.get 2
          local.get 1
          i32.load offset=40
          i32.store offset=40
          local.get 2
          local.get 1
          i32.load offset=44
          i32.store offset=44
          local.get 2
          local.get 1
          i32.load offset=48
          i32.store offset=48
          local.get 2
          local.get 1
          i32.load offset=52
          i32.store offset=52
          local.get 2
          local.get 1
          i32.load offset=56
          i32.store offset=56
          local.get 2
          local.get 1
          i32.load offset=60
          i32.store offset=60
          local.get 1
          i32.const -64
          i32.sub
          local.set 1
          local.get 2
          i32.const -64
          i32.sub
          local.tee 2
          local.get 5
          i32.le_u
          br_if 0 (;@3;)
        end
      end
      local.get 2
      local.get 4
      i32.ge_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load
        i32.store
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.const 4
        i32.add
        local.tee 2
        local.get 4
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 2
    local.get 3
    i32.lt_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        local.get 3
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;5;) (type 0) (param i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        if  ;; label = @3
          i32.const 0
          return
        end
        loop  ;; label = @3
          local.get 1
          i32.const 1
          i32.add
          local.tee 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load8_u
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 1
        local.tee 2
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.load
        local.tee 3
        i32.const -1
        i32.xor
        local.get 3
        i32.const 16843009
        i32.sub
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if 0 (;@2;)
      end
      loop  ;; label = @2
        local.get 2
        local.tee 1
        i32.const 1
        i32.add
        local.set 2
        local.get 1
        i32.load8_u
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub)
  (func (;6;) (type 0) (param i32) (result i32)
    (local i32 i32)
    i32.const 1468
    i32.load
    local.tee 1
    local.get 0
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee 2
    i32.add
    local.set 0
    block  ;; label = @1
      local.get 2
      i32.const 0
      local.get 0
      local.get 1
      i32.le_u
      select
      br_if 0 (;@1;)
      local.get 0
      memory.size
      i32.const 16
      i32.shl
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 1468
      local.get 0
      i32.store
      local.get 1
      return
    end
    i32.const 1472
    i32.const 48
    i32.store
    i32.const -1)
  (func (;7;) (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 10
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 0
                                i32.const 244
                                i32.le_u
                                if  ;; label = @15
                                  i32.const 1476
                                  i32.load
                                  local.tee 5
                                  i32.const 16
                                  local.get 0
                                  i32.const 11
                                  i32.add
                                  i32.const -8
                                  i32.and
                                  local.get 0
                                  i32.const 11
                                  i32.lt_u
                                  select
                                  local.tee 6
                                  i32.const 3
                                  i32.shr_u
                                  local.tee 0
                                  i32.shr_u
                                  local.tee 1
                                  i32.const 3
                                  i32.and
                                  if  ;; label = @16
                                    block  ;; label = @17
                                      local.get 1
                                      i32.const -1
                                      i32.xor
                                      i32.const 1
                                      i32.and
                                      local.get 0
                                      i32.add
                                      local.tee 2
                                      i32.const 3
                                      i32.shl
                                      local.tee 1
                                      i32.const 1516
                                      i32.add
                                      local.tee 0
                                      local.get 1
                                      i32.const 1524
                                      i32.add
                                      i32.load
                                      local.tee 1
                                      i32.load offset=8
                                      local.tee 4
                                      i32.eq
                                      if  ;; label = @18
                                        i32.const 1476
                                        local.get 5
                                        i32.const -2
                                        local.get 2
                                        i32.rotl
                                        i32.and
                                        i32.store
                                        br 1 (;@17;)
                                      end
                                      local.get 4
                                      local.get 0
                                      i32.store offset=12
                                      local.get 0
                                      local.get 4
                                      i32.store offset=8
                                    end
                                    local.get 1
                                    i32.const 8
                                    i32.add
                                    local.set 0
                                    local.get 1
                                    local.get 2
                                    i32.const 3
                                    i32.shl
                                    local.tee 2
                                    i32.const 3
                                    i32.or
                                    i32.store offset=4
                                    local.get 1
                                    local.get 2
                                    i32.add
                                    local.tee 1
                                    local.get 1
                                    i32.load offset=4
                                    i32.const 1
                                    i32.or
                                    i32.store offset=4
                                    br 15 (;@1;)
                                  end
                                  local.get 6
                                  i32.const 1484
                                  i32.load
                                  local.tee 7
                                  i32.le_u
                                  br_if 1 (;@14;)
                                  local.get 1
                                  if  ;; label = @16
                                    block  ;; label = @17
                                      i32.const 2
                                      local.get 0
                                      i32.shl
                                      local.tee 2
                                      i32.const 0
                                      local.get 2
                                      i32.sub
                                      i32.or
                                      local.get 1
                                      local.get 0
                                      i32.shl
                                      i32.and
                                      i32.ctz
                                      local.tee 1
                                      i32.const 3
                                      i32.shl
                                      local.tee 0
                                      i32.const 1516
                                      i32.add
                                      local.tee 2
                                      local.get 0
                                      i32.const 1524
                                      i32.add
                                      i32.load
                                      local.tee 0
                                      i32.load offset=8
                                      local.tee 4
                                      i32.eq
                                      if  ;; label = @18
                                        i32.const 1476
                                        local.get 5
                                        i32.const -2
                                        local.get 1
                                        i32.rotl
                                        i32.and
                                        local.tee 5
                                        i32.store
                                        br 1 (;@17;)
                                      end
                                      local.get 4
                                      local.get 2
                                      i32.store offset=12
                                      local.get 2
                                      local.get 4
                                      i32.store offset=8
                                    end
                                    local.get 0
                                    local.get 6
                                    i32.const 3
                                    i32.or
                                    i32.store offset=4
                                    local.get 0
                                    local.get 6
                                    i32.add
                                    local.tee 8
                                    local.get 1
                                    i32.const 3
                                    i32.shl
                                    local.tee 1
                                    local.get 6
                                    i32.sub
                                    local.tee 4
                                    i32.const 1
                                    i32.or
                                    i32.store offset=4
                                    local.get 0
                                    local.get 1
                                    i32.add
                                    local.get 4
                                    i32.store
                                    local.get 7
                                    if  ;; label = @17
                                      local.get 7
                                      i32.const -8
                                      i32.and
                                      i32.const 1516
                                      i32.add
                                      local.set 1
                                      i32.const 1496
                                      i32.load
                                      local.set 2
                                      block (result i32)  ;; label = @18
                                        local.get 5
                                        i32.const 1
                                        local.get 7
                                        i32.const 3
                                        i32.shr_u
                                        i32.shl
                                        local.tee 3
                                        i32.and
                                        i32.eqz
                                        if  ;; label = @19
                                          i32.const 1476
                                          local.get 3
                                          local.get 5
                                          i32.or
                                          i32.store
                                          local.get 1
                                          br 1 (;@18;)
                                        end
                                        local.get 1
                                        i32.load offset=8
                                      end
                                      local.set 3
                                      local.get 1
                                      local.get 2
                                      i32.store offset=8
                                      local.get 3
                                      local.get 2
                                      i32.store offset=12
                                      local.get 2
                                      local.get 1
                                      i32.store offset=12
                                      local.get 2
                                      local.get 3
                                      i32.store offset=8
                                    end
                                    local.get 0
                                    i32.const 8
                                    i32.add
                                    local.set 0
                                    i32.const 1496
                                    local.get 8
                                    i32.store
                                    i32.const 1484
                                    local.get 4
                                    i32.store
                                    br 15 (;@1;)
                                  end
                                  i32.const 1480
                                  i32.load
                                  local.tee 11
                                  i32.eqz
                                  br_if 1 (;@14;)
                                  local.get 11
                                  i32.ctz
                                  i32.const 2
                                  i32.shl
                                  i32.const 1780
                                  i32.add
                                  i32.load
                                  local.tee 2
                                  i32.load offset=4
                                  i32.const -8
                                  i32.and
                                  local.get 6
                                  i32.sub
                                  local.set 3
                                  local.get 2
                                  local.set 1
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 1
                                      i32.load offset=16
                                      local.tee 0
                                      i32.eqz
                                      if  ;; label = @18
                                        local.get 1
                                        i32.load offset=20
                                        local.tee 0
                                        i32.eqz
                                        br_if 1 (;@17;)
                                      end
                                      local.get 0
                                      i32.load offset=4
                                      i32.const -8
                                      i32.and
                                      local.get 6
                                      i32.sub
                                      local.tee 1
                                      local.get 3
                                      local.get 1
                                      local.get 3
                                      i32.lt_u
                                      local.tee 1
                                      select
                                      local.set 3
                                      local.get 0
                                      local.get 2
                                      local.get 1
                                      select
                                      local.set 2
                                      local.get 0
                                      local.set 1
                                      br 1 (;@16;)
                                    end
                                  end
                                  local.get 2
                                  i32.load offset=24
                                  local.set 9
                                  local.get 2
                                  local.get 2
                                  i32.load offset=12
                                  local.tee 4
                                  i32.ne
                                  if  ;; label = @16
                                    i32.const 1492
                                    i32.load
                                    drop
                                    local.get 2
                                    i32.load offset=8
                                    local.tee 0
                                    local.get 4
                                    i32.store offset=12
                                    local.get 4
                                    local.get 0
                                    i32.store offset=8
                                    br 14 (;@2;)
                                  end
                                  local.get 2
                                  i32.const 20
                                  i32.add
                                  local.tee 1
                                  i32.load
                                  local.tee 0
                                  i32.eqz
                                  if  ;; label = @16
                                    local.get 2
                                    i32.load offset=16
                                    local.tee 0
                                    i32.eqz
                                    br_if 3 (;@13;)
                                    local.get 2
                                    i32.const 16
                                    i32.add
                                    local.set 1
                                  end
                                  loop  ;; label = @16
                                    local.get 1
                                    local.set 8
                                    local.get 0
                                    local.tee 4
                                    i32.const 20
                                    i32.add
                                    local.tee 1
                                    i32.load
                                    local.tee 0
                                    br_if 0 (;@16;)
                                    local.get 4
                                    i32.const 16
                                    i32.add
                                    local.set 1
                                    local.get 4
                                    i32.load offset=16
                                    local.tee 0
                                    br_if 0 (;@16;)
                                  end
                                  local.get 8
                                  i32.const 0
                                  i32.store
                                  br 13 (;@2;)
                                end
                                i32.const -1
                                local.set 6
                                local.get 0
                                i32.const -65
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 0
                                i32.const 11
                                i32.add
                                local.tee 0
                                i32.const -8
                                i32.and
                                local.set 6
                                i32.const 1480
                                i32.load
                                local.tee 8
                                i32.eqz
                                br_if 0 (;@14;)
                                i32.const 0
                                local.get 6
                                i32.sub
                                local.set 3
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block (result i32)  ;; label = @18
                                        i32.const 0
                                        local.get 6
                                        i32.const 256
                                        i32.lt_u
                                        br_if 0 (;@18;)
                                        drop
                                        i32.const 31
                                        local.get 6
                                        i32.const 16777215
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                        drop
                                        local.get 6
                                        i32.const 38
                                        local.get 0
                                        i32.const 8
                                        i32.shr_u
                                        i32.clz
                                        local.tee 0
                                        i32.sub
                                        i32.shr_u
                                        i32.const 1
                                        i32.and
                                        local.get 0
                                        i32.const 1
                                        i32.shl
                                        i32.sub
                                        i32.const 62
                                        i32.add
                                      end
                                      local.tee 7
                                      i32.const 2
                                      i32.shl
                                      i32.const 1780
                                      i32.add
                                      i32.load
                                      local.tee 1
                                      i32.eqz
                                      if  ;; label = @18
                                        i32.const 0
                                        local.set 0
                                        br 1 (;@17;)
                                      end
                                      i32.const 0
                                      local.set 0
                                      local.get 6
                                      i32.const 25
                                      local.get 7
                                      i32.const 1
                                      i32.shr_u
                                      i32.sub
                                      i32.const 0
                                      local.get 7
                                      i32.const 31
                                      i32.ne
                                      select
                                      i32.shl
                                      local.set 2
                                      loop  ;; label = @18
                                        block  ;; label = @19
                                          local.get 1
                                          i32.load offset=4
                                          i32.const -8
                                          i32.and
                                          local.get 6
                                          i32.sub
                                          local.tee 5
                                          local.get 3
                                          i32.ge_u
                                          br_if 0 (;@19;)
                                          local.get 1
                                          local.set 4
                                          local.get 5
                                          local.tee 3
                                          br_if 0 (;@19;)
                                          i32.const 0
                                          local.set 3
                                          local.get 1
                                          local.set 0
                                          br 3 (;@16;)
                                        end
                                        local.get 0
                                        local.get 1
                                        i32.load offset=20
                                        local.tee 5
                                        local.get 5
                                        local.get 1
                                        local.get 2
                                        i32.const 29
                                        i32.shr_u
                                        i32.const 4
                                        i32.and
                                        i32.add
                                        i32.load offset=16
                                        local.tee 1
                                        i32.eq
                                        select
                                        local.get 0
                                        local.get 5
                                        select
                                        local.set 0
                                        local.get 2
                                        i32.const 1
                                        i32.shl
                                        local.set 2
                                        local.get 1
                                        br_if 0 (;@18;)
                                      end
                                    end
                                    local.get 0
                                    local.get 4
                                    i32.or
                                    i32.eqz
                                    if  ;; label = @17
                                      i32.const 0
                                      local.set 4
                                      i32.const 2
                                      local.get 7
                                      i32.shl
                                      local.tee 0
                                      i32.const 0
                                      local.get 0
                                      i32.sub
                                      i32.or
                                      local.get 8
                                      i32.and
                                      local.tee 0
                                      i32.eqz
                                      br_if 3 (;@14;)
                                      local.get 0
                                      i32.ctz
                                      i32.const 2
                                      i32.shl
                                      i32.const 1780
                                      i32.add
                                      i32.load
                                      local.set 0
                                    end
                                    local.get 0
                                    i32.eqz
                                    br_if 1 (;@15;)
                                  end
                                  loop  ;; label = @16
                                    local.get 0
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 6
                                    i32.sub
                                    local.tee 2
                                    local.get 3
                                    i32.lt_u
                                    local.set 1
                                    local.get 2
                                    local.get 3
                                    local.get 1
                                    select
                                    local.set 3
                                    local.get 0
                                    local.get 4
                                    local.get 1
                                    select
                                    local.set 4
                                    local.get 0
                                    i32.load offset=16
                                    local.tee 1
                                    if (result i32)  ;; label = @17
                                      local.get 1
                                    else
                                      local.get 0
                                      i32.load offset=20
                                    end
                                    local.tee 0
                                    br_if 0 (;@16;)
                                  end
                                end
                                local.get 4
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 3
                                i32.const 1484
                                i32.load
                                local.get 6
                                i32.sub
                                i32.ge_u
                                br_if 0 (;@14;)
                                local.get 4
                                i32.load offset=24
                                local.set 7
                                local.get 4
                                local.get 4
                                i32.load offset=12
                                local.tee 2
                                i32.ne
                                if  ;; label = @15
                                  i32.const 1492
                                  i32.load
                                  drop
                                  local.get 4
                                  i32.load offset=8
                                  local.tee 0
                                  local.get 2
                                  i32.store offset=12
                                  local.get 2
                                  local.get 0
                                  i32.store offset=8
                                  br 12 (;@3;)
                                end
                                local.get 4
                                i32.const 20
                                i32.add
                                local.tee 1
                                i32.load
                                local.tee 0
                                i32.eqz
                                if  ;; label = @15
                                  local.get 4
                                  i32.load offset=16
                                  local.tee 0
                                  i32.eqz
                                  br_if 3 (;@12;)
                                  local.get 4
                                  i32.const 16
                                  i32.add
                                  local.set 1
                                end
                                loop  ;; label = @15
                                  local.get 1
                                  local.set 5
                                  local.get 0
                                  local.tee 2
                                  i32.const 20
                                  i32.add
                                  local.tee 1
                                  i32.load
                                  local.tee 0
                                  br_if 0 (;@15;)
                                  local.get 2
                                  i32.const 16
                                  i32.add
                                  local.set 1
                                  local.get 2
                                  i32.load offset=16
                                  local.tee 0
                                  br_if 0 (;@15;)
                                end
                                local.get 5
                                i32.const 0
                                i32.store
                                br 11 (;@3;)
                              end
                              local.get 6
                              i32.const 1484
                              i32.load
                              local.tee 4
                              i32.le_u
                              if  ;; label = @14
                                i32.const 1496
                                i32.load
                                local.set 0
                                block  ;; label = @15
                                  local.get 4
                                  local.get 6
                                  i32.sub
                                  local.tee 1
                                  i32.const 16
                                  i32.ge_u
                                  if  ;; label = @16
                                    local.get 0
                                    local.get 6
                                    i32.add
                                    local.tee 2
                                    local.get 1
                                    i32.const 1
                                    i32.or
                                    i32.store offset=4
                                    local.get 0
                                    local.get 4
                                    i32.add
                                    local.get 1
                                    i32.store
                                    local.get 0
                                    local.get 6
                                    i32.const 3
                                    i32.or
                                    i32.store offset=4
                                    br 1 (;@15;)
                                  end
                                  local.get 0
                                  local.get 4
                                  i32.const 3
                                  i32.or
                                  i32.store offset=4
                                  local.get 0
                                  local.get 4
                                  i32.add
                                  local.tee 1
                                  local.get 1
                                  i32.load offset=4
                                  i32.const 1
                                  i32.or
                                  i32.store offset=4
                                  i32.const 0
                                  local.set 2
                                  i32.const 0
                                  local.set 1
                                end
                                i32.const 1484
                                local.get 1
                                i32.store
                                i32.const 1496
                                local.get 2
                                i32.store
                                local.get 0
                                i32.const 8
                                i32.add
                                local.set 0
                                br 13 (;@1;)
                              end
                              local.get 6
                              i32.const 1488
                              i32.load
                              local.tee 2
                              i32.lt_u
                              if  ;; label = @14
                                i32.const 1488
                                local.get 2
                                local.get 6
                                i32.sub
                                local.tee 1
                                i32.store
                                i32.const 1500
                                i32.const 1500
                                i32.load
                                local.tee 0
                                local.get 6
                                i32.add
                                local.tee 2
                                i32.store
                                local.get 2
                                local.get 1
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                local.get 0
                                local.get 6
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 0
                                i32.const 8
                                i32.add
                                local.set 0
                                br 13 (;@1;)
                              end
                              i32.const 0
                              local.set 0
                              local.get 6
                              i32.const 47
                              i32.add
                              local.tee 3
                              block (result i32)  ;; label = @14
                                i32.const 1948
                                i32.load
                                if  ;; label = @15
                                  i32.const 1956
                                  i32.load
                                  br 1 (;@14;)
                                end
                                i32.const 1960
                                i64.const -1
                                i64.store align=4
                                i32.const 1952
                                i64.const 17592186048512
                                i64.store align=4
                                i32.const 1948
                                local.get 10
                                i32.const 12
                                i32.add
                                i32.const -16
                                i32.and
                                i32.const 1431655768
                                i32.xor
                                i32.store
                                i32.const 1968
                                i32.const 0
                                i32.store
                                i32.const 1920
                                i32.const 0
                                i32.store
                                i32.const 4096
                              end
                              local.tee 1
                              i32.add
                              local.tee 5
                              i32.const 0
                              local.get 1
                              i32.sub
                              local.tee 8
                              i32.and
                              local.tee 1
                              local.get 6
                              i32.le_u
                              br_if 12 (;@1;)
                              i32.const 1916
                              i32.load
                              local.tee 4
                              if  ;; label = @14
                                i32.const 1908
                                i32.load
                                local.tee 7
                                local.get 1
                                i32.add
                                local.tee 9
                                local.get 7
                                i32.le_u
                                local.get 4
                                local.get 9
                                i32.lt_u
                                i32.or
                                br_if 13 (;@1;)
                              end
                              block  ;; label = @14
                                i32.const 1920
                                i32.load8_u
                                i32.const 4
                                i32.and
                                i32.eqz
                                if  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          i32.const 1500
                                          i32.load
                                          local.tee 4
                                          if  ;; label = @20
                                            i32.const 1924
                                            local.set 0
                                            loop  ;; label = @21
                                              local.get 4
                                              local.get 0
                                              i32.load
                                              local.tee 7
                                              i32.ge_u
                                              if  ;; label = @22
                                                local.get 7
                                                local.get 0
                                                i32.load offset=4
                                                i32.add
                                                local.get 4
                                                i32.gt_u
                                                br_if 3 (;@19;)
                                              end
                                              local.get 0
                                              i32.load offset=8
                                              local.tee 0
                                              br_if 0 (;@21;)
                                            end
                                          end
                                          i32.const 0
                                          call 6
                                          local.tee 2
                                          i32.const -1
                                          i32.eq
                                          br_if 3 (;@16;)
                                          local.get 1
                                          local.set 5
                                          i32.const 1952
                                          i32.load
                                          local.tee 0
                                          i32.const 1
                                          i32.sub
                                          local.tee 4
                                          local.get 2
                                          i32.and
                                          if  ;; label = @20
                                            local.get 1
                                            local.get 2
                                            i32.sub
                                            local.get 2
                                            local.get 4
                                            i32.add
                                            i32.const 0
                                            local.get 0
                                            i32.sub
                                            i32.and
                                            i32.add
                                            local.set 5
                                          end
                                          local.get 5
                                          local.get 6
                                          i32.le_u
                                          br_if 3 (;@16;)
                                          i32.const 1916
                                          i32.load
                                          local.tee 0
                                          if  ;; label = @20
                                            i32.const 1908
                                            i32.load
                                            local.tee 4
                                            local.get 5
                                            i32.add
                                            local.tee 8
                                            local.get 4
                                            i32.le_u
                                            local.get 0
                                            local.get 8
                                            i32.lt_u
                                            i32.or
                                            br_if 4 (;@16;)
                                          end
                                          local.get 5
                                          call 6
                                          local.tee 0
                                          local.get 2
                                          i32.ne
                                          br_if 1 (;@18;)
                                          br 5 (;@14;)
                                        end
                                        local.get 5
                                        local.get 2
                                        i32.sub
                                        local.get 8
                                        i32.and
                                        local.tee 5
                                        call 6
                                        local.tee 2
                                        local.get 0
                                        i32.load
                                        local.get 0
                                        i32.load offset=4
                                        i32.add
                                        i32.eq
                                        br_if 1 (;@17;)
                                        local.get 2
                                        local.set 0
                                      end
                                      local.get 0
                                      i32.const -1
                                      i32.eq
                                      br_if 1 (;@16;)
                                      local.get 6
                                      i32.const 48
                                      i32.add
                                      local.get 5
                                      i32.le_u
                                      if  ;; label = @18
                                        local.get 0
                                        local.set 2
                                        br 4 (;@14;)
                                      end
                                      i32.const 1956
                                      i32.load
                                      local.tee 2
                                      local.get 3
                                      local.get 5
                                      i32.sub
                                      i32.add
                                      i32.const 0
                                      local.get 2
                                      i32.sub
                                      i32.and
                                      local.tee 2
                                      call 6
                                      i32.const -1
                                      i32.eq
                                      br_if 1 (;@16;)
                                      local.get 2
                                      local.get 5
                                      i32.add
                                      local.set 5
                                      local.get 0
                                      local.set 2
                                      br 3 (;@14;)
                                    end
                                    local.get 2
                                    i32.const -1
                                    i32.ne
                                    br_if 2 (;@14;)
                                  end
                                  i32.const 1920
                                  i32.const 1920
                                  i32.load
                                  i32.const 4
                                  i32.or
                                  i32.store
                                end
                                local.get 1
                                call 6
                                local.tee 2
                                i32.const -1
                                i32.eq
                                i32.const 0
                                call 6
                                local.tee 0
                                i32.const -1
                                i32.eq
                                i32.or
                                local.get 0
                                local.get 2
                                i32.le_u
                                i32.or
                                br_if 5 (;@9;)
                                local.get 0
                                local.get 2
                                i32.sub
                                local.tee 5
                                local.get 6
                                i32.const 40
                                i32.add
                                i32.le_u
                                br_if 5 (;@9;)
                              end
                              i32.const 1908
                              i32.const 1908
                              i32.load
                              local.get 5
                              i32.add
                              local.tee 0
                              i32.store
                              i32.const 1912
                              i32.load
                              local.get 0
                              i32.lt_u
                              if  ;; label = @14
                                i32.const 1912
                                local.get 0
                                i32.store
                              end
                              block  ;; label = @14
                                i32.const 1500
                                i32.load
                                local.tee 3
                                if  ;; label = @15
                                  i32.const 1924
                                  local.set 0
                                  loop  ;; label = @16
                                    local.get 2
                                    local.get 0
                                    i32.load
                                    local.tee 1
                                    local.get 0
                                    i32.load offset=4
                                    local.tee 4
                                    i32.add
                                    i32.eq
                                    br_if 2 (;@14;)
                                    local.get 0
                                    i32.load offset=8
                                    local.tee 0
                                    br_if 0 (;@16;)
                                  end
                                  br 4 (;@11;)
                                end
                                i32.const 1492
                                i32.load
                                local.tee 0
                                i32.const 0
                                local.get 0
                                local.get 2
                                i32.le_u
                                select
                                i32.eqz
                                if  ;; label = @15
                                  i32.const 1492
                                  local.get 2
                                  i32.store
                                end
                                i32.const 0
                                local.set 0
                                i32.const 1928
                                local.get 5
                                i32.store
                                i32.const 1924
                                local.get 2
                                i32.store
                                i32.const 1508
                                i32.const -1
                                i32.store
                                i32.const 1512
                                i32.const 1948
                                i32.load
                                i32.store
                                i32.const 1936
                                i32.const 0
                                i32.store
                                loop  ;; label = @15
                                  local.get 0
                                  i32.const 3
                                  i32.shl
                                  local.tee 1
                                  i32.const 1524
                                  i32.add
                                  local.get 1
                                  i32.const 1516
                                  i32.add
                                  local.tee 4
                                  i32.store
                                  local.get 1
                                  i32.const 1528
                                  i32.add
                                  local.get 4
                                  i32.store
                                  local.get 0
                                  i32.const 1
                                  i32.add
                                  local.tee 0
                                  i32.const 32
                                  i32.ne
                                  br_if 0 (;@15;)
                                end
                                i32.const 1488
                                local.get 5
                                i32.const 40
                                i32.sub
                                local.tee 0
                                i32.const -8
                                local.get 2
                                i32.sub
                                i32.const 7
                                i32.and
                                local.tee 1
                                i32.sub
                                local.tee 4
                                i32.store
                                i32.const 1500
                                local.get 1
                                local.get 2
                                i32.add
                                local.tee 1
                                i32.store
                                local.get 1
                                local.get 4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                local.get 0
                                local.get 2
                                i32.add
                                i32.const 40
                                i32.store offset=4
                                i32.const 1504
                                i32.const 1964
                                i32.load
                                i32.store
                                br 4 (;@10;)
                              end
                              local.get 2
                              local.get 3
                              i32.le_u
                              local.get 1
                              local.get 3
                              i32.gt_u
                              i32.or
                              br_if 2 (;@11;)
                              local.get 0
                              i32.load offset=12
                              i32.const 8
                              i32.and
                              br_if 2 (;@11;)
                              local.get 0
                              local.get 4
                              local.get 5
                              i32.add
                              i32.store offset=4
                              i32.const 1500
                              local.get 3
                              i32.const -8
                              local.get 3
                              i32.sub
                              i32.const 7
                              i32.and
                              local.tee 0
                              i32.add
                              local.tee 1
                              i32.store
                              i32.const 1488
                              i32.const 1488
                              i32.load
                              local.get 5
                              i32.add
                              local.tee 2
                              local.get 0
                              i32.sub
                              local.tee 0
                              i32.store
                              local.get 1
                              local.get 0
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 2
                              local.get 3
                              i32.add
                              i32.const 40
                              i32.store offset=4
                              i32.const 1504
                              i32.const 1964
                              i32.load
                              i32.store
                              br 3 (;@10;)
                            end
                            i32.const 0
                            local.set 4
                            br 10 (;@2;)
                          end
                          i32.const 0
                          local.set 2
                          br 8 (;@3;)
                        end
                        i32.const 1492
                        i32.load
                        local.get 2
                        i32.gt_u
                        if  ;; label = @11
                          i32.const 1492
                          local.get 2
                          i32.store
                        end
                        local.get 2
                        local.get 5
                        i32.add
                        local.set 1
                        i32.const 1924
                        local.set 0
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              loop  ;; label = @14
                                local.get 1
                                local.get 0
                                i32.load
                                i32.ne
                                if  ;; label = @15
                                  local.get 0
                                  i32.load offset=8
                                  local.tee 0
                                  br_if 1 (;@14;)
                                  br 2 (;@13;)
                                end
                              end
                              local.get 0
                              i32.load8_u offset=12
                              i32.const 8
                              i32.and
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            i32.const 1924
                            local.set 0
                            loop  ;; label = @13
                              local.get 3
                              local.get 0
                              i32.load
                              local.tee 1
                              i32.ge_u
                              if  ;; label = @14
                                local.get 1
                                local.get 0
                                i32.load offset=4
                                i32.add
                                local.tee 4
                                local.get 3
                                i32.gt_u
                                br_if 3 (;@11;)
                              end
                              local.get 0
                              i32.load offset=8
                              local.set 0
                              br 0 (;@13;)
                            end
                            unreachable
                          end
                          local.get 0
                          local.get 2
                          i32.store
                          local.get 0
                          local.get 0
                          i32.load offset=4
                          local.get 5
                          i32.add
                          i32.store offset=4
                          local.get 2
                          i32.const -8
                          local.get 2
                          i32.sub
                          i32.const 7
                          i32.and
                          i32.add
                          local.tee 7
                          local.get 6
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 1
                          i32.const -8
                          local.get 1
                          i32.sub
                          i32.const 7
                          i32.and
                          i32.add
                          local.tee 5
                          local.get 6
                          local.get 7
                          i32.add
                          local.tee 6
                          i32.sub
                          local.set 0
                          local.get 3
                          local.get 5
                          i32.eq
                          if  ;; label = @12
                            i32.const 1500
                            local.get 6
                            i32.store
                            i32.const 1488
                            i32.const 1488
                            i32.load
                            local.get 0
                            i32.add
                            local.tee 0
                            i32.store
                            local.get 6
                            local.get 0
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            br 8 (;@4;)
                          end
                          i32.const 1496
                          i32.load
                          local.get 5
                          i32.eq
                          if  ;; label = @12
                            i32.const 1496
                            local.get 6
                            i32.store
                            i32.const 1484
                            i32.const 1484
                            i32.load
                            local.get 0
                            i32.add
                            local.tee 0
                            i32.store
                            local.get 6
                            local.get 0
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 0
                            local.get 6
                            i32.add
                            local.get 0
                            i32.store
                            br 8 (;@4;)
                          end
                          local.get 5
                          i32.load offset=4
                          local.tee 3
                          i32.const 3
                          i32.and
                          i32.const 1
                          i32.ne
                          br_if 6 (;@5;)
                          local.get 3
                          i32.const -8
                          i32.and
                          local.set 9
                          local.get 3
                          i32.const 255
                          i32.le_u
                          if  ;; label = @12
                            local.get 5
                            i32.load offset=12
                            local.tee 1
                            local.get 5
                            i32.load offset=8
                            local.tee 2
                            i32.eq
                            if  ;; label = @13
                              i32.const 1476
                              i32.const 1476
                              i32.load
                              i32.const -2
                              local.get 3
                              i32.const 3
                              i32.shr_u
                              i32.rotl
                              i32.and
                              i32.store
                              br 7 (;@6;)
                            end
                            local.get 2
                            local.get 1
                            i32.store offset=12
                            local.get 1
                            local.get 2
                            i32.store offset=8
                            br 6 (;@6;)
                          end
                          local.get 5
                          i32.load offset=24
                          local.set 8
                          local.get 5
                          local.get 5
                          i32.load offset=12
                          local.tee 2
                          i32.ne
                          if  ;; label = @12
                            local.get 5
                            i32.load offset=8
                            local.tee 1
                            local.get 2
                            i32.store offset=12
                            local.get 2
                            local.get 1
                            i32.store offset=8
                            br 5 (;@7;)
                          end
                          local.get 5
                          i32.const 20
                          i32.add
                          local.tee 1
                          i32.load
                          local.tee 3
                          i32.eqz
                          if  ;; label = @12
                            local.get 5
                            i32.load offset=16
                            local.tee 3
                            i32.eqz
                            br_if 4 (;@8;)
                            local.get 5
                            i32.const 16
                            i32.add
                            local.set 1
                          end
                          loop  ;; label = @12
                            local.get 1
                            local.set 4
                            local.get 3
                            local.tee 2
                            i32.const 20
                            i32.add
                            local.tee 1
                            i32.load
                            local.tee 3
                            br_if 0 (;@12;)
                            local.get 2
                            i32.const 16
                            i32.add
                            local.set 1
                            local.get 2
                            i32.load offset=16
                            local.tee 3
                            br_if 0 (;@12;)
                          end
                          local.get 4
                          i32.const 0
                          i32.store
                          br 4 (;@7;)
                        end
                        i32.const 1488
                        local.get 5
                        i32.const 40
                        i32.sub
                        local.tee 0
                        i32.const -8
                        local.get 2
                        i32.sub
                        i32.const 7
                        i32.and
                        local.tee 1
                        i32.sub
                        local.tee 8
                        i32.store
                        i32.const 1500
                        local.get 1
                        local.get 2
                        i32.add
                        local.tee 1
                        i32.store
                        local.get 1
                        local.get 8
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 2
                        i32.add
                        i32.const 40
                        i32.store offset=4
                        i32.const 1504
                        i32.const 1964
                        i32.load
                        i32.store
                        local.get 3
                        local.get 4
                        i32.const 39
                        local.get 4
                        i32.sub
                        i32.const 7
                        i32.and
                        i32.add
                        i32.const 47
                        i32.sub
                        local.tee 0
                        local.get 0
                        local.get 3
                        i32.const 16
                        i32.add
                        i32.lt_u
                        select
                        local.tee 1
                        i32.const 27
                        i32.store offset=4
                        local.get 1
                        i32.const 1932
                        i64.load align=4
                        i64.store offset=16 align=4
                        local.get 1
                        i32.const 1924
                        i64.load align=4
                        i64.store offset=8 align=4
                        i32.const 1932
                        local.get 1
                        i32.const 8
                        i32.add
                        i32.store
                        i32.const 1928
                        local.get 5
                        i32.store
                        i32.const 1924
                        local.get 2
                        i32.store
                        i32.const 1936
                        i32.const 0
                        i32.store
                        local.get 1
                        i32.const 24
                        i32.add
                        local.set 0
                        loop  ;; label = @11
                          local.get 0
                          i32.const 7
                          i32.store offset=4
                          local.get 0
                          i32.const 8
                          i32.add
                          local.get 0
                          i32.const 4
                          i32.add
                          local.set 0
                          local.get 4
                          i32.lt_u
                          br_if 0 (;@11;)
                        end
                        local.get 1
                        local.get 3
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 1
                        local.get 1
                        i32.load offset=4
                        i32.const -2
                        i32.and
                        i32.store offset=4
                        local.get 3
                        local.get 1
                        local.get 3
                        i32.sub
                        local.tee 2
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 1
                        local.get 2
                        i32.store
                        local.get 2
                        i32.const 255
                        i32.le_u
                        if  ;; label = @11
                          local.get 2
                          i32.const -8
                          i32.and
                          i32.const 1516
                          i32.add
                          local.set 0
                          block (result i32)  ;; label = @12
                            i32.const 1476
                            i32.load
                            local.tee 1
                            i32.const 1
                            local.get 2
                            i32.const 3
                            i32.shr_u
                            i32.shl
                            local.tee 2
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              i32.const 1476
                              local.get 1
                              local.get 2
                              i32.or
                              i32.store
                              local.get 0
                              br 1 (;@12;)
                            end
                            local.get 0
                            i32.load offset=8
                          end
                          local.set 1
                          local.get 0
                          local.get 3
                          i32.store offset=8
                          local.get 1
                          local.get 3
                          i32.store offset=12
                          local.get 3
                          local.get 0
                          i32.store offset=12
                          local.get 3
                          local.get 1
                          i32.store offset=8
                          br 1 (;@10;)
                        end
                        i32.const 31
                        local.set 0
                        local.get 2
                        i32.const 16777215
                        i32.le_u
                        if  ;; label = @11
                          local.get 2
                          i32.const 38
                          local.get 2
                          i32.const 8
                          i32.shr_u
                          i32.clz
                          local.tee 0
                          i32.sub
                          i32.shr_u
                          i32.const 1
                          i32.and
                          local.get 0
                          i32.const 1
                          i32.shl
                          i32.sub
                          i32.const 62
                          i32.add
                          local.set 0
                        end
                        local.get 3
                        local.get 0
                        i32.store offset=28
                        local.get 3
                        i64.const 0
                        i64.store offset=16 align=4
                        local.get 0
                        i32.const 2
                        i32.shl
                        i32.const 1780
                        i32.add
                        local.set 1
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 1480
                            i32.load
                            local.tee 4
                            i32.const 1
                            local.get 0
                            i32.shl
                            local.tee 5
                            i32.and
                            i32.eqz
                            if  ;; label = @13
                              i32.const 1480
                              local.get 4
                              local.get 5
                              i32.or
                              i32.store
                              local.get 1
                              local.get 3
                              i32.store
                              br 1 (;@12;)
                            end
                            local.get 2
                            i32.const 25
                            local.get 0
                            i32.const 1
                            i32.shr_u
                            i32.sub
                            i32.const 0
                            local.get 0
                            i32.const 31
                            i32.ne
                            select
                            i32.shl
                            local.set 0
                            local.get 1
                            i32.load
                            local.set 4
                            loop  ;; label = @13
                              local.get 4
                              local.tee 1
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 2
                              i32.eq
                              br_if 2 (;@11;)
                              local.get 0
                              i32.const 29
                              i32.shr_u
                              local.set 5
                              local.get 0
                              i32.const 1
                              i32.shl
                              local.set 0
                              local.get 1
                              local.get 5
                              i32.const 4
                              i32.and
                              i32.add
                              local.tee 5
                              i32.load offset=16
                              local.tee 4
                              br_if 0 (;@13;)
                            end
                            local.get 5
                            local.get 3
                            i32.store offset=16
                          end
                          local.get 3
                          local.get 1
                          i32.store offset=24
                          local.get 3
                          local.get 3
                          i32.store offset=12
                          local.get 3
                          local.get 3
                          i32.store offset=8
                          br 1 (;@10;)
                        end
                        local.get 1
                        i32.load offset=8
                        local.tee 0
                        local.get 3
                        i32.store offset=12
                        local.get 1
                        local.get 3
                        i32.store offset=8
                        local.get 3
                        i32.const 0
                        i32.store offset=24
                        local.get 3
                        local.get 1
                        i32.store offset=12
                        local.get 3
                        local.get 0
                        i32.store offset=8
                      end
                      i32.const 1488
                      i32.load
                      local.tee 0
                      local.get 6
                      i32.le_u
                      br_if 0 (;@9;)
                      i32.const 1488
                      local.get 0
                      local.get 6
                      i32.sub
                      local.tee 1
                      i32.store
                      i32.const 1500
                      i32.const 1500
                      i32.load
                      local.tee 0
                      local.get 6
                      i32.add
                      local.tee 2
                      i32.store
                      local.get 2
                      local.get 1
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 6
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 0
                      i32.const 8
                      i32.add
                      local.set 0
                      br 8 (;@1;)
                    end
                    i32.const 1472
                    i32.const 48
                    i32.store
                    i32.const 0
                    local.set 0
                    br 7 (;@1;)
                  end
                  i32.const 0
                  local.set 2
                end
                local.get 8
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 5
                  i32.load offset=28
                  local.tee 1
                  i32.const 2
                  i32.shl
                  i32.const 1780
                  i32.add
                  local.tee 4
                  i32.load
                  local.get 5
                  i32.eq
                  if  ;; label = @8
                    local.get 4
                    local.get 2
                    i32.store
                    local.get 2
                    br_if 1 (;@7;)
                    i32.const 1480
                    i32.const 1480
                    i32.load
                    i32.const -2
                    local.get 1
                    i32.rotl
                    i32.and
                    i32.store
                    br 2 (;@6;)
                  end
                  local.get 8
                  i32.const 16
                  i32.const 20
                  local.get 8
                  i32.load offset=16
                  local.get 5
                  i32.eq
                  select
                  i32.add
                  local.get 2
                  i32.store
                  local.get 2
                  i32.eqz
                  br_if 1 (;@6;)
                end
                local.get 2
                local.get 8
                i32.store offset=24
                local.get 5
                i32.load offset=16
                local.tee 1
                if  ;; label = @7
                  local.get 2
                  local.get 1
                  i32.store offset=16
                  local.get 1
                  local.get 2
                  i32.store offset=24
                end
                local.get 5
                i32.load offset=20
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                local.get 1
                i32.store offset=20
                local.get 1
                local.get 2
                i32.store offset=24
              end
              local.get 0
              local.get 9
              i32.add
              local.set 0
              local.get 5
              local.get 9
              i32.add
              local.tee 5
              i32.load offset=4
              local.set 3
            end
            local.get 5
            local.get 3
            i32.const -2
            i32.and
            i32.store offset=4
            local.get 6
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 6
            i32.add
            local.get 0
            i32.store
            local.get 0
            i32.const 255
            i32.le_u
            if  ;; label = @5
              local.get 0
              i32.const -8
              i32.and
              i32.const 1516
              i32.add
              local.set 1
              block (result i32)  ;; label = @6
                i32.const 1476
                i32.load
                local.tee 2
                i32.const 1
                local.get 0
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 0
                i32.and
                i32.eqz
                if  ;; label = @7
                  i32.const 1476
                  local.get 0
                  local.get 2
                  i32.or
                  i32.store
                  local.get 1
                  br 1 (;@6;)
                end
                local.get 1
                i32.load offset=8
              end
              local.set 0
              local.get 1
              local.get 6
              i32.store offset=8
              local.get 0
              local.get 6
              i32.store offset=12
              local.get 6
              local.get 1
              i32.store offset=12
              local.get 6
              local.get 0
              i32.store offset=8
              br 1 (;@4;)
            end
            i32.const 31
            local.set 3
            local.get 0
            i32.const 16777215
            i32.le_u
            if  ;; label = @5
              local.get 0
              i32.const 38
              local.get 0
              i32.const 8
              i32.shr_u
              i32.clz
              local.tee 1
              i32.sub
              i32.shr_u
              i32.const 1
              i32.and
              local.get 1
              i32.const 1
              i32.shl
              i32.sub
              i32.const 62
              i32.add
              local.set 3
            end
            local.get 6
            local.get 3
            i32.store offset=28
            local.get 6
            i64.const 0
            i64.store offset=16 align=4
            local.get 3
            i32.const 2
            i32.shl
            i32.const 1780
            i32.add
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                i32.const 1480
                i32.load
                local.tee 2
                i32.const 1
                local.get 3
                i32.shl
                local.tee 4
                i32.and
                i32.eqz
                if  ;; label = @7
                  i32.const 1480
                  local.get 2
                  local.get 4
                  i32.or
                  i32.store
                  local.get 1
                  local.get 6
                  i32.store
                  br 1 (;@6;)
                end
                local.get 0
                i32.const 25
                local.get 3
                i32.const 1
                i32.shr_u
                i32.sub
                i32.const 0
                local.get 3
                i32.const 31
                i32.ne
                select
                i32.shl
                local.set 3
                local.get 1
                i32.load
                local.set 2
                loop  ;; label = @7
                  local.get 2
                  local.tee 1
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 0
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 3
                  i32.const 29
                  i32.shr_u
                  local.set 4
                  local.get 3
                  i32.const 1
                  i32.shl
                  local.set 3
                  local.get 2
                  local.get 4
                  i32.const 4
                  i32.and
                  i32.add
                  local.tee 4
                  i32.load offset=16
                  local.tee 2
                  br_if 0 (;@7;)
                end
                local.get 4
                local.get 6
                i32.store offset=16
              end
              local.get 6
              local.get 1
              i32.store offset=24
              local.get 6
              local.get 6
              i32.store offset=12
              local.get 6
              local.get 6
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 1
            i32.load offset=8
            local.tee 0
            local.get 6
            i32.store offset=12
            local.get 1
            local.get 6
            i32.store offset=8
            local.get 6
            i32.const 0
            i32.store offset=24
            local.get 6
            local.get 1
            i32.store offset=12
            local.get 6
            local.get 0
            i32.store offset=8
          end
          local.get 7
          i32.const 8
          i32.add
          local.set 0
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 4
            i32.load offset=28
            local.tee 0
            i32.const 2
            i32.shl
            i32.const 1780
            i32.add
            local.tee 1
            i32.load
            local.get 4
            i32.eq
            if  ;; label = @5
              local.get 1
              local.get 2
              i32.store
              local.get 2
              br_if 1 (;@4;)
              i32.const 1480
              local.get 8
              i32.const -2
              local.get 0
              i32.rotl
              i32.and
              local.tee 8
              i32.store
              br 2 (;@3;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 4
            i32.eq
            select
            i32.add
            local.get 2
            i32.store
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 2
          local.get 7
          i32.store offset=24
          local.get 4
          i32.load offset=16
          local.tee 0
          if  ;; label = @4
            local.get 2
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 2
            i32.store offset=24
          end
          local.get 4
          i32.load offset=20
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 0
          i32.store offset=20
          local.get 0
          local.get 2
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 3
          i32.const 15
          i32.le_u
          if  ;; label = @4
            local.get 4
            local.get 3
            local.get 6
            i32.add
            local.tee 0
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 0
            local.get 4
            i32.add
            local.tee 0
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 4
          local.get 6
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 4
          local.get 6
          i32.add
          local.tee 2
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 3
          i32.add
          local.get 3
          i32.store
          local.get 3
          i32.const 255
          i32.le_u
          if  ;; label = @4
            local.get 3
            i32.const -8
            i32.and
            i32.const 1516
            i32.add
            local.set 0
            block (result i32)  ;; label = @5
              i32.const 1476
              i32.load
              local.tee 1
              i32.const 1
              local.get 3
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 3
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 1476
                local.get 1
                local.get 3
                i32.or
                i32.store
                local.get 0
                br 1 (;@5;)
              end
              local.get 0
              i32.load offset=8
            end
            local.set 1
            local.get 0
            local.get 2
            i32.store offset=8
            local.get 1
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 0
            i32.store offset=12
            local.get 2
            local.get 1
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 0
          local.get 3
          i32.const 16777215
          i32.le_u
          if  ;; label = @4
            local.get 3
            i32.const 38
            local.get 3
            i32.const 8
            i32.shr_u
            i32.clz
            local.tee 0
            i32.sub
            i32.shr_u
            i32.const 1
            i32.and
            local.get 0
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set 0
          end
          local.get 2
          local.get 0
          i32.store offset=28
          local.get 2
          i64.const 0
          i64.store offset=16 align=4
          local.get 0
          i32.const 2
          i32.shl
          i32.const 1780
          i32.add
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              i32.const 1
              local.get 0
              i32.shl
              local.tee 5
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 1480
                local.get 5
                local.get 8
                i32.or
                i32.store
                local.get 1
                local.get 2
                i32.store
                br 1 (;@5;)
              end
              local.get 3
              i32.const 25
              local.get 0
              i32.const 1
              i32.shr_u
              i32.sub
              i32.const 0
              local.get 0
              i32.const 31
              i32.ne
              select
              i32.shl
              local.set 0
              local.get 1
              i32.load
              local.set 6
              loop  ;; label = @6
                local.get 6
                local.tee 1
                i32.load offset=4
                i32.const -8
                i32.and
                local.get 3
                i32.eq
                br_if 2 (;@4;)
                local.get 0
                i32.const 29
                i32.shr_u
                local.set 5
                local.get 0
                i32.const 1
                i32.shl
                local.set 0
                local.get 1
                local.get 5
                i32.const 4
                i32.and
                i32.add
                local.tee 5
                i32.load offset=16
                local.tee 6
                br_if 0 (;@6;)
              end
              local.get 5
              local.get 2
              i32.store offset=16
            end
            local.get 2
            local.get 1
            i32.store offset=24
            local.get 2
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 2
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=8
          local.tee 0
          local.get 2
          i32.store offset=12
          local.get 1
          local.get 2
          i32.store offset=8
          local.get 2
          i32.const 0
          i32.store offset=24
          local.get 2
          local.get 1
          i32.store offset=12
          local.get 2
          local.get 0
          i32.store offset=8
        end
        local.get 4
        i32.const 8
        i32.add
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 9
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 2
          i32.load offset=28
          local.tee 0
          i32.const 2
          i32.shl
          i32.const 1780
          i32.add
          local.tee 1
          i32.load
          local.get 2
          i32.eq
          if  ;; label = @4
            local.get 1
            local.get 4
            i32.store
            local.get 4
            br_if 1 (;@3;)
            i32.const 1480
            local.get 11
            i32.const -2
            local.get 0
            i32.rotl
            i32.and
            i32.store
            br 2 (;@2;)
          end
          local.get 9
          i32.const 16
          i32.const 20
          local.get 9
          i32.load offset=16
          local.get 2
          i32.eq
          select
          i32.add
          local.get 4
          i32.store
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 4
        local.get 9
        i32.store offset=24
        local.get 2
        i32.load offset=16
        local.tee 0
        if  ;; label = @3
          local.get 4
          local.get 0
          i32.store offset=16
          local.get 0
          local.get 4
          i32.store offset=24
        end
        local.get 2
        i32.load offset=20
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 0
        i32.store offset=20
        local.get 0
        local.get 4
        i32.store offset=24
      end
      block  ;; label = @2
        local.get 3
        i32.const 15
        i32.le_u
        if  ;; label = @3
          local.get 2
          local.get 3
          local.get 6
          i32.add
          local.tee 0
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 2
          i32.add
          local.tee 0
          local.get 0
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 2
        local.get 6
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 2
        local.get 6
        i32.add
        local.tee 4
        local.get 3
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 3
        local.get 4
        i32.add
        local.get 3
        i32.store
        local.get 7
        if  ;; label = @3
          local.get 7
          i32.const -8
          i32.and
          i32.const 1516
          i32.add
          local.set 0
          i32.const 1496
          i32.load
          local.set 1
          block (result i32)  ;; label = @4
            i32.const 1
            local.get 7
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 6
            local.get 5
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 1476
              local.get 5
              local.get 6
              i32.or
              i32.store
              local.get 0
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=8
          end
          local.set 5
          local.get 0
          local.get 1
          i32.store offset=8
          local.get 5
          local.get 1
          i32.store offset=12
          local.get 1
          local.get 0
          i32.store offset=12
          local.get 1
          local.get 5
          i32.store offset=8
        end
        i32.const 1496
        local.get 4
        i32.store
        i32.const 1484
        local.get 3
        i32.store
      end
      local.get 2
      i32.const 8
      i32.add
      local.set 0
    end
    local.get 10
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;8;) (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.sub
      local.tee 2
      local.get 0
      i32.const 4
      i32.sub
      i32.load
      local.tee 1
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 5
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 2
        i32.load
        local.tee 1
        i32.sub
        local.tee 2
        i32.const 1492
        i32.load
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.add
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1496
            i32.load
            local.get 2
            i32.ne
            if  ;; label = @5
              local.get 1
              i32.const 255
              i32.le_u
              if  ;; label = @6
                local.get 1
                i32.const 3
                i32.shr_u
                local.set 4
                local.get 2
                i32.load offset=12
                local.tee 1
                local.get 2
                i32.load offset=8
                local.tee 3
                i32.eq
                if  ;; label = @7
                  i32.const 1476
                  i32.const 1476
                  i32.load
                  i32.const -2
                  local.get 4
                  i32.rotl
                  i32.and
                  i32.store
                  br 5 (;@2;)
                end
                local.get 3
                local.get 1
                i32.store offset=12
                local.get 1
                local.get 3
                i32.store offset=8
                br 4 (;@2;)
              end
              local.get 2
              i32.load offset=24
              local.set 6
              local.get 2
              local.get 2
              i32.load offset=12
              local.tee 1
              i32.ne
              if  ;; label = @6
                local.get 2
                i32.load offset=8
                local.tee 3
                local.get 1
                i32.store offset=12
                local.get 1
                local.get 3
                i32.store offset=8
                br 3 (;@3;)
              end
              local.get 2
              i32.const 20
              i32.add
              local.tee 4
              i32.load
              local.tee 3
              i32.eqz
              if  ;; label = @6
                local.get 2
                i32.load offset=16
                local.tee 3
                i32.eqz
                br_if 2 (;@4;)
                local.get 2
                i32.const 16
                i32.add
                local.set 4
              end
              loop  ;; label = @6
                local.get 4
                local.set 7
                local.get 3
                local.tee 1
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 3
                br_if 0 (;@6;)
                local.get 1
                i32.const 16
                i32.add
                local.set 4
                local.get 1
                i32.load offset=16
                local.tee 3
                br_if 0 (;@6;)
              end
              local.get 7
              i32.const 0
              i32.store
              br 2 (;@3;)
            end
            local.get 5
            i32.load offset=4
            local.tee 1
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if 2 (;@2;)
            i32.const 1484
            local.get 0
            i32.store
            local.get 5
            local.get 1
            i32.const -2
            i32.and
            i32.store offset=4
            local.get 2
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 5
            local.get 0
            i32.store
            return
          end
          i32.const 0
          local.set 1
        end
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 2
          i32.load offset=28
          local.tee 3
          i32.const 2
          i32.shl
          i32.const 1780
          i32.add
          local.tee 4
          i32.load
          local.get 2
          i32.eq
          if  ;; label = @4
            local.get 4
            local.get 1
            i32.store
            local.get 1
            br_if 1 (;@3;)
            i32.const 1480
            i32.const 1480
            i32.load
            i32.const -2
            local.get 3
            i32.rotl
            i32.and
            i32.store
            br 2 (;@2;)
          end
          local.get 6
          i32.const 16
          i32.const 20
          local.get 6
          i32.load offset=16
          local.get 2
          i32.eq
          select
          i32.add
          local.get 1
          i32.store
          local.get 1
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 1
        local.get 6
        i32.store offset=24
        local.get 2
        i32.load offset=16
        local.tee 3
        if  ;; label = @3
          local.get 1
          local.get 3
          i32.store offset=16
          local.get 3
          local.get 1
          i32.store offset=24
        end
        local.get 2
        i32.load offset=20
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.store offset=20
        local.get 3
        local.get 1
        i32.store offset=24
      end
      local.get 2
      local.get 5
      i32.ge_u
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=4
      local.tee 1
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 2
              i32.and
              i32.eqz
              if  ;; label = @6
                i32.const 1500
                i32.load
                local.get 5
                i32.eq
                if  ;; label = @7
                  i32.const 1500
                  local.get 2
                  i32.store
                  i32.const 1488
                  i32.const 1488
                  i32.load
                  local.get 0
                  i32.add
                  local.tee 0
                  i32.store
                  local.get 2
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 2
                  i32.const 1496
                  i32.load
                  i32.ne
                  br_if 6 (;@1;)
                  i32.const 1484
                  i32.const 0
                  i32.store
                  i32.const 1496
                  i32.const 0
                  i32.store
                  return
                end
                i32.const 1496
                i32.load
                local.get 5
                i32.eq
                if  ;; label = @7
                  i32.const 1496
                  local.get 2
                  i32.store
                  i32.const 1484
                  i32.const 1484
                  i32.load
                  local.get 0
                  i32.add
                  local.tee 0
                  i32.store
                  local.get 2
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 2
                  i32.add
                  local.get 0
                  i32.store
                  return
                end
                local.get 1
                i32.const -8
                i32.and
                local.get 0
                i32.add
                local.set 0
                local.get 1
                i32.const 255
                i32.le_u
                if  ;; label = @7
                  local.get 1
                  i32.const 3
                  i32.shr_u
                  local.set 4
                  local.get 5
                  i32.load offset=12
                  local.tee 1
                  local.get 5
                  i32.load offset=8
                  local.tee 3
                  i32.eq
                  if  ;; label = @8
                    i32.const 1476
                    i32.const 1476
                    i32.load
                    i32.const -2
                    local.get 4
                    i32.rotl
                    i32.and
                    i32.store
                    br 5 (;@3;)
                  end
                  local.get 3
                  local.get 1
                  i32.store offset=12
                  local.get 1
                  local.get 3
                  i32.store offset=8
                  br 4 (;@3;)
                end
                local.get 5
                i32.load offset=24
                local.set 6
                local.get 5
                local.get 5
                i32.load offset=12
                local.tee 1
                i32.ne
                if  ;; label = @7
                  i32.const 1492
                  i32.load
                  drop
                  local.get 5
                  i32.load offset=8
                  local.tee 3
                  local.get 1
                  i32.store offset=12
                  local.get 1
                  local.get 3
                  i32.store offset=8
                  br 3 (;@4;)
                end
                local.get 5
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 3
                i32.eqz
                if  ;; label = @7
                  local.get 5
                  i32.load offset=16
                  local.tee 3
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 5
                  i32.const 16
                  i32.add
                  local.set 4
                end
                loop  ;; label = @7
                  local.get 4
                  local.set 7
                  local.get 3
                  local.tee 1
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 3
                  br_if 0 (;@7;)
                  local.get 1
                  i32.const 16
                  i32.add
                  local.set 4
                  local.get 1
                  i32.load offset=16
                  local.tee 3
                  br_if 0 (;@7;)
                end
                local.get 7
                i32.const 0
                i32.store
                br 2 (;@4;)
              end
              local.get 5
              local.get 1
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 2
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 2
              i32.add
              local.get 0
              i32.store
              br 3 (;@2;)
            end
            i32.const 0
            local.set 1
          end
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 5
            i32.load offset=28
            local.tee 3
            i32.const 2
            i32.shl
            i32.const 1780
            i32.add
            local.tee 4
            i32.load
            local.get 5
            i32.eq
            if  ;; label = @5
              local.get 4
              local.get 1
              i32.store
              local.get 1
              br_if 1 (;@4;)
              i32.const 1480
              i32.const 1480
              i32.load
              i32.const -2
              local.get 3
              i32.rotl
              i32.and
              i32.store
              br 2 (;@3;)
            end
            local.get 6
            i32.const 16
            i32.const 20
            local.get 6
            i32.load offset=16
            local.get 5
            i32.eq
            select
            i32.add
            local.get 1
            i32.store
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 1
          local.get 6
          i32.store offset=24
          local.get 5
          i32.load offset=16
          local.tee 3
          if  ;; label = @4
            local.get 1
            local.get 3
            i32.store offset=16
            local.get 3
            local.get 1
            i32.store offset=24
          end
          local.get 5
          i32.load offset=20
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 3
          i32.store offset=20
          local.get 3
          local.get 1
          i32.store offset=24
        end
        local.get 2
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        i32.add
        local.get 0
        i32.store
        local.get 2
        i32.const 1496
        i32.load
        i32.ne
        br_if 0 (;@2;)
        i32.const 1484
        local.get 0
        i32.store
        return
      end
      local.get 0
      i32.const 255
      i32.le_u
      if  ;; label = @2
        local.get 0
        i32.const -8
        i32.and
        i32.const 1516
        i32.add
        local.set 1
        block (result i32)  ;; label = @3
          i32.const 1476
          i32.load
          local.tee 3
          i32.const 1
          local.get 0
          i32.const 3
          i32.shr_u
          i32.shl
          local.tee 0
          i32.and
          i32.eqz
          if  ;; label = @4
            i32.const 1476
            local.get 0
            local.get 3
            i32.or
            i32.store
            local.get 1
            br 1 (;@3;)
          end
          local.get 1
          i32.load offset=8
        end
        local.set 0
        local.get 1
        local.get 2
        i32.store offset=8
        local.get 0
        local.get 2
        i32.store offset=12
        local.get 2
        local.get 1
        i32.store offset=12
        local.get 2
        local.get 0
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 3
      local.get 0
      i32.const 16777215
      i32.le_u
      if  ;; label = @2
        local.get 0
        i32.const 38
        local.get 0
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 1
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 1
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 3
      end
      local.get 2
      local.get 3
      i32.store offset=28
      local.get 2
      i64.const 0
      i64.store offset=16 align=4
      local.get 3
      i32.const 2
      i32.shl
      i32.const 1780
      i32.add
      local.set 1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1480
            i32.load
            local.tee 4
            i32.const 1
            local.get 3
            i32.shl
            local.tee 7
            i32.and
            i32.eqz
            if  ;; label = @5
              i32.const 1480
              local.get 4
              local.get 7
              i32.or
              i32.store
              local.get 1
              local.get 2
              i32.store
              local.get 2
              local.get 1
              i32.store offset=24
              br 1 (;@4;)
            end
            local.get 0
            i32.const 25
            local.get 3
            i32.const 1
            i32.shr_u
            i32.sub
            i32.const 0
            local.get 3
            i32.const 31
            i32.ne
            select
            i32.shl
            local.set 3
            local.get 1
            i32.load
            local.set 1
            loop  ;; label = @5
              local.get 1
              local.tee 4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 0
              i32.eq
              br_if 2 (;@3;)
              local.get 3
              i32.const 29
              i32.shr_u
              local.set 7
              local.get 3
              i32.const 1
              i32.shl
              local.set 3
              local.get 1
              local.get 7
              i32.const 4
              i32.and
              i32.add
              local.tee 7
              i32.const 16
              i32.add
              i32.load
              local.tee 1
              br_if 0 (;@5;)
            end
            local.get 7
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 4
            i32.store offset=24
          end
          local.get 2
          local.get 2
          i32.store offset=12
          local.get 2
          local.get 2
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.tee 0
        local.get 2
        i32.store offset=12
        local.get 4
        local.get 2
        i32.store offset=8
        local.get 2
        i32.const 0
        i32.store offset=24
        local.get 2
        local.get 4
        i32.store offset=12
        local.get 2
        local.get 0
        i32.store offset=8
      end
      i32.const 1508
      i32.const 1508
      i32.load
      i32.const 1
      i32.sub
      local.tee 0
      i32.const -1
      local.get 0
      select
      i32.store
    end)
  (func (;9;) (type 0) (param i32) (result i32)
    (local i32)
    i32.const 1
    local.get 0
    local.get 0
    i32.const 1
    i32.le_u
    select
    local.set 0
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        call 7
        local.tee 1
        br_if 1 (;@1;)
        i32.const 1972
        i32.load
        local.tee 1
        if  ;; label = @3
          local.get 1
          call_indirect (type 6)
          br 1 (;@2;)
        end
      end
      call 2
      unreachable
    end
    local.get 1)
  (func (;10;) (type 0) (param i32) (result i32)
    local.get 0)
  (func (;11;) (type 1) (param i32))
  (func (;12;) (type 1) (param i32)
    local.get 0
    call 8)
  (func (;13;) (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 2
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 1
      i32.load offset=4
      i32.eq
      return
    end
    local.get 0
    local.get 1
    i32.eq
    if  ;; label = @1
      i32.const 1
      return
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 2
      i32.load8_u
      local.tee 0
      i32.eqz
      local.get 0
      local.get 1
      i32.load offset=4
      local.tee 1
      i32.load8_u
      local.tee 3
      i32.ne
      i32.or
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.load8_u offset=1
        local.set 3
        local.get 2
        i32.load8_u offset=1
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 0
        local.get 3
        i32.eq
        br_if 0 (;@2;)
      end
    end
    local.get 0
    local.get 3
    i32.eq)
  (func (;14;) (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 5
    global.set 0
    block (result i32)  ;; label = @1
      i32.const 1
      local.get 0
      local.get 1
      i32.const 0
      call 13
      br_if 0 (;@1;)
      drop
      i32.const 0
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      drop
      global.get 0
      i32.const -64
      i32.add
      local.tee 3
      global.set 0
      local.get 1
      i32.load
      local.tee 4
      i32.const 4
      i32.sub
      i32.load
      local.set 6
      local.get 4
      i32.const 8
      i32.sub
      i32.load
      local.set 4
      local.get 3
      i64.const 0
      i64.store offset=32 align=4
      local.get 3
      i64.const 0
      i64.store offset=40 align=4
      local.get 3
      i64.const 0
      i64.store offset=48 align=4
      local.get 3
      i64.const 0
      i64.store offset=55 align=1
      local.get 3
      i64.const 0
      i64.store offset=24 align=4
      local.get 3
      i32.const 0
      i32.store offset=20
      local.get 3
      i32.const 1108
      i32.store offset=16
      local.get 3
      local.get 1
      i32.store offset=12
      local.get 3
      i32.const 1156
      i32.store offset=8
      local.get 1
      local.get 4
      i32.add
      local.set 1
      i32.const 0
      local.set 4
      block  ;; label = @2
        local.get 6
        i32.const 1156
        i32.const 0
        call 13
        if  ;; label = @3
          local.get 3
          i32.const 1
          i32.store offset=56
          local.get 6
          local.get 3
          i32.const 8
          i32.add
          local.get 1
          local.get 1
          i32.const 1
          i32.const 0
          local.get 6
          i32.load
          i32.load offset=20
          call_indirect (type 2)
          local.get 1
          i32.const 0
          local.get 3
          i32.load offset=32
          i32.const 1
          i32.eq
          select
          local.set 4
          br 1 (;@2;)
        end
        local.get 6
        local.get 3
        i32.const 8
        i32.add
        local.get 1
        i32.const 1
        i32.const 0
        local.get 6
        i32.load
        i32.load offset=24
        call_indirect (type 4)
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.load offset=44
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          local.get 3
          i32.load offset=28
          i32.const 0
          local.get 3
          i32.load offset=40
          i32.const 1
          i32.eq
          select
          i32.const 0
          local.get 3
          i32.load offset=36
          i32.const 1
          i32.eq
          select
          i32.const 0
          local.get 3
          i32.load offset=48
          i32.const 1
          i32.eq
          select
          local.set 4
          br 1 (;@2;)
        end
        local.get 3
        i32.load offset=32
        i32.const 1
        i32.ne
        if  ;; label = @3
          local.get 3
          i32.load offset=48
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=36
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=40
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 3
        i32.load offset=24
        local.set 4
      end
      local.get 3
      i32.const -64
      i32.sub
      global.set 0
      i32.const 0
      local.get 4
      local.tee 6
      i32.eqz
      br_if 0 (;@1;)
      drop
      local.get 5
      i32.const 12
      i32.add
      local.tee 1
      i32.const 0
      i32.store8
      local.get 1
      i32.const 52
      i32.add
      local.tee 3
      i32.const 1
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 0
      i32.store8 offset=2
      local.get 1
      i32.const 0
      i32.store8 offset=1
      local.get 3
      i32.const 3
      i32.sub
      i32.const 0
      i32.store8
      local.get 3
      i32.const 2
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 0
      i32.store8 offset=3
      local.get 3
      i32.const 4
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 0
      local.get 1
      i32.sub
      i32.const 3
      i32.and
      local.tee 3
      i32.add
      local.tee 1
      i32.const 0
      i32.store
      local.get 1
      i32.const 52
      local.get 3
      i32.sub
      i32.const -4
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      i32.const 4
      i32.sub
      i32.const 0
      i32.store
      block  ;; label = @2
        local.get 4
        i32.const 9
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 0
        i32.store offset=8
        local.get 1
        i32.const 0
        i32.store offset=4
        local.get 3
        i32.const 8
        i32.sub
        i32.const 0
        i32.store
        local.get 3
        i32.const 12
        i32.sub
        i32.const 0
        i32.store
        local.get 4
        i32.const 25
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 0
        i32.store offset=24
        local.get 1
        i32.const 0
        i32.store offset=20
        local.get 1
        i32.const 0
        i32.store offset=16
        local.get 1
        i32.const 0
        i32.store offset=12
        local.get 3
        i32.const 16
        i32.sub
        i32.const 0
        i32.store
        local.get 3
        i32.const 20
        i32.sub
        i32.const 0
        i32.store
        local.get 3
        i32.const 24
        i32.sub
        i32.const 0
        i32.store
        local.get 3
        i32.const 28
        i32.sub
        i32.const 0
        i32.store
        local.get 4
        local.get 1
        i32.const 4
        i32.and
        i32.const 24
        i32.or
        local.tee 4
        i32.sub
        local.tee 3
        i32.const 32
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 4
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 1
          i64.const 0
          i64.store offset=24
          local.get 1
          i64.const 0
          i64.store offset=16
          local.get 1
          i64.const 0
          i64.store offset=8
          local.get 1
          i64.const 0
          i64.store
          local.get 1
          i32.const 32
          i32.add
          local.set 1
          local.get 3
          i32.const 32
          i32.sub
          local.tee 3
          i32.const 31
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      i32.const 1
      i32.store offset=56
      local.get 5
      i32.const -1
      i32.store offset=20
      local.get 5
      local.get 0
      i32.store offset=16
      local.get 5
      local.get 6
      i32.store offset=8
      local.get 6
      local.get 5
      i32.const 8
      i32.add
      local.get 2
      i32.load
      i32.const 1
      local.get 6
      i32.load
      i32.load offset=28
      call_indirect (type 3)
      local.get 5
      i32.load offset=32
      local.tee 0
      i32.const 1
      i32.eq
      if  ;; label = @2
        local.get 2
        local.get 5
        i32.load offset=24
        i32.store
      end
      local.get 0
      i32.const 1
      i32.eq
    end
    local.get 5
    i32.const -64
    i32.sub
    global.set 0)
  (func (;15;) (type 8) (param i32 i32 i32)
    (local i32)
    local.get 0
    i32.load offset=16
    local.tee 3
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.const 1
      i32.store offset=36
      local.get 0
      local.get 2
      i32.store offset=24
      local.get 0
      local.get 1
      i32.store offset=16
      return
    end
    block  ;; label = @1
      local.get 1
      local.get 3
      i32.eq
      if  ;; label = @2
        local.get 0
        i32.load offset=24
        i32.const 2
        i32.ne
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        i32.store offset=24
        return
      end
      local.get 0
      i32.const 1
      i32.store8 offset=54
      local.get 0
      i32.const 2
      i32.store offset=24
      local.get 0
      local.get 0
      i32.load offset=36
      i32.const 1
      i32.add
      i32.store offset=36
    end)
  (func (;16;) (type 3) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load offset=8
    i32.const 0
    call 13
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 3
      call 15
    end)
  (func (;17;) (type 3) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load offset=8
    i32.const 0
    call 13
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 3
      call 15
      return
    end
    local.get 0
    i32.load offset=8
    local.tee 0
    local.get 1
    local.get 2
    local.get 3
    local.get 0
    i32.load
    i32.load offset=28
    call_indirect (type 3))
  (func (;18;) (type 3) (param i32 i32 i32 i32)
    local.get 0
    i32.const 1
    i32.store8 offset=53
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 2
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.store8 offset=52
      block  ;; label = @2
        local.get 0
        i32.load offset=16
        local.tee 2
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.const 1
          i32.store offset=36
          local.get 0
          local.get 3
          i32.store offset=24
          local.get 0
          local.get 1
          i32.store offset=16
          local.get 3
          i32.const 1
          i32.ne
          br_if 2 (;@1;)
          local.get 0
          i32.load offset=48
          i32.const 1
          i32.eq
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 1
        local.get 2
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.load offset=24
          local.tee 2
          i32.const 2
          i32.eq
          if  ;; label = @4
            local.get 0
            local.get 3
            i32.store offset=24
            local.get 3
            local.set 2
          end
          local.get 0
          i32.load offset=48
          i32.const 1
          i32.ne
          br_if 2 (;@1;)
          local.get 2
          i32.const 1
          i32.eq
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 0
        local.get 0
        i32.load offset=36
        i32.const 1
        i32.add
        i32.store offset=36
      end
      local.get 0
      i32.const 1
      i32.store8 offset=54
    end)
  (func (;19;) (type 8) (param i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.get 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=28
      i32.const 1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.store offset=28
    end)
  (func (;20;) (type 4) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load offset=8
    local.get 4
    call 13
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 3
      call 19
      return
    end
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.load
      local.get 4
      call 13
      if  ;; label = @2
        block  ;; label = @3
          local.get 2
          local.get 1
          i32.load offset=16
          i32.ne
          if  ;; label = @4
            local.get 1
            i32.load offset=20
            local.get 2
            i32.ne
            br_if 1 (;@3;)
          end
          local.get 3
          i32.const 1
          i32.ne
          br_if 2 (;@1;)
          local.get 1
          i32.const 1
          i32.store offset=32
          return
        end
        local.get 1
        local.get 3
        i32.store offset=32
        block  ;; label = @3
          local.get 1
          i32.load offset=44
          i32.const 4
          i32.eq
          br_if 0 (;@3;)
          local.get 1
          i32.const 0
          i32.store16 offset=52
          local.get 0
          i32.load offset=8
          local.tee 0
          local.get 1
          local.get 2
          local.get 2
          i32.const 1
          local.get 4
          local.get 0
          i32.load
          i32.load offset=20
          call_indirect (type 2)
          local.get 1
          i32.load8_u offset=53
          if  ;; label = @4
            local.get 1
            i32.const 3
            i32.store offset=44
            local.get 1
            i32.load8_u offset=52
            i32.eqz
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          local.get 1
          i32.const 4
          i32.store offset=44
        end
        local.get 1
        local.get 2
        i32.store offset=20
        local.get 1
        local.get 1
        i32.load offset=40
        i32.const 1
        i32.add
        i32.store offset=40
        local.get 1
        i32.load offset=36
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=24
        i32.const 2
        i32.ne
        br_if 1 (;@1;)
        local.get 1
        i32.const 1
        i32.store8 offset=54
        return
      end
      local.get 0
      i32.load offset=8
      local.tee 0
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      local.get 0
      i32.load
      i32.load offset=24
      call_indirect (type 4)
    end)
  (func (;21;) (type 4) (param i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load offset=8
    local.get 4
    call 13
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 3
      call 19
      return
    end
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.load
      local.get 4
      call 13
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        local.get 1
        i32.load offset=16
        i32.ne
        if  ;; label = @3
          local.get 1
          i32.load offset=20
          local.get 2
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 3
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 1
        i32.const 1
        i32.store offset=32
        return
      end
      local.get 1
      local.get 2
      i32.store offset=20
      local.get 1
      local.get 3
      i32.store offset=32
      local.get 1
      local.get 1
      i32.load offset=40
      i32.const 1
      i32.add
      i32.store offset=40
      block  ;; label = @2
        local.get 1
        i32.load offset=36
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=24
        i32.const 2
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.const 1
        i32.store8 offset=54
      end
      local.get 1
      i32.const 4
      i32.store offset=44
    end)
  (func (;22;) (type 2) (param i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load offset=8
    local.get 5
    call 13
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call 18
      return
    end
    local.get 0
    i32.load offset=8
    local.tee 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 0
    i32.load
    i32.load offset=20
    call_indirect (type 2))
  (func (;23;) (type 2) (param i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.load offset=8
    local.get 5
    call 13
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call 18
    end)
  (func (;24;) (type 0) (param i32) (result i32)
    i32.const 1046)
  (func (;25;) (type 0) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 1352
    i32.store
    local.get 0
    i32.load offset=4
    i32.const 12
    i32.sub
    local.tee 1
    local.get 1
    i32.load offset=8
    i32.const 1
    i32.sub
    local.tee 2
    i32.store offset=8
    local.get 2
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      local.get 1
      call 8
    end
    local.get 0)
  (func (;26;) (type 1) (param i32)
    local.get 0
    call 25
    drop
    local.get 0
    call 8)
  (func (;27;) (type 0) (param i32) (result i32)
    local.get 0
    i32.load offset=4)
  (func (;28;) (type 7) (result i32)
    global.get 0)
  (func (;29;) (type 1) (param i32)
    local.get 0
    global.set 0)
  (func (;30;) (type 0) (param i32) (result i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set 0
    local.get 0)
  (table (;0;) 20 20 funcref)
  (memory (;0;) 256 256)
  (global (;0;) (mut i32) (i32.const 67520))
  (export "memory" (memory 0))
  (export "init" (func 1))
  (export "__indirect_function_table" (table 0))
  (export "__errno_location" (func 3))
  (export "stackSave" (func 28))
  (export "stackRestore" (func 29))
  (export "stackAlloc" (func 30))
  (elem (;0;) (i32.const 1) func 25 10 12 11 11 14 23 21 16 12 22 20 17 10 12 24 26 27 26)
  (data (;0;) (i32.const 1024) "hello \e3\81\93\e3\82\93\e3\81\ab\e3\81\a1\e3\81\af\00std::exception\00basic_string\00N10__cxxabiv116__shim_type_infoE\00\00\c0\04\00\002\04\00\00\b4\05\00\00N10__cxxabiv117__class_type_infoE\00\00\00\c0\04\00\00`\04\00\00T\04\00\00\00\00\00\00\84\04\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\00\00\00\00\08\05\00\00\02\00\00\00\0a\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00N10__cxxabiv120__si_class_type_infoE\00\00\00\00\c0\04\00\00\e0\04\00\00\84\04\00\00\00\00\00\008\05\00\00\0e\00\00\00\0f\00\00\00\10\00\00\00St9exception\00\00\00\00\98\04\00\00(\05\00\00\00\00\00\00d\05\00\00\01\00\00\00\11\00\00\00\12\00\00\00St11logic_error\00\c0\04\00\00T\05\00\008\05\00\00\00\00\00\00\98\05\00\00\01\00\00\00\13\00\00\00\12\00\00\00St12length_error\00\00\00\00\c0\04\00\00\84\05\00\00d\05\00\00St9type_info\00\00\00\00\98\04\00\00\a4\05")
  (data (;1;) (i32.const 1468) "\c0\07\01"))
