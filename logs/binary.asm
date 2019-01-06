; Interface tables: 0/0 (NaN%)
; Virtual methods: 0 / 0
; generated code sizes (bytes): 1428 (incl. 734 user, 554 helpers, 12 vtables, 128 lits); src size 896
; assembly: 982 lines; density: 104.86 bytes/stmt; (7 stmts)
; total bytes: 55316 (42.2% of 128.0k flash with 75756 free)
; peep hole pass: 17 instructions removed and 15 updated
; peep hole pass: 0 instructions removed and 0 updated


; start
    .startaddr 0x800cf00
    .hex 708E3B92C615A841C49866C975EE5197 ; magic number
    .hex 26B80828C3F59243 ; hex template hash
    .hex 0CCAC408692FF0C2 ; program hash
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
_main___P1_Lit: 	; 0x800cf40
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word _main___P1_args@fn
_main___P1_args: 	; 0x800cf4c
    .section code
_main___P1: 	; 0x800cf4c
_main___P1_nochk: 	; 0x800cf4c
    @stackmark func
    @stackmark args
    push {lr} 	; 0x800cf4c
.locals: 	; 0x800cf4e
    @stackmark locals
_main___P1_locals: 	; 0x800cf4e
    movs r0, #0 	; 0x800cf4e
    ldr r7, [r6, #0] 	; 0x800cf50
    str r0, [r7, #4] 	; 0x800cf52
    @stackempty locals
    ldr r0, _ldlit_2       	; 0x800cf54
    push {r0} ; proc-arg 	; 0x800cf56
    bl forever__P122 	; 0x800cf58
_proccall0: 	; 0x800cf5c
    add sp, #4*1 ; pop locals 1 	; 0x800cf5c
    @stackempty locals
.ret.1: 	; 0x800cf5e
    @stackempty locals
_main___P1_end: 	; 0x800cf5e
    pop {pc} 	; 0x800cf5e
    @stackempty func
    @stackempty args
; endfun
    ;
; Function inline main.ts:1
    ;
    .section code
    .balign 4
inline__P223_Lit: 	; 0x800cf60
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word inline__P223_args@fn
inline__P223_args: 	; 0x800cf6c
    .section code
inline__P223: 	; 0x800cf6c
inline__P223_nochk: 	; 0x800cf6c
    @stackmark func
    @stackmark args
    push {lr} 	; 0x800cf6c
.locals: 	; 0x800cf6e
    @stackmark locals
inline__P223_locals: 	; 0x800cf6e
    movs r0, #122 	; 0x800cf6e
    mov r7, sp 	; 0x800cf70
    str r7, [r6, #4] 	; 0x800cf72
    bl pxt::getPin 	; 0x800cf74
    push {r0} ; proc-arg 	; 0x800cf78
    movs r0, #10 	; 0x800cf7a
    mov r7, sp 	; 0x800cf7c
    str r7, [r6, #4] 	; 0x800cf7e
    bl numops::toBoolDecr 	; 0x800cf80
    push {r0} ; proc-arg 	; 0x800cf84
    ldr r0, [sp, #4*1] ; estack 	; 0x800cf86
    ldr r1, [sp, #4*0] ; estack 	; 0x800cf88
    mov r7, sp 	; 0x800cf8a
    str r7, [r6, #4] 	; 0x800cf8c
    bl DigitalInOutPinMethods::digitalWrite 	; 0x800cf8e
    add sp, #4*2 ; pop locals 2 	; 0x800cf92
    @stackempty locals
    ldr r0, _ldlit_3       	; 0x800cf94
    mov r7, sp 	; 0x800cf96
    str r7, [r6, #4] 	; 0x800cf98
    bl control::waitMicros 	; 0x800cf9a
    @stackempty locals
    movs r0, #122 	; 0x800cf9e
    mov r7, sp 	; 0x800cfa0
    str r7, [r6, #4] 	; 0x800cfa2
    bl pxt::getPin 	; 0x800cfa4
    push {r0} ; proc-arg 	; 0x800cfa8
    movs r0, #66 	; 0x800cfaa
    mov r7, sp 	; 0x800cfac
    str r7, [r6, #4] 	; 0x800cfae
    bl numops::toBoolDecr 	; 0x800cfb0
    push {r0} ; proc-arg 	; 0x800cfb4
    ldr r0, [sp, #4*1] ; estack 	; 0x800cfb6
    ldr r1, [sp, #4*0] ; estack 	; 0x800cfb8
    mov r7, sp 	; 0x800cfba
    str r7, [r6, #4] 	; 0x800cfbc
    bl DigitalInOutPinMethods::digitalWrite 	; 0x800cfbe
    add sp, #4*2 ; pop locals 2 	; 0x800cfc2
    @stackempty locals
    ldr r0, _ldlit_3       	; 0x800cfc4
    mov r7, sp 	; 0x800cfc6
    str r7, [r6, #4] 	; 0x800cfc8
    bl control::waitMicros 	; 0x800cfca
    @stackempty locals
.ret.223: 	; 0x800cfce
    @stackempty locals
inline__P223_end: 	; 0x800cfce
    pop {pc} 	; 0x800cfce
    @stackempty func
    @stackempty args
; endfun
    ;
; Function forever base/control.ts:204
    ;
    .section code
    .balign 4
    .section code
forever__P122: 	; 0x800cfd0
forever__P122_nochk: 	; 0x800cfd0
    @stackmark func
    @stackmark args
    push {lr} 	; 0x800cfd0
.locals: 	; 0x800cfd2
    @stackmark locals
forever__P122_locals: 	; 0x800cfd2
    ldr r0, [sp, args@0] 	; 0x800cfd2
    push {r0} ; proc-arg 	; 0x800cfd4
    bl _conv_1 	; 0x800cfd6
    mov r7, sp 	; 0x800cfda
    str r7, [r6, #4] 	; 0x800cfdc
    bl loops::forever 	; 0x800cfde
    add sp, #4*1 ; pop locals 1 	; 0x800cfe2
    @stackempty locals
.ret.122: 	; 0x800cfe4
    @stackempty locals
forever__P122_end: 	; 0x800cfe4
    pop {pc} 	; 0x800cfe4
    @stackempty func
    @stackempty args
; endfun
    .section code
_pxt_lambda_trampoline: 	; 0x800cfe6
    push { r4, r5, r6, r7, lr} 	; 0x800cfe6
    mov r4, r1 	; 0x800cfe8
    mov r5, r2 	; 0x800cfea
    mov r6, r3 	; 0x800cfec
    mov r7, r0 	; 0x800cfee
    bl _inst_builtin4_validate_0 	; 0x800cff0
    mov r0, sp 	; 0x800cff4
    push {r4, r5, r6, r7} ; push args and the lambda 	; 0x800cff6
    mov r1, sp 	; 0x800cff8
    bl pxt::pushThreadContext 	; 0x800cffa
    ;bl pxtrt::getGlobalsPtr
    mov r6, r0          ; save ctx or globals 	; 0x800cffe
    mov r5, r7          ; save lambda for closure 	; 0x800d000
    ;mov r0, r7
    ;bl _pxt_incr        ; make sure lambda stays alive
    ldr r0, [r5, #8]    ; ld fnptr 	; 0x800d002
    movs r4, #3         ; 3 args 	; 0x800d004
    blx r0              ; execute the actual lambda 	; 0x800d006
    mov r7, r0          ; save result 	; 0x800d008
    @dummystack 4
    add sp, #4*4        ; remove arguments and lambda 	; 0x800d00a
    ;mov r0, r5   ; decrement lambda
    ;bl _pxt_decr
    mov r0, r6   ; or pop the thread context 	; 0x800d00c
    bl pxt::popThreadContext 	; 0x800d00e
    mov r0, r7 ; restore result 	; 0x800d012
    pop { r4, r5, r6, r7, pc} 	; 0x800d014
    .section code
_pxt_stringConv: 	; 0x800d016
    lsls r2, r0, #30 	; 0x800d016
    bne .fail 	; 0x800d018
    cmp r0, #0 	; 0x800d01a
    beq .fail 	; 0x800d01c
    ldr r3, [r0, #0] 	; 0x800d01e
; vtable in R3
    ldrh r2, [r3, #8] 	; 0x800d020
    cmp r2, #1 	; 0x800d022
    bne .notstring 	; 0x800d024
    bx lr 	; 0x800d026
.notstring: 	; 0x800d028
    ldr r7, [r3, #4*8] 	; 0x800d028
    cmp r7, #0 	; 0x800d02a
    beq .fail 	; 0x800d02c
    push {r0, lr} 	; 0x800d02e
    ;bl _pxt_incr
    movs r4, #1 	; 0x800d030
    blx r7 	; 0x800d032
    str r0, [sp, #0] 	; 0x800d034
    ;mov r7, r0
    ;pop {r0}
    ;bl _pxt_decr
    ;mov r0, r7
    ;push {r7}
    b .numops 	; 0x800d036
.fail: 	; 0x800d038
    push {r0, lr} 	; 0x800d038
.numops: 	; 0x800d03a
    mov r7, sp 	; 0x800d03a
    str r7, [r6, #4] 	; 0x800d03c
    bl numops::toString 	; 0x800d03e
    pop {r1, pc}       	; 0x800d042
    ;mov r7, r0
    ;pop {r0}
    ;bl _pxt_decr
    ;mov r0, r7
    .section code
_pxt_array_get: 	; 0x800d044
    lsls r4, r0, #30 	; 0x800d044
    bne .fail 	; 0x800d046
    cmp r0, #0 	; 0x800d048
    beq .fail 	; 0x800d04a
    ldr r3, [r0, #0] 	; 0x800d04c
; vtable in R3
    ldrh r4, [r3, #8] 	; 0x800d04e
    cmp r4, #6 	; 0x800d050
    bne .fail 	; 0x800d052
    asrs r1, r1, #1 	; 0x800d054
    bcc .notint 	; 0x800d056
    ldrh r4, [r0, #8] 	; 0x800d058
    cmp r1, r4 	; 0x800d05a
    bhs .oob 	; 0x800d05c
    lsls r1, r1, #2 	; 0x800d05e
    ldr r4, [r0, #4] 	; 0x800d060
    ldr r0, [r4, r1] 	; 0x800d062
    bx lr 	; 0x800d064
.notint: 	; 0x800d066
    lsls r1, r1, #1 	; 0x800d066
    push {r0, r2} 	; 0x800d068
    mov r0, r1 	; 0x800d06a
    mov r7, sp 	; 0x800d06c
    str r7, [r6, #4] 	; 0x800d06e
    bl pxt::toInt 	; 0x800d070
    mov r1, r0 	; 0x800d074
    pop {r0, r2} 	; 0x800d076
    push {lr} 	; 0x800d078
    mov r7, sp 	; 0x800d07a
    str r7, [r6, #4] 	; 0x800d07c
    bl Array_::getAt 	; 0x800d07e
    pop {pc} 	; 0x800d082
.fail: 	; 0x800d084
    bl pxt::failedCast 	; 0x800d084
.oob: 	; 0x800d088
    movs r0, #0 ; undefined 	; 0x800d088
    bx lr 	; 0x800d08a
    .section code
_pxt_array_set: 	; 0x800d08c
    lsls r4, r0, #30 	; 0x800d08c
    bne .fail 	; 0x800d08e
    cmp r0, #0 	; 0x800d090
    beq .fail 	; 0x800d092
    ldr r3, [r0, #0] 	; 0x800d094
; vtable in R3
    ldrh r4, [r3, #8] 	; 0x800d096
    cmp r4, #6 	; 0x800d098
    bne .fail 	; 0x800d09a
    asrs r1, r1, #1 	; 0x800d09c
    bcc .notint 	; 0x800d09e
    ldrh r4, [r0, #8] 	; 0x800d0a0
    cmp r1, r4 	; 0x800d0a2
    bhs .oob 	; 0x800d0a4
    lsls r1, r1, #2 	; 0x800d0a6
    ldr r4, [r0, #4] 	; 0x800d0a8
    str r2, [r4, r1] 	; 0x800d0aa
    bx lr 	; 0x800d0ac
.notint: 	; 0x800d0ae
    lsls r1, r1, #1 	; 0x800d0ae
    push {r0, r2} 	; 0x800d0b0
    mov r0, r1 	; 0x800d0b2
    mov r7, sp 	; 0x800d0b4
    str r7, [r6, #4] 	; 0x800d0b6
    bl pxt::toInt 	; 0x800d0b8
    mov r1, r0 	; 0x800d0bc
    pop {r0, r2} 	; 0x800d0be
.oob: 	; 0x800d0c0
    push {lr} 	; 0x800d0c0
    mov r7, sp 	; 0x800d0c2
    str r7, [r6, #4] 	; 0x800d0c4
    bl Array_::setAt 	; 0x800d0c6
    pop {pc} 	; 0x800d0ca
.fail: 	; 0x800d0cc
    bl pxt::failedCast 	; 0x800d0cc
    .section code
_pxt_map_get: 	; 0x800d0d0
    lsls r4, r0, #30 	; 0x800d0d0
    bne .fail 	; 0x800d0d2
    cmp r0, #0 	; 0x800d0d4
    beq .fail 	; 0x800d0d6
    ldr r3, [r0, #0] 	; 0x800d0d8
; vtable in R3
    ldrh r4, [r3, #8] 	; 0x800d0da
    cmp r4, #8 	; 0x800d0dc
    bne .notmap 	; 0x800d0de
    push {lr} 	; 0x800d0e0
    mov r7, sp 	; 0x800d0e2
    str r7, [r6, #4] 	; 0x800d0e4
    bl pxtrt::mapGetByString 	; 0x800d0e6
    pop {pc} 	; 0x800d0ea
.notmap: 	; 0x800d0ec
    mov r4, r3 ; save VT 	; 0x800d0ec
    push {r0, lr} 	; 0x800d0ee
    mov r0, r1 	; 0x800d0f0
    bl pxtrt::lookupMapKey 	; 0x800d0f2
    mov r1, r0 ; put key index in r1 	; 0x800d0f6
    ldr r0, [sp, #0] ; restore obj pointer 	; 0x800d0f8
    mov r3, r4 ; restore vt 	; 0x800d0fa
    bl .dowork 	; 0x800d0fc
    add sp, #4*1 ; pop locals 1 	; 0x800d100
    pop {pc} 	; 0x800d102
.dowork: 	; 0x800d104
    ldr r2, [r3, #12] ; load mult 	; 0x800d104
    movs r7, r2 	; 0x800d106
    beq .objlit ; built-in types have mult=0 	; 0x800d108
    muls r7, r1 	; 0x800d10a
    lsrs r7, r2 	; 0x800d10c
    lsls r7, r7, #1 ; r7 - hash offset 	; 0x800d10e
    ldr r3, [r3, #4] ; iface table 	; 0x800d110
    adds r3, r3, r7 	; 0x800d112
; r0-this, r1-method idx, r2-free, r3-hash entry, r4-num args, r7-free
    ldrh r2, [r3, #0] ; r2-offset of descriptor 	; 0x800d114
    ldrh r7, [r2, r3] ; r7-method idx 	; 0x800d116
    cmp r7, r1 	; 0x800d118
    beq .hit 	; 0x800d11a
    adds r3, #2 	; 0x800d11c
    ldrh r2, [r3, #0] ; r2-offset of descriptor 	; 0x800d11e
    ldrh r7, [r2, r3] ; r7-method idx 	; 0x800d120
    cmp r7, r1 	; 0x800d122
    beq .hit 	; 0x800d124
    adds r3, #2 	; 0x800d126
    ldrh r2, [r3, #0] ; r2-offset of descriptor 	; 0x800d128
    ldrh r7, [r2, r3] ; r7-method idx 	; 0x800d12a
    cmp r7, r1 	; 0x800d12c
    beq .hit 	; 0x800d12e
    movs r0, #0 ; undefined 	; 0x800d130
    bx lr 	; 0x800d132
.hit: 	; 0x800d134
    adds r3, r3, r2 ; r3-descriptor 	; 0x800d134
    ldr r2, [r3, #4] 	; 0x800d136
    lsls r7, r2, #31 	; 0x800d138
    beq .field 	; 0x800d13a
    movs r4, #1 	; 0x800d13c
    bx r2 	; 0x800d13e
.field: 	; 0x800d140
    ldr r0, [r0, r2] ; load field 	; 0x800d140
    bx lr 	; 0x800d142
.objlit: 	; 0x800d144
.fail: 	; 0x800d144
    mov r7, sp 	; 0x800d144
    str r7, [r6, #4] 	; 0x800d146
    bl pxt::failedCast 	; 0x800d148
.fail2: 	; 0x800d14c
    mov r7, sp 	; 0x800d14c
    str r7, [r6, #4] 	; 0x800d14e
    bl pxt::missingProperty 	; 0x800d150
    .section code
_pxt_map_set: 	; 0x800d154
    lsls r4, r0, #30 	; 0x800d154
    bne .fail 	; 0x800d156
    cmp r0, #0 	; 0x800d158
    beq .fail 	; 0x800d15a
    ldr r3, [r0, #0] 	; 0x800d15c
; vtable in R3
    ldrh r4, [r3, #8] 	; 0x800d15e
    cmp r4, #8 	; 0x800d160
    bne .notmap 	; 0x800d162
    push {lr} 	; 0x800d164
    mov r7, sp 	; 0x800d166
    str r7, [r6, #4] 	; 0x800d168
    bl pxtrt::mapSetByString 	; 0x800d16a
    pop {pc} 	; 0x800d16e
.notmap: 	; 0x800d170
    mov r4, r3 ; save VT 	; 0x800d170
    push {r0, r2, lr} 	; 0x800d172
    mov r0, r1 	; 0x800d174
    bl pxtrt::lookupMapKey 	; 0x800d176
    mov r1, r0 ; put key index in r1 	; 0x800d17a
    ldr r0, [sp, #0] ; restore obj pointer 	; 0x800d17c
    mov r3, r4 ; restore vt 	; 0x800d17e
    bl .dowork 	; 0x800d180
    add sp, #4*2 ; pop locals 2 	; 0x800d184
    pop {pc} 	; 0x800d186
.dowork: 	; 0x800d188
    ldr r2, [r3, #12] ; load mult 	; 0x800d188
    movs r7, r2 	; 0x800d18a
    beq .objlit ; built-in types have mult=0 	; 0x800d18c
    muls r7, r1 	; 0x800d18e
    lsrs r7, r2 	; 0x800d190
    lsls r7, r7, #1 ; r7 - hash offset 	; 0x800d192
    ldr r3, [r3, #4] ; iface table 	; 0x800d194
    adds r3, r3, r7 	; 0x800d196
; r0-this, r1-method idx, r2-free, r3-hash entry, r4-num args, r7-free
    ldrh r2, [r3, #0] ; r2-offset of descriptor 	; 0x800d198
    ldrh r7, [r2, r3] ; r7-method idx 	; 0x800d19a
    cmp r7, r1 	; 0x800d19c
    beq .hit 	; 0x800d19e
    adds r3, #2 	; 0x800d1a0
    ldrh r2, [r3, #0] ; r2-offset of descriptor 	; 0x800d1a2
    ldrh r7, [r2, r3] ; r7-method idx 	; 0x800d1a4
    cmp r7, r1 	; 0x800d1a6
    beq .hit 	; 0x800d1a8
    adds r3, #2 	; 0x800d1aa
    ldrh r2, [r3, #0] ; r2-offset of descriptor 	; 0x800d1ac
    ldrh r7, [r2, r3] ; r7-method idx 	; 0x800d1ae
    cmp r7, r1 	; 0x800d1b0
    bne .fail2       	; 0x800d1b2
.hit: 	; 0x800d1b4
    adds r3, r3, r2 ; r3-descriptor 	; 0x800d1b4
    ldr r2, [r3, #4] 	; 0x800d1b6
    lsls r7, r2, #31 	; 0x800d1b8
    beq .field 	; 0x800d1ba
; check for next descriptor
    ldrh r7, [r3, #8] 	; 0x800d1bc
    cmp r7, r1 	; 0x800d1be
    bne .fail2 ; no setter! 	; 0x800d1c0
    ldr r2, [r3, #12] 	; 0x800d1c2
    movs r4, #2 	; 0x800d1c4
    bx r2 	; 0x800d1c6
.field: 	; 0x800d1c8
    ldr r3, [sp, #4] ; ld-val 	; 0x800d1c8
    str r3, [r0, r2] ; store field 	; 0x800d1ca
    bx lr 	; 0x800d1cc
.objlit: 	; 0x800d1ce
.fail: 	; 0x800d1ce
    mov r7, sp 	; 0x800d1ce
    str r7, [r6, #4] 	; 0x800d1d0
    bl pxt::failedCast 	; 0x800d1d2
.fail2: 	; 0x800d1d6
    mov r7, sp 	; 0x800d1d6
    str r7, [r6, #4] 	; 0x800d1d8
    bl pxt::missingProperty 	; 0x800d1da
_code_end: 	; 0x800d1de
    .section code
_inst_builtin4_validate_0: 	; 0x800d1de
    lsls r2, r0, #30 	; 0x800d1de
    bne .fail 	; 0x800d1e0
    cmp r0, #0 	; 0x800d1e2
    beq .fail 	; 0x800d1e4
    ldr r3, [r0, #0] 	; 0x800d1e6
; vtable in R3
    ldrh r2, [r3, #8] 	; 0x800d1e8
    cmp r2, #4 	; 0x800d1ea
    bne .fail 	; 0x800d1ec
    bx lr 	; 0x800d1ee
.fail: 	; 0x800d1f0
    mov r7, sp 	; 0x800d1f0
    str r7, [r6, #4] 	; 0x800d1f2
    bl pxt::failedCast 	; 0x800d1f4
    .section code
_conv_1: 	; 0x800d1f8
    @stackmark args
    push {lr} 	; 0x800d1f8
    ldr r0, [sp, #4*1] ; estack 	; 0x800d1fa
    bl _inst_builtin4_validate_0 	; 0x800d1fc
    pop {pc} 	; 0x800d200
    @stackempty args
_numops_adds: 	; 0x800d202
    @scope _numops_adds
    lsls r2, r0, #31 	; 0x800d202
    beq .boxed 	; 0x800d204
    lsls r2, r1, #31 	; 0x800d206
    beq .boxed 	; 0x800d208
    subs r2, r1, #1 	; 0x800d20a
    adds r2, r0, r2 	; 0x800d20c
    bvs .boxed 	; 0x800d20e
    movs r0, r2 	; 0x800d210
    blx lr 	; 0x800d212
.boxed: 	; 0x800d214
    push {lr, r0, r1}       	; 0x800d214
                    mov r7, sp 	; 0x800d216
    str r7, [r6, #4] 	; 0x800d218
                    bl numops::adds 	; 0x800d21a
                    add sp, #8 	; 0x800d21e
                    pop {pc} 	; 0x800d220
_numops_subs: 	; 0x800d222
    @scope _numops_subs
    lsls r2, r0, #31 	; 0x800d222
    beq .boxed 	; 0x800d224
    lsls r2, r1, #31 	; 0x800d226
    beq .boxed 	; 0x800d228
    subs r2, r1, #1 	; 0x800d22a
    subs r2, r0, r2 	; 0x800d22c
    bvs .boxed 	; 0x800d22e
    movs r0, r2 	; 0x800d230
    blx lr 	; 0x800d232
.boxed: 	; 0x800d234
    push {lr, r0, r1}       	; 0x800d234
                    mov r7, sp 	; 0x800d236
    str r7, [r6, #4] 	; 0x800d238
                    bl numops::subs 	; 0x800d23a
                    add sp, #8 	; 0x800d23e
                    pop {pc} 	; 0x800d240
_numops_ands: 	; 0x800d242
    @scope _numops_ands
    lsls r2, r0, #31 	; 0x800d242
    beq .boxed 	; 0x800d244
    lsls r2, r1, #31 	; 0x800d246
    beq .boxed 	; 0x800d248
    ands r0, r1 	; 0x800d24a
    blx lr 	; 0x800d24c
.boxed: 	; 0x800d24e
    push {lr, r0, r1}       	; 0x800d24e
                    mov r7, sp 	; 0x800d250
    str r7, [r6, #4] 	; 0x800d252
                    bl numops::ands 	; 0x800d254
                    add sp, #8 	; 0x800d258
                    pop {pc} 	; 0x800d25a
_numops_orrs: 	; 0x800d25c
    @scope _numops_orrs
    lsls r2, r0, #31 	; 0x800d25c
    beq .boxed 	; 0x800d25e
    lsls r2, r1, #31 	; 0x800d260
    beq .boxed 	; 0x800d262
    orrs r0, r1 	; 0x800d264
    blx lr 	; 0x800d266
.boxed: 	; 0x800d268
    push {lr, r0, r1}       	; 0x800d268
                    mov r7, sp 	; 0x800d26a
    str r7, [r6, #4] 	; 0x800d26c
                    bl numops::orrs 	; 0x800d26e
                    add sp, #8 	; 0x800d272
                    pop {pc} 	; 0x800d274
_numops_eors: 	; 0x800d276
    @scope _numops_eors
    lsls r2, r0, #31 	; 0x800d276
    beq .boxed 	; 0x800d278
    lsls r2, r1, #31 	; 0x800d27a
    beq .boxed 	; 0x800d27c
    eors r0, r1 	; 0x800d27e
    adds r0, r0, #1 	; 0x800d280
    blx lr 	; 0x800d282
.boxed: 	; 0x800d284
    push {lr, r0, r1}       	; 0x800d284
                    mov r7, sp 	; 0x800d286
    str r7, [r6, #4] 	; 0x800d288
                    bl numops::eors 	; 0x800d28a
                    add sp, #8 	; 0x800d28e
                    pop {pc} 	; 0x800d290
@scope _numops_toInt
_numops_toInt: 	; 0x800d292
    asrs r0, r0, #1 	; 0x800d292
    bcc .over 	; 0x800d294
    blx lr 	; 0x800d296
.over: 	; 0x800d298
    lsls r0, r0, #1 	; 0x800d298
    push {lr} 	; 0x800d29a
mov r7, sp 	; 0x800d29c
    str r7, [r6, #4] 	; 0x800d29e
bl pxt::toInt 	; 0x800d2a0
pop {pc} 	; 0x800d2a4
_numops_fromInt: 	; 0x800d2a6
    lsls r2, r0, #1 	; 0x800d2a6
    asrs r1, r2, #1 	; 0x800d2a8
    cmp r0, r1 	; 0x800d2aa
    bne .over2 	; 0x800d2ac
    adds r0, r2, #1 	; 0x800d2ae
    blx lr 	; 0x800d2b0
.over2: 	; 0x800d2b2
    push {lr} 	; 0x800d2b2
mov r7, sp 	; 0x800d2b4
    str r7, [r6, #4] 	; 0x800d2b6
bl pxt::fromInt 	; 0x800d2b8
pop {pc} 	; 0x800d2bc
.balign 4
_ldlit_3: 	; 0x800d2c0
 .word 1000000
_ldlit_2: 	; 0x800d2c4
 .word inline__P223_Lit
.section code
_cmp_lt: 	; 0x800d2c8
    lsls r2, r0, #31 	; 0x800d2c8
    beq .boxed 	; 0x800d2ca
    lsls r2, r1, #31 	; 0x800d2cc
    beq .boxed 	; 0x800d2ce
    subs r0, r1 	; 0x800d2d0
    blt .true 	; 0x800d2d2
.false: 	; 0x800d2d4
    movs r0, #0 	; 0x800d2d4
    bx lr 	; 0x800d2d6
.true: 	; 0x800d2d8
    movs r0, #1 	; 0x800d2d8
    bx lr 	; 0x800d2da
.boxed: 	; 0x800d2dc
    push {lr, r0, r1}       	; 0x800d2dc
                    mov r7, sp 	; 0x800d2de
    str r7, [r6, #4] 	; 0x800d2e0
                        bl numops::lt 	; 0x800d2e2
                        bl numops::toBoolDecr 	; 0x800d2e6
                        cmp r0, #0 	; 0x800d2ea
                    add sp, #8 	; 0x800d2ec
                    pop {pc} 	; 0x800d2ee
.section code
_cmp_gt: 	; 0x800d2f0
    lsls r2, r0, #31 	; 0x800d2f0
    beq .boxed 	; 0x800d2f2
    lsls r2, r1, #31 	; 0x800d2f4
    beq .boxed 	; 0x800d2f6
    subs r0, r1 	; 0x800d2f8
    bgt .true 	; 0x800d2fa
.false: 	; 0x800d2fc
    movs r0, #0 	; 0x800d2fc
    bx lr 	; 0x800d2fe
.true: 	; 0x800d300
    movs r0, #1 	; 0x800d300
    bx lr 	; 0x800d302
.boxed: 	; 0x800d304
    push {lr, r0, r1}       	; 0x800d304
                    mov r7, sp 	; 0x800d306
    str r7, [r6, #4] 	; 0x800d308
                        bl numops::gt 	; 0x800d30a
                        bl numops::toBoolDecr 	; 0x800d30e
                        cmp r0, #0 	; 0x800d312
                    add sp, #8 	; 0x800d314
                    pop {pc} 	; 0x800d316
.section code
_cmp_le: 	; 0x800d318
    lsls r2, r0, #31 	; 0x800d318
    beq .boxed 	; 0x800d31a
    lsls r2, r1, #31 	; 0x800d31c
    beq .boxed 	; 0x800d31e
    subs r0, r1 	; 0x800d320
    ble .true 	; 0x800d322
.false: 	; 0x800d324
    movs r0, #0 	; 0x800d324
    bx lr 	; 0x800d326
.true: 	; 0x800d328
    movs r0, #1 	; 0x800d328
    bx lr 	; 0x800d32a
.boxed: 	; 0x800d32c
    push {lr, r0, r1}       	; 0x800d32c
                    mov r7, sp 	; 0x800d32e
    str r7, [r6, #4] 	; 0x800d330
                        bl numops::le 	; 0x800d332
                        bl numops::toBoolDecr 	; 0x800d336
                        cmp r0, #0 	; 0x800d33a
                    add sp, #8 	; 0x800d33c
                    pop {pc} 	; 0x800d33e
.section code
_cmp_ge: 	; 0x800d340
    lsls r2, r0, #31 	; 0x800d340
    beq .boxed 	; 0x800d342
    lsls r2, r1, #31 	; 0x800d344
    beq .boxed 	; 0x800d346
    subs r0, r1 	; 0x800d348
    bge .true 	; 0x800d34a
.false: 	; 0x800d34c
    movs r0, #0 	; 0x800d34c
    bx lr 	; 0x800d34e
.true: 	; 0x800d350
    movs r0, #1 	; 0x800d350
    bx lr 	; 0x800d352
.boxed: 	; 0x800d354
    push {lr, r0, r1}       	; 0x800d354
                    mov r7, sp 	; 0x800d356
    str r7, [r6, #4] 	; 0x800d358
                        bl numops::ge 	; 0x800d35a
                        bl numops::toBoolDecr 	; 0x800d35e
                        cmp r0, #0 	; 0x800d362
                    add sp, #8 	; 0x800d364
                    pop {pc} 	; 0x800d366
.section code
_cmp_eq: 	; 0x800d368
    lsls r2, r0, #31 	; 0x800d368
    beq .boxed 	; 0x800d36a
    lsls r2, r1, #31 	; 0x800d36c
    beq .boxed 	; 0x800d36e
    subs r0, r1 	; 0x800d370
    beq .true 	; 0x800d372
.false: 	; 0x800d374
    movs r0, #0 	; 0x800d374
    bx lr 	; 0x800d376
.true: 	; 0x800d378
    movs r0, #1 	; 0x800d378
    bx lr 	; 0x800d37a
.boxed: 	; 0x800d37c
    push {lr, r0, r1}       	; 0x800d37c
                    mov r7, sp 	; 0x800d37e
    str r7, [r6, #4] 	; 0x800d380
                        bl numops::eq 	; 0x800d382
                        bl numops::toBoolDecr 	; 0x800d386
                        cmp r0, #0 	; 0x800d38a
                    add sp, #8 	; 0x800d38c
                    pop {pc} 	; 0x800d38e
.section code
_cmp_eqq: 	; 0x800d390
    lsls r2, r0, #31 	; 0x800d390
    beq .boxed 	; 0x800d392
    lsls r2, r1, #31 	; 0x800d394
    beq .boxed 	; 0x800d396
    subs r0, r1 	; 0x800d398
    beq .true 	; 0x800d39a
.false: 	; 0x800d39c
    movs r0, #0 	; 0x800d39c
    bx lr 	; 0x800d39e
.true: 	; 0x800d3a0
    movs r0, #1 	; 0x800d3a0
    bx lr 	; 0x800d3a2
.boxed: 	; 0x800d3a4
    push {lr, r0, r1}       	; 0x800d3a4
                    mov r7, sp 	; 0x800d3a6
    str r7, [r6, #4] 	; 0x800d3a8
                        bl numops::eqq 	; 0x800d3aa
                        bl numops::toBoolDecr 	; 0x800d3ae
                        cmp r0, #0 	; 0x800d3b2
                    add sp, #8 	; 0x800d3b4
                    pop {pc} 	; 0x800d3b6
.section code
_cmp_neq: 	; 0x800d3b8
    lsls r2, r0, #31 	; 0x800d3b8
    beq .boxed 	; 0x800d3ba
    lsls r2, r1, #31 	; 0x800d3bc
    beq .boxed 	; 0x800d3be
    subs r0, r1 	; 0x800d3c0
    bne .true 	; 0x800d3c2
.false: 	; 0x800d3c4
    movs r0, #0 	; 0x800d3c4
    bx lr 	; 0x800d3c6
.true: 	; 0x800d3c8
    movs r0, #1 	; 0x800d3c8
    bx lr 	; 0x800d3ca
.boxed: 	; 0x800d3cc
    push {lr, r0, r1}       	; 0x800d3cc
                    mov r7, sp 	; 0x800d3ce
    str r7, [r6, #4] 	; 0x800d3d0
                        bl numops::neq 	; 0x800d3d2
                        bl numops::toBoolDecr 	; 0x800d3d6
                        cmp r0, #0 	; 0x800d3da
                    add sp, #8 	; 0x800d3dc
                    pop {pc} 	; 0x800d3de
.section code
_cmp_neqq: 	; 0x800d3e0
    lsls r2, r0, #31 	; 0x800d3e0
    beq .boxed 	; 0x800d3e2
    lsls r2, r1, #31 	; 0x800d3e4
    beq .boxed 	; 0x800d3e6
    subs r0, r1 	; 0x800d3e8
    bne .true 	; 0x800d3ea
.false: 	; 0x800d3ec
    movs r0, #0 	; 0x800d3ec
    bx lr 	; 0x800d3ee
.true: 	; 0x800d3f0
    movs r0, #1 	; 0x800d3f0
    bx lr 	; 0x800d3f2
.boxed: 	; 0x800d3f4
    push {lr, r0, r1}       	; 0x800d3f4
                    mov r7, sp 	; 0x800d3f6
    str r7, [r6, #4] 	; 0x800d3f8
                        bl numops::neqq 	; 0x800d3fa
                        bl numops::toBoolDecr 	; 0x800d3fe
                        cmp r0, #0 	; 0x800d402
                    add sp, #8 	; 0x800d404
                    pop {pc} 	; 0x800d406
_helpers_end: 	; 0x800d408
.balign 4
_pxt_iface_member_names: 	; 0x800d408
    .word 1
    .word _str1meta  ; 0 .
    .word 0
_vtables_end: 	; 0x800d414
.balign 4
_pxt_config_data: 	; 0x800d414
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
_str1meta: 	; 0x800d488
 .word pxt::string_vt
        .short 0
_str1: 	; 0x800d48e
 .string ""
.balign 4
.section code
_pxt_perf_counters: 	; 0x800d490
    .word 0
_literals_end: 	; 0x800d494
    .balign 16
_stored_program: .string "..."
