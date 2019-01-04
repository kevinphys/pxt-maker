; Interface tables: 0/0 (NaN%)
; Virtual methods: 0 / 0
; generated code sizes (bytes): 1428 (incl. 734 user, 554 helpers, 12 vtables, 128 lits); src size 896
; assembly: 982 lines; density: 104.86 bytes/stmt; (7 stmts)
; total bytes: 54548 (41.6% of 128.0k flash with 76524 free)
; peep hole pass: 17 instructions removed and 15 updated
; peep hole pass: 0 instructions removed and 0 updated


; start
    .startaddr 0x800cc00
    .hex 708E3B92C615A841C49866C975EE5197 ; magic number
    .hex 578EA9D54BDD3E01 ; hex template hash
    .hex D09653BBAF1F2434 ; program hash
    .short 3   ; num. globals
    .short 0 ; patched with number of 64 bit words resulting from assembly
    .word _pxt_config_data
    .short 0 ; patched with comm section size
    .short 1 ; number of globals that are not pointers (they come first)
    .word _pxt_iface_member_names
    .word _pxt_lambda_trampoline@fn
    .word _pxt_perf_counters
    .word 0 ; reserved
    .word 0 ; reserved
    ;
; Function <main> main.ts:1
    ;
    .section code
    .balign 4
_main___P1_Lit: 	; 0x800cc40
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word _main___P1_args@fn
_main___P1_args: 	; 0x800cc4c
    .section code
_main___P1: 	; 0x800cc4c
_main___P1_nochk: 	; 0x800cc4c
    @stackmark func
    @stackmark args
    push {lr} 	; 0x800cc4c
.locals: 	; 0x800cc4e
    @stackmark locals
