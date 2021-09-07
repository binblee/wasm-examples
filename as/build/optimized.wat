(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_none (func))
 (import "index" "log" (func $assembly/index/log (param i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 17532))
 (memory $0 1)
 (data (i32.const 1036) "l")
 (data (i32.const 1048) "\01\00\00\00\\\00\00\00A\00s\00s\00e\00m\00b\00l\00y\00S\00c\00r\00i\00p\00t\00 \00c\00a\00l\00l\00 \00J\00a\00v\00a\00S\00c\00r\00i\00p\00t\00 \00f\00u\00n\00c\00t\00i\00o\00n\00 \00w\00o\00r\00k\00s\00.")
 (export "add" (func $assembly/index/add))
 (export "sub" (func $assembly/index/sub))
 (export "as_call_js_test" (func $assembly/index/as_call_js_test))
 (export "memory" (memory $0))
 (func $assembly/index/add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $assembly/index/sub (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $assembly/index/as_call_js_test
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 1148
  i32.lt_s
  if
   i32.const 17552
   i32.const 17600
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 1056
  i32.store
  i32.const 1056
  call $assembly/index/log
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
