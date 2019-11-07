(module
 (import "env" "__memory_base" (global $__memory_base i32))
 (global $STACKTOP (mut i32) (i32.const 0))
 (global $STACK_MAX (mut i32) (i32.const 0))
 (export "__post_instantiate" (func $__post_instantiate))
 (export "_add" (func $_add))
 (func $_add (; 0 ;) (; has Stack IR ;) (param $0 f64) (param $1 f64) (result f64)
  ;;@ test.c:9:0
  (local.set $0
   (f64.add
    (local.get $0)
    (local.get $1)
   )
  )
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 71748523475265)
   )
  )
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 1.3487380708585199e-294)
   )
  )
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 73956170351427)
   )
  )
  ;;@ test.c:10:0
  (local.get $0)
 )
 (func $__post_instantiate (; 1 ;) (; has Stack IR ;)
  (global.set $STACKTOP
   (global.get $__memory_base)
  )
  (global.set $STACK_MAX
   (i32.add
    (global.get $STACKTOP)
    (i32.const 5242880)
   )
  )
 )
)
