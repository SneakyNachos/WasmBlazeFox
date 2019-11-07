(module
 (import "env" "__memory_base" (global $__memory_base i32))
 (global $STACKTOP (mut i32) (i32.const 0))
 (global $STACK_MAX (mut i32) (i32.const 0))
 (export "__post_instantiate" (func $__post_instantiate))
 (export "_add" (func $_add))
 (func $_add (; 0 ;) (; has Stack IR ;) (param $0 f64) (param $1 f64) (result f64)
  ;;@ test.c:25:0
  (local.set $0
   (f64.add
    (local.get $0)
    (local.get $1)
   )
  )
  ;;@ test.c:26:0
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 71748523475265)
   )
  )
  ;;@ test.c:27:0
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 5.014465372101849e-245)
   )
  )
  ;;@ test.c:28:0
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 1438040287643538148296302e15)
   )
  )
  ;;@ test.c:29:0
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 6.664029008613625e-268)
   )
  )
  ;;@ test.c:30:0
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 6.016638025590275e-309)
   )
  )
  ;;@ test.c:31:0
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const -9868991712663465534560776e62)
   )
  )
  ;;@ test.c:32:0
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 5762482085449728834707739e204)
   )
  )
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 2916424193686355866621029e233)
   )
  )
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 2.428313725785e-312)
   )
  )
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 0)
   )
  )
  (local.set $0
   (f64.add
    (local.get $0)
    (f64.const 73956170351427)
   )
  )
  ;;@ test.c:33:0
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