_main___P1_locals: 	; 0x800cc4e
    movs r0, #0 	; 0x800cc4e
    ldr r7, [r6, #0] 	; 0x800cc50
    str r0, [r7, #4] 	; 0x800cc52
    @stackempty locals
    ldr r0, _ldlit_2       	; 0x800cc54
    push {r0} ; proc-arg 	; 0x800cc56
    bl forever__P122 	; 0x800cc58
_proccall0: 	; 0x800cc5c
    add sp, #4*1 ; pop locals 1 	; 0x800cc5c
    @stackempty locals
.ret.1: 	; 0x800cc5e
    @stackempty locals
_main___P1_end: 	; 0x800cc5e
    pop {pc} 	; 0x800cc5e
    @stackempty func
    @stackempty args
; endfun
    ;
; Function inline main.ts:1
    ;
    .section code
    .balign 4
inline__P223_Lit: 	; 0x800cc60
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word inline__P223_args@fn
inline__P223_args: 	; 0x800cc6c
    .section code
inline__P223: 	; 0x800cc6c
inline__P223_nochk: 	; 0x800cc6c
    @stackmark func
    @stackmark args
    push {lr} 	; 0x800cc6c
.locals: 	; 0x800cc6e
    @stackmark locals
inline__P223_locals: 	; 0x800cc6e
    movs r0, #122 	; 0x800cc6e
    mov r7, sp 	; 0x800cc70
    str r7, [r6, #4] 	; 0x800cc72
    bl pxt::getPin 	; 0x800cc74
    push {r0} ; proc-arg 	; 0x800cc78
    movs r0, #10 	; 0x800cc7a
    mov r7, sp 	; 0x800cc7c
    str r7, [r6, #4] 	; 0x800cc7e
    bl numops::toBoolDecr 	; 0x800cc80
    push {r0} ; proc-arg 	; 0x800cc84
    ldr r0, [sp, #4*1] ; estack 	; 0x800cc86
    ldr r1, [sp, #4*0] ; estack 	; 0x800cc88
    mov r7, sp 	; 0x800cc8a
    str r7, [r6, #4] 	; 0x800cc8c
    bl DigitalInOutPinMethods::digitalWrite 	; 0x800cc8e
    add sp, #4*2 ; pop locals 2 	; 0x800cc92
    @stackempty locals
    ldr r0, _ldlit_3       	; 0x800cc94
    mov r7, sp 	; 0x800cc96
    str r7, [r6, #4] 	; 0x800cc98
    bl control::waitMicros 	; 0x800cc9a
    @stackempty locals
    movs r0, #122 	; 0x800cc9e
    mov r7, sp 	; 0x800cca0
    str r7, [r6, #4] 	; 0x800cca2
    bl pxt::getPin 	; 0x800cca4
    push {r0} ; proc-arg 	; 0x800cca8
    movs r0, #66 	; 0x800ccaa
    mov r7, sp 	; 0x800ccac
    str r7, [r6, #4] 	; 0x800ccae
    bl numops::toBoolDecr 	; 0x800ccb0
    push {r0} ; proc-arg 	; 0x800ccb4
    ldr r0, [sp, #4*1] ; estack 	; 0x800ccb6
    ldr r1, [sp, #4*0] ; estack 	; 0x800ccb8
    mov r7, sp 	; 0x800ccba
    str r7, [r6, #4] 	; 0x800ccbc
    bl DigitalInOutPinMethods::digitalWrite 	; 0x800ccbe
    add sp, #4*2 ; pop locals 2 	; 0x800ccc2
    @stackempty locals
    ldr r0, _ldlit_3       	; 0x800ccc4
    mov r7, sp 	; 0x800ccc6
    str r7, [r6, #4] 	; 0x800ccc8
    bl control::waitMicros 	; 0x800ccca
    @stackempty locals
.ret.223: 	; 0x800ccce
    @stackempty locals
inline__P223_end: 	; 0x800ccce
    pop {pc} 	; 0x800ccce
    @stackempty func
    @stackempty args
; endfun
    ;
; Function forever base/control.ts:204
    ;
    .section code
    .balign 4
    .section code
forever__P122: 	; 0x800ccd0
forever__P122_nochk: 	; 0x800ccd0
    @stackmark func
    @stackmark args
    push {lr} 	; 0x800ccd0
.locals: 	; 0x800ccd2
    @stackmark locals
forever__P122_locals: 	; 0x800ccd2
    ldr r0, [sp, args@0] 	; 0x800ccd2
    push {r0} ; proc-arg 	; 0x800ccd4
    bl _conv_1 	; 0x800ccd6
    mov r7, sp 	; 0x800ccda
    str r7, [r6, #4] 	; 0x800ccdc
    bl loops::forever 	; 0x800ccde
    add sp, #4*1 ; pop locals 1 	; 0x800cce2
    @stackempty locals
.ret.122: 	; 0x800cce4
    @stackempty locals
forever__P122_end: 	; 0x800cce4
    pop {pc} 	; 0x800cce4
    @stackempty func
    @stackempty args
; endfun
    .section code
_pxt_lambda_trampoline: 	; 0x800cce6
    push { r4, r5, r6, r7, lr} 	; 0x800cce6
    mov r4, r1 	; 0x800cce8
    mov r5, r2 	; 0x800ccea
    mov r6, r3 	; 0x800ccec
    mov r7, r0 	; 0x800ccee
    bl _inst_builtin4_validate_0 	; 0x800ccf0
    mov r0, sp 	; 0x800ccf4
    push {r4, r5, r6, r7} ; push args and the lambda 	; 0x800ccf6
    mov r1, sp 	; 0x800ccf8
    bl pxt::pushThreadContext 	; 0x800ccfa
    ;bl pxtrt::getGlobalsPtr
    mov r6, r0          ; save ctx or globals 	; 0x800ccfe
    mov r5, r7          ; save lambda for closure 	; 0x800cd00
    ;mov r0, r7
    ;bl _pxt_incr        ; make sure lambda stays alive
    ldr r0, [r5, #8]    ; ld fnptr 	; 0x800cd02
    movs r4, #3         ; 3 args 	; 0x800cd04
    blx r0              ; execute the actual lambda 	; 0x800cd06
    mov r7, r0          ; save result 	; 0x800cd08
    @dummystack 4
    add sp, #4*4        ; remove arguments and lambda 	; 0x800cd0a
    ;mov r0, r5   ; decrement lambda
    ;bl _pxt_decr
    mov r0, r6   ; or pop the thread context 	; 0x800cd0c
    bl pxt::popThreadContext 	; 0x800cd0e
    mov r0, r7 ; restore result 	; 0x800cd12
    pop { r4, r5, r6, r7, pc} 	; 0x800cd14
    .section code
_pxt_stringConv: 	; 0x800cd16
    lsls r2, r0, #30 	; 0x800cd16
    bne .fail 	; 0x800cd18
    cmp r0, #0 	; 0x800cd1a
    beq .fail 	; 0x800cd1c
    ldr r3, [r0, #0] 	; 0x800cd1e
; vtable in R3
    ldrh r2, [r3, #8] 	; 0x800cd20
    cmp r2, #1 	; 0x800cd22
    bne .notstring 	; 0x800cd24
    bx lr 	; 0x800cd26
.notstring: 	; 0x800cd28
    ldr r7, [r3, #4*8] 	; 0x800cd28
    cmp r7, #0 	; 0x800cd2a
    beq .fail 	; 0x800cd2c
    push {r0, lr} 	; 0x800cd2e
    ;bl _pxt_incr
    movs r4, #1 	; 0x800cd30
    blx r7 	; 0x800cd32
    str r0, [sp, #0] 	; 0x800cd34
    ;mov r7, r0
    ;pop {r0}
    ;bl _pxt_decr
    ;mov r0, r7
    ;push {r7}
    b .numops 	; 0x800cd36
.fail: 	; 0x800cd38
    push {r0, lr} 	; 0x800cd38
.numops: 	; 0x800cd3a
    mov r7, sp 	; 0x800cd3a
    str r7, [r6, #4] 	; 0x800cd3c
    bl numops::toString 	; 0x800cd3e
    pop {r1, pc}       	; 0x800cd42
    ;mov r7, r0
    ;pop {r0}
    ;bl _pxt_decr
    ;mov r0, r7
    .section code
_pxt_array_get: 	; 0x800cd44
    lsls r4, r0, #30 	; 0x800cd44
    bne .fail 	; 0x800cd46
    cmp r0, #0 	; 0x800cd48
    beq .fail 	; 0x800cd4a
    ldr r3, [r0, #0] 	; 0x800cd4c
; vtable in R3
    ldrh r4, [r3, #8] 	; 0x800cd4e
    cmp r4, #6 	; 0x800cd50
    bne .fail 	; 0x800cd52
    asrs r1, r1, #1 	; 0x800cd54
    bcc .notint 	; 0x800cd56
    ldrh r4, [r0, #8] 	; 0x800cd58
    cmp r1, r4 	; 0x800cd5a
    bhs .oob 	; 0x800cd5c
    lsls r1, r1, #2 	; 0x800cd5e
    ldr r4, [r0, #4] 	; 0x800cd60
    ldr r0, [r4, r1] 	; 0x800cd62
    bx lr 	; 0x800cd64
.notint: 	; 0x800cd66
    lsls r1, r1, #1 	; 0x800cd66
    push {r0, r2} 	; 0x800cd68
    mov r0, r1 	; 0x800cd6a
    mov r7, sp 	; 0x800cd6c
    str r7, [r6, #4] 	; 0x800cd6e
    bl pxt::toInt 	; 0x800cd70
    mov r1, r0 	; 0x800cd74
    pop {r0, r2} 	; 0x800cd76
    push {lr} 	; 0x800cd78
    mov r7, sp 	; 0x800cd7a
    str r7, [r6, #4] 	; 0x800cd7c
    bl Array_::getAt 	; 0x800cd7e
    pop {pc} 	; 0x800cd82
.fail: 	; 0x800cd84
    bl pxt::failedCast 	; 0x800cd84
.oob: 	; 0x800cd88
    movs r0, #0 ; undefined 	; 0x800cd88
    bx lr 	; 0x800cd8a
    .section code
_pxt_array_set: 	; 0x800cd8c
    lsls r4, r0, #30 	; 0x800cd8c
    bne .fail 	; 0x800cd8e
    cmp r0, #0 	; 0x800cd90
    beq .fail 	; 0x800cd92
    ldr r3, [r0, #0] 	; 0x800cd94
; vtable in R3
    ldrh r4, [r3, #8] 	; 0x800cd96
    cmp r4, #6 	; 0x800cd98
    bne .fail 	; 0x800cd9a
    asrs r1, r1, #1 	; 0x800cd9c
    bcc .notint 	; 0x800cd9e
    ldrh r4, [r0, #8] 	; 0x800cda0
    cmp r1, r4 	; 0x800cda2
    bhs .oob 	; 0x800cda4
    lsls r1, r1, #2 	; 0x800cda6
    ldr r4, [r0, #4] 	; 0x800cda8
    str r2, [r4, r1] 	; 0x800cdaa
    bx lr 	; 0x800cdac
.notint: 	; 0x800cdae
    lsls r1, r1, #1 	; 0x800cdae
    push {r0, r2} 	; 0x800cdb0
    mov r0, r1 	; 0x800cdb2
    mov r7, sp 	; 0x800cdb4
    str r7, [r6, #4] 	; 0x800cdb6
    bl pxt::toInt 	; 0x800cdb8
    mov r1, r0 	; 0x800cdbc
    pop {r0, r2} 	; 0x800cdbe
.oob: 	; 0x800cdc0
    push {lr} 	; 0x800cdc0
    mov r7, sp 	; 0x800cdc2
    str r7, [r6, #4] 	; 0x800cdc4
    bl Array_::setAt 	; 0x800cdc6
    pop {pc} 	; 0x800cdca
.fail: 	; 0x800cdcc
    bl pxt::failedCast 	; 0x800cdcc
    .section code
_pxt_map_get: 	; 0x800cdd0
    lsls r4, r0, #30 	; 0x800cdd0
    bne .fail 	; 0x800cdd2
    cmp r0, #0 	; 0x800cdd4
    beq .fail 	; 0x800cdd6
    ldr r3, [r0, #0] 	; 0x800cdd8
; vtable in R3
    ldrh r4, [r3, #8] 	; 0x800cdda
    cmp r4, #8 	; 0x800cddc
    bne .notmap 	; 0x800cdde
    push {lr} 	; 0x800cde0
    mov r7, sp 	; 0x800cde2
    str r7, [r6, #4] 	; 0x800cde4
    bl pxtrt::mapGetByString 	; 0x800cde6
    pop {pc} 	; 0x800cdea
.notmap: 	; 0x800cdec
    mov r4, r3 ; save VT 	; 0x800cdec
    push {r0, lr} 	; 0x800cdee
    mov r0, r1 	; 0x800cdf0
    bl pxtrt::lookupMapKey 	; 0x800cdf2
    mov r1, r0 ; put key index in r1 	; 0x800cdf6
    ldr r0, [sp, #0] ; restore obj pointer 	; 0x800cdf8
    mov r3, r4 ; restore vt 	; 0x800cdfa
    bl .dowork 	; 0x800cdfc
    add sp, #4*1 ; pop locals 1 	; 0x800ce00
    pop {pc} 	; 0x800ce02
.dowork: 	; 0x800ce04
    ldr r2, [r3, #12] ; load mult 	; 0x800ce04
    movs r7, r2 	; 0x800ce06
    beq .objlit ; built-in types have mult=0 	; 0x800ce08
    muls r7, r1 	; 0x800ce0a
    lsrs r7, r2 	; 0x800ce0c
    lsls r7, r7, #1 ; r7 - hash offset 	; 0x800ce0e
    ldr r3, [r3, #4] ; iface table 	; 0x800ce10
    adds r3, r3, r7 	; 0x800ce12
; r0-this, r1-method idx, r2-free, r3-hash entry, r4-num args, r7-free
    ldrh r2, [r3, #0] ; r2-offset of descriptor 	; 0x800ce14
    ldrh r7, [r2, r3] ; r7-method idx 	; 0x800ce16
    cmp r7, r1 	; 0x800ce18
    beq .hit 	; 0x800ce1a
    adds r3, #2 	; 0x800ce1c
    ldrh r2, [r3, #0] ; r2-offset of descriptor 	; 0x800ce1e
    ldrh r7, [r2, r3] ; r7-method idx 	; 0x800ce20
    cmp r7, r1 	; 0x800ce22
    beq .hit 	; 0x800ce24
    adds r3, #2 	; 0x800ce26
    ldrh r2, [r3, #0] ; r2-offset of descriptor 	; 0x800ce28
    ldrh r7, [r2, r3] ; r7-method idx 	; 0x800ce2a
    cmp r7, r1 	; 0x800ce2c
    beq .hit 	; 0x800ce2e
    movs r0, #0 ; undefined 	; 0x800ce30
    bx lr 	; 0x800ce32
.hit: 	; 0x800ce34
    adds r3, r3, r2 ; r3-descriptor 	; 0x800ce34
    ldr r2, [r3, #4] 	; 0x800ce36
    lsls r7, r2, #31 	; 0x800ce38
    beq .field 	; 0x800ce3a
    movs r4, #1 	; 0x800ce3c
    bx r2 	; 0x800ce3e
.field: 	; 0x800ce40
    ldr r0, [r0, r2] ; load field 	; 0x800ce40
    bx lr 	; 0x800ce42
.objlit: 	; 0x800ce44
.fail: 	; 0x800ce44
    mov r7, sp 	; 0x800ce44
    str r7, [r6, #4] 	; 0x800ce46
    bl pxt::failedCast 	; 0x800ce48
.fail2: 	; 0x800ce4c
    mov r7, sp 	; 0x800ce4c
    str r7, [r6, #4] 	; 0x800ce4e
    bl pxt::missingProperty 	; 0x800ce50
    .section code
_pxt_map_set: 	; 0x800ce54
    lsls r4, r0, #30 	; 0x800ce54
    bne .fail 	; 0x800ce56
    cmp r0, #0 	; 0x800ce58
    beq .fail 	; 0x800ce5a
    ldr r3, [r0, #0] 	; 0x800ce5c
; vtable in R3
    ldrh r4, [r3, #8] 	; 0x800ce5e
    cmp r4, #8 	; 0x800ce60
    bne .notmap 	; 0x800ce62
    push {lr} 	; 0x800ce64
    mov r7, sp 	; 0x800ce66
    str r7, [r6, #4] 	; 0x800ce68
    bl pxtrt::mapSetByString 	; 0x800ce6a
    pop {pc} 	; 0x800ce6e
.notmap: 	; 0x800ce70
    mov r4, r3 ; save VT 	; 0x800ce70
    push {r0, r2, lr} 	; 0x800ce72
    mov r0, r1 	; 0x800ce74
    bl pxtrt::lookupMapKey 	; 0x800ce76
    mov r1, r0 ; put key index in r1 	; 0x800ce7a
    ldr r0, [sp, #0] ; restore obj pointer 	; 0x800ce7c
    mov r3, r4 ; restore vt 	; 0x800ce7e
    bl .dowork 	; 0x800ce80
    add sp, #4*2 ; pop locals 2 	; 0x800ce84
    pop {pc} 	; 0x800ce86
.dowork: 	; 0x800ce88
    ldr r2, [r3, #12] ; load mult 	; 0x800ce88
    movs r7, r2 	; 0x800ce8a
    beq .objlit ; built-in types have mult=0 	; 0x800ce8c
    muls r7, r1 	; 0x800ce8e
    lsrs r7, r2 	; 0x800ce90
    lsls r7, r7, #1 ; r7 - hash offset 	; 0x800ce92
    ldr r3, [r3, #4] ; iface table 	; 0x800ce94
    adds r3, r3, r7 	; 0x800ce96
; r0-this, r1-method idx, r2-free, r3-hash entry, r4-num args, r7-free
    ldrh r2, [r3, #0] ; r2-offset of descriptor 	; 0x800ce98
    ldrh r7, [r2, r3] ; r7-method idx 	; 0x800ce9a
    cmp r7, r1 	; 0x800ce9c
    beq .hit 	; 0x800ce9e
    adds r3, #2 	; 0x800cea0
    ldrh r2, [r3, #0] ; r2-offset of descriptor 	; 0x800cea2
    ldrh r7, [r2, r3] ; r7-method idx 	; 0x800cea4
    cmp r7, r1 	; 0x800cea6
    beq .hit 	; 0x800cea8
    adds r3, #2 	; 0x800ceaa
    ldrh r2, [r3, #0] ; r2-offset of descriptor 	; 0x800ceac
    ldrh r7, [r2, r3] ; r7-method idx 	; 0x800ceae
    cmp r7, r1 	; 0x800ceb0
    bne .fail2       	; 0x800ceb2
.hit: 	; 0x800ceb4
    adds r3, r3, r2 ; r3-descriptor 	; 0x800ceb4
    ldr r2, [r3, #4] 	; 0x800ceb6
    lsls r7, r2, #31 	; 0x800ceb8
    beq .field 	; 0x800ceba
; check for next descriptor
    ldrh r7, [r3, #8] 	; 0x800cebc
    cmp r7, r1 	; 0x800cebe
    bne .fail2 ; no setter! 	; 0x800cec0
    ldr r2, [r3, #12] 	; 0x800cec2
    movs r4, #2 	; 0x800cec4
    bx r2 	; 0x800cec6
.field: 	; 0x800cec8
    ldr r3, [sp, #4] ; ld-val 	; 0x800cec8
    str r3, [r0, r2] ; store field 	; 0x800ceca
    bx lr 	; 0x800cecc
.objlit: 	; 0x800cece
.fail: 	; 0x800cece
    mov r7, sp 	; 0x800cece
    str r7, [r6, #4] 	; 0x800ced0
    bl pxt::failedCast 	; 0x800ced2
.fail2: 	; 0x800ced6
    mov r7, sp 	; 0x800ced6
    str r7, [r6, #4] 	; 0x800ced8
    bl pxt::missingProperty 	; 0x800ceda
_code_end: 	; 0x800cede
    .section code
_inst_builtin4_validate_0: 	; 0x800cede
    lsls r2, r0, #30 	; 0x800cede
    bne .fail 	; 0x800cee0
    cmp r0, #0 	; 0x800cee2
    beq .fail 	; 0x800cee4
    ldr r3, [r0, #0] 	; 0x800cee6
; vtable in R3
    ldrh r2, [r3, #8] 	; 0x800cee8
    cmp r2, #4 	; 0x800ceea
    bne .fail 	; 0x800ceec
    bx lr 	; 0x800ceee
.fail: 	; 0x800cef0
    mov r7, sp 	; 0x800cef0
    str r7, [r6, #4] 	; 0x800cef2
    bl pxt::failedCast 	; 0x800cef4
    .section code
_conv_1: 	; 0x800cef8
    @stackmark args
    push {lr} 	; 0x800cef8
    ldr r0, [sp, #4*1] ; estack 	; 0x800cefa
    bl _inst_builtin4_validate_0 	; 0x800cefc
    pop {pc} 	; 0x800cf00
    @stackempty args
_numops_adds: 	; 0x800cf02
    @scope _numops_adds
    lsls r2, r0, #31 	; 0x800cf02
    beq .boxed 	; 0x800cf04
    lsls r2, r1, #31 	; 0x800cf06
    beq .boxed 	; 0x800cf08
    subs r2, r1, #1 	; 0x800cf0a
    adds r2, r0, r2 	; 0x800cf0c
    bvs .boxed 	; 0x800cf0e
    movs r0, r2 	; 0x800cf10
    blx lr 	; 0x800cf12
.boxed: 	; 0x800cf14
    push {lr, r0, r1}       	; 0x800cf14
                    mov r7, sp 	; 0x800cf16
    str r7, [r6, #4] 	; 0x800cf18
                    bl numops::adds 	; 0x800cf1a
                    add sp, #8 	; 0x800cf1e
                    pop {pc} 	; 0x800cf20
_numops_subs: 	; 0x800cf22
    @scope _numops_subs
    lsls r2, r0, #31 	; 0x800cf22
    beq .boxed 	; 0x800cf24
    lsls r2, r1, #31 	; 0x800cf26
    beq .boxed 	; 0x800cf28
    subs r2, r1, #1 	; 0x800cf2a
    subs r2, r0, r2 	; 0x800cf2c
    bvs .boxed 	; 0x800cf2e
    movs r0, r2 	; 0x800cf30
    blx lr 	; 0x800cf32
.boxed: 	; 0x800cf34
    push {lr, r0, r1}       	; 0x800cf34
                    mov r7, sp 	; 0x800cf36
    str r7, [r6, #4] 	; 0x800cf38
                    bl numops::subs 	; 0x800cf3a
                    add sp, #8 	; 0x800cf3e
                    pop {pc} 	; 0x800cf40
_numops_ands: 	; 0x800cf42
    @scope _numops_ands
    lsls r2, r0, #31 	; 0x800cf42
    beq .boxed 	; 0x800cf44
    lsls r2, r1, #31 	; 0x800cf46
    beq .boxed 	; 0x800cf48
    ands r0, r1 	; 0x800cf4a
    blx lr 	; 0x800cf4c
.boxed: 	; 0x800cf4e
    push {lr, r0, r1}       	; 0x800cf4e
                    mov r7, sp 	; 0x800cf50
    str r7, [r6, #4] 	; 0x800cf52
                    bl numops::ands 	; 0x800cf54
                    add sp, #8 	; 0x800cf58
                    pop {pc} 	; 0x800cf5a
_numops_orrs: 	; 0x800cf5c
    @scope _numops_orrs
    lsls r2, r0, #31 	; 0x800cf5c
    beq .boxed 	; 0x800cf5e
    lsls r2, r1, #31 	; 0x800cf60
    beq .boxed 	; 0x800cf62
    orrs r0, r1 	; 0x800cf64
    blx lr 	; 0x800cf66
.boxed: 	; 0x800cf68
    push {lr, r0, r1}       	; 0x800cf68
                    mov r7, sp 	; 0x800cf6a
    str r7, [r6, #4] 	; 0x800cf6c
                    bl numops::orrs 	; 0x800cf6e
                    add sp, #8 	; 0x800cf72
                    pop {pc} 	; 0x800cf74
_numops_eors: 	; 0x800cf76
    @scope _numops_eors
    lsls r2, r0, #31 	; 0x800cf76
    beq .boxed 	; 0x800cf78
    lsls r2, r1, #31 	; 0x800cf7a
    beq .boxed 	; 0x800cf7c
    eors r0, r1 	; 0x800cf7e
    adds r0, r0, #1 	; 0x800cf80
    blx lr 	; 0x800cf82
.boxed: 	; 0x800cf84
    push {lr, r0, r1}       	; 0x800cf84
                    mov r7, sp 	; 0x800cf86
    str r7, [r6, #4] 	; 0x800cf88
                    bl numops::eors 	; 0x800cf8a
                    add sp, #8 	; 0x800cf8e
                    pop {pc} 	; 0x800cf90
@scope _numops_toInt
_numops_toInt: 	; 0x800cf92
    asrs r0, r0, #1 	; 0x800cf92
    bcc .over 	; 0x800cf94
    blx lr 	; 0x800cf96
.over: 	; 0x800cf98
    lsls r0, r0, #1 	; 0x800cf98
    push {lr} 	; 0x800cf9a
mov r7, sp 	; 0x800cf9c
    str r7, [r6, #4] 	; 0x800cf9e
bl pxt::toInt 	; 0x800cfa0
pop {pc} 	; 0x800cfa4
_numops_fromInt: 	; 0x800cfa6
    lsls r2, r0, #1 	; 0x800cfa6
    asrs r1, r2, #1 	; 0x800cfa8
    cmp r0, r1 	; 0x800cfaa
    bne .over2 	; 0x800cfac
    adds r0, r2, #1 	; 0x800cfae
    blx lr 	; 0x800cfb0
.over2: 	; 0x800cfb2
    push {lr} 	; 0x800cfb2
mov r7, sp 	; 0x800cfb4
    str r7, [r6, #4] 	; 0x800cfb6
bl pxt::fromInt 	; 0x800cfb8
pop {pc} 	; 0x800cfbc
.balign 4
_ldlit_3: 	; 0x800cfc0
 .word 1000000
_ldlit_2: 	; 0x800cfc4
 .word inline__P223_Lit
.section code
_cmp_lt: 	; 0x800cfc8
    lsls r2, r0, #31 	; 0x800cfc8
    beq .boxed 	; 0x800cfca
    lsls r2, r1, #31 	; 0x800cfcc
    beq .boxed 	; 0x800cfce
    subs r0, r1 	; 0x800cfd0
    blt .true 	; 0x800cfd2
.false: 	; 0x800cfd4
    movs r0, #0 	; 0x800cfd4
    bx lr 	; 0x800cfd6
.true: 	; 0x800cfd8
    movs r0, #1 	; 0x800cfd8
    bx lr 	; 0x800cfda
.boxed: 	; 0x800cfdc
    push {lr, r0, r1}       	; 0x800cfdc
                    mov r7, sp 	; 0x800cfde
    str r7, [r6, #4] 	; 0x800cfe0
                        bl numops::lt 	; 0x800cfe2
                        bl numops::toBoolDecr 	; 0x800cfe6
                        cmp r0, #0 	; 0x800cfea
                    add sp, #8 	; 0x800cfec
                    pop {pc} 	; 0x800cfee
.section code
_cmp_gt: 	; 0x800cff0
    lsls r2, r0, #31 	; 0x800cff0
    beq .boxed 	; 0x800cff2
    lsls r2, r1, #31 	; 0x800cff4
    beq .boxed 	; 0x800cff6
    subs r0, r1 	; 0x800cff8
    bgt .true 	; 0x800cffa
.false: 	; 0x800cffc
    movs r0, #0 	; 0x800cffc
    bx lr 	; 0x800cffe
.true: 	; 0x800d000
    movs r0, #1 	; 0x800d000
    bx lr 	; 0x800d002
.boxed: 	; 0x800d004
    push {lr, r0, r1}       	; 0x800d004
                    mov r7, sp 	; 0x800d006
    str r7, [r6, #4] 	; 0x800d008
                        bl numops::gt 	; 0x800d00a
                        bl numops::toBoolDecr 	; 0x800d00e
                        cmp r0, #0 	; 0x800d012
                    add sp, #8 	; 0x800d014
                    pop {pc} 	; 0x800d016
.section code
_cmp_le: 	; 0x800d018
    lsls r2, r0, #31 	; 0x800d018
    beq .boxed 	; 0x800d01a
    lsls r2, r1, #31 	; 0x800d01c
    beq .boxed 	; 0x800d01e
    subs r0, r1 	; 0x800d020
    ble .true 	; 0x800d022
.false: 	; 0x800d024
    movs r0, #0 	; 0x800d024
    bx lr 	; 0x800d026
.true: 	; 0x800d028
    movs r0, #1 	; 0x800d028
    bx lr 	; 0x800d02a
.boxed: 	; 0x800d02c
    push {lr, r0, r1}       	; 0x800d02c
                    mov r7, sp 	; 0x800d02e
    str r7, [r6, #4] 	; 0x800d030
                        bl numops::le 	; 0x800d032
                        bl numops::toBoolDecr 	; 0x800d036
                        cmp r0, #0 	; 0x800d03a
                    add sp, #8 	; 0x800d03c
                    pop {pc} 	; 0x800d03e
.section code
_cmp_ge: 	; 0x800d040
    lsls r2, r0, #31 	; 0x800d040
    beq .boxed 	; 0x800d042
    lsls r2, r1, #31 	; 0x800d044
    beq .boxed 	; 0x800d046
    subs r0, r1 	; 0x800d048
    bge .true 	; 0x800d04a
.false: 	; 0x800d04c
    movs r0, #0 	; 0x800d04c
    bx lr 	; 0x800d04e
.true: 	; 0x800d050
    movs r0, #1 	; 0x800d050
    bx lr 	; 0x800d052
.boxed: 	; 0x800d054
    push {lr, r0, r1}       	; 0x800d054
                    mov r7, sp 	; 0x800d056
    str r7, [r6, #4] 	; 0x800d058
                        bl numops::ge 	; 0x800d05a
                        bl numops::toBoolDecr 	; 0x800d05e
                        cmp r0, #0 	; 0x800d062
                    add sp, #8 	; 0x800d064
                    pop {pc} 	; 0x800d066
.section code
_cmp_eq: 	; 0x800d068
    lsls r2, r0, #31 	; 0x800d068
    beq .boxed 	; 0x800d06a
    lsls r2, r1, #31 	; 0x800d06c
    beq .boxed 	; 0x800d06e
    subs r0, r1 	; 0x800d070
    beq .true 	; 0x800d072
.false: 	; 0x800d074
    movs r0, #0 	; 0x800d074
    bx lr 	; 0x800d076
.true: 	; 0x800d078
    movs r0, #1 	; 0x800d078
    bx lr 	; 0x800d07a
.boxed: 	; 0x800d07c
    push {lr, r0, r1}       	; 0x800d07c
                    mov r7, sp 	; 0x800d07e
    str r7, [r6, #4] 	; 0x800d080
                        bl numops::eq 	; 0x800d082
                        bl numops::toBoolDecr 	; 0x800d086
                        cmp r0, #0 	; 0x800d08a
                    add sp, #8 	; 0x800d08c
                    pop {pc} 	; 0x800d08e
.section code
_cmp_eqq: 	; 0x800d090
    lsls r2, r0, #31 	; 0x800d090
    beq .boxed 	; 0x800d092
    lsls r2, r1, #31 	; 0x800d094
    beq .boxed 	; 0x800d096
    subs r0, r1 	; 0x800d098
    beq .true 	; 0x800d09a
.false: 	; 0x800d09c
    movs r0, #0 	; 0x800d09c
    bx lr 	; 0x800d09e
.true: 	; 0x800d0a0
    movs r0, #1 	; 0x800d0a0
    bx lr 	; 0x800d0a2
.boxed: 	; 0x800d0a4
    push {lr, r0, r1}       	; 0x800d0a4
                    mov r7, sp 	; 0x800d0a6
    str r7, [r6, #4] 	; 0x800d0a8
                        bl numops::eqq 	; 0x800d0aa
                        bl numops::toBoolDecr 	; 0x800d0ae
                        cmp r0, #0 	; 0x800d0b2
                    add sp, #8 	; 0x800d0b4
                    pop {pc} 	; 0x800d0b6
.section code
_cmp_neq: 	; 0x800d0b8
    lsls r2, r0, #31 	; 0x800d0b8
    beq .boxed 	; 0x800d0ba
    lsls r2, r1, #31 	; 0x800d0bc
    beq .boxed 	; 0x800d0be
    subs r0, r1 	; 0x800d0c0
    bne .true 	; 0x800d0c2
.false: 	; 0x800d0c4
    movs r0, #0 	; 0x800d0c4
    bx lr 	; 0x800d0c6
.true: 	; 0x800d0c8
    movs r0, #1 	; 0x800d0c8
    bx lr 	; 0x800d0ca
.boxed: 	; 0x800d0cc
    push {lr, r0, r1}       	; 0x800d0cc
                    mov r7, sp 	; 0x800d0ce
    str r7, [r6, #4] 	; 0x800d0d0
                        bl numops::neq 	; 0x800d0d2
                        bl numops::toBoolDecr 	; 0x800d0d6
                        cmp r0, #0 	; 0x800d0da
                    add sp, #8 	; 0x800d0dc
                    pop {pc} 	; 0x800d0de
.section code
_cmp_neqq: 	; 0x800d0e0
    lsls r2, r0, #31 	; 0x800d0e0
    beq .boxed 	; 0x800d0e2
    lsls r2, r1, #31 	; 0x800d0e4
    beq .boxed 	; 0x800d0e6
    subs r0, r1 	; 0x800d0e8
    bne .true 	; 0x800d0ea
.false: 	; 0x800d0ec
    movs r0, #0 	; 0x800d0ec
    bx lr 	; 0x800d0ee
.true: 	; 0x800d0f0
    movs r0, #1 	; 0x800d0f0
    bx lr 	; 0x800d0f2
.boxed: 	; 0x800d0f4
    push {lr, r0, r1}       	; 0x800d0f4
                    mov r7, sp 	; 0x800d0f6
    str r7, [r6, #4] 	; 0x800d0f8
                        bl numops::neqq 	; 0x800d0fa
                        bl numops::toBoolDecr 	; 0x800d0fe
                        cmp r0, #0 	; 0x800d102
                    add sp, #8 	; 0x800d104
                    pop {pc} 	; 0x800d106
_helpers_end: 	; 0x800d108
.balign 4
_pxt_iface_member_names: 	; 0x800d108
    .word 1
    .word _str1meta  ; 0 .
    .word 0
_vtables_end: 	; 0x800d114
.balign 4
_pxt_config_data: 	; 0x800d114
    .word 100, 0  ; PIN_PA0=0
    .word 101, 1  ; PIN_PA1=1
    .word 102, 2  ; PIN_PA2=2
    .word 103, 3  ; PIN_PA3=3
    .word 104, 4  ; PIN_PA4=4
    .word 13, 122  ; PIN_LED=122
    .word 105, 94  ; PIN_SCL1=94
    .word 106, 95  ; PIN_SDA1=95
    .word 107, 102  ; PIN_NSS1=102
    .word 108, 103  ; PIN_SCK1=103
    .word 109, 104  ; PIN_MISO1=104
    .word 110, 105  ; PIN_MOSI1=105
    .word 111, 81  ; PIN_TX2=81
    .word 112, 82  ; PIN_RX2=82
    .word 0
.balign 4
_str1meta: 	; 0x800d188
 .word pxt::string_vt
        .short 0
_str1: 	; 0x800d18e
 .string ""
.balign 4
.section code
_pxt_perf_counters: 	; 0x800d190
    .word 0
_literals_end: 	; 0x800d194
    .balign 16
_stored_program: .string "..."
