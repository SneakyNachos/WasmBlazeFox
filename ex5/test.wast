(module
 (import "env" "__memory_base" (global $__memory_base i32))
 (global $STACKTOP (mut i32) (i32.const 0))
 (global $STACK_MAX (mut i32) (i32.const 0))
 (export "__post_instantiate" (func $__post_instantiate))
 (export "_add" (func $_add))
 (func $_add (; 0 ;) (; has Stack IR ;) (param $0 f64) (param $1 f64) (result f64)
  ;;@ test.c:17:0
  (local.set $0
   (f64.add
    (local.get $0)
    (local.get $1)
   )
  )
  ;;@ test.c:18:0
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 71748523475265)
   )
  )
  ;;@ test.c:19:0
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 1.3487380708585199e-294)
   )
  )
  ;;@ test.c:20:0
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 66.25882352941176)
   )
  )
  ;;@ test.c:21:0
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 70.25882352941176)
   )
  )
  ;;@ test.c:22:0
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 74.25882352941176)
   )
  )
  ;;@ test.c:23:0
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 78.25882352941176)
   )
  )
  ;;@ test.c:24:0
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 73956170351427)
   )
  )
  ;;@ test.c:25:0
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
