.section .text
.global _start
_start:
    mov %rsp, %r15
    sub $24, %rsp
    mov %rsp, %rbp
    movq $0, 0(%r15)
    mov $24, %rax
    movsxd %eax, %rax
    push %rax
    mov $252, %rax
    movsxd %eax, %rax
    pop %rbx
    push %rcx
    mov %rbx, %rcx
    shl %cl, %rax
    pop %rcx
    push %rax
    mov $32, %rax
    movsxd %eax, %rax
    push %rax
    mov $15, %rax
    movsxd %eax, %rax
    push %rax
    mov $4, %rax
    movsxd %eax, %rax
    push %rax
    mov $268435455, %rax
    movsxd %eax, %rax
    pop %rbx
    push %rcx
    mov %rbx, %rcx
    shl %cl, %rax
    pop %rcx
    pop %rbx
    add %rbx, %rax
    pop %rbx
    push %rcx
    mov %rbx, %rcx
    shl %cl, %rax
    pop %rcx
    pop %rbx
    add %rbx, %rax
    push %rax
    mov 0(%r15), %rax
    lea 0(%r15), %rcx
    mov %rcx, %rbx
    pop %rax
    movq %rax, (%rbx)
    movq $0, 8(%r15)
    mov $800, %rax
    movsxd %eax, %rax
    push %rax
    mov 8(%r15), %rax
    lea 8(%r15), %rcx
    mov %rcx, %rbx
    pop %rax
    movq %rax, (%rbx)
    movq $0, 16(%r15)
    mov $600, %rax
    movsxd %eax, %rax
    push %rax
    mov 16(%r15), %rax
    lea 16(%r15), %rcx
    mov %rcx, %rbx
    pop %rax
    movq %rax, (%rbx)
    push %rbp
    mov %rsp, %rbp
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $10, %rax
    push %rax
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax
    movl %eax, (%rbx)
L3:
    mov $100, %rax
    push %rax
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx
    cmp %ebx, %eax
    setl %al
    movzx %al, %rax
    cmp $0, %rax
    je L5
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov $10, %rax
    push %rax
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax
    movl %eax, (%rbx)
L6:
    mov $100, %rax
    push %rax
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    pop %rbx
    cmp %ebx, %eax
    setl %al
    movzx %al, %rax
    cmp $0, %rax
    je L8
    sub $8, %rsp
    movq $0, -24(%rbp)
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax
    movl %eax, (%rbx)
    sub $8, %rsp
    movq $0, -32(%rbp)
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    push %rax
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax
    movl %eax, (%rbx)
    sub $8, %rsp
    movq $0, -40(%rbp)
    mov $16777215, %rax
    push %rax
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax
    movl %eax, (%rbx)
    call L1
    push %rax
    push %rcx
    pop %rcx
    pop %rax
    add $24, %rsp
    push %rax
    push %rcx
    pop %rcx
    pop %rax
    add $0, %rsp
L7:
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    incl (%rcx)
    jmp L6
L8:
    push %rax
    push %rcx
    pop %rcx
    pop %rax
    add $8, %rsp
    push %rax
    push %rcx
    pop %rcx
    pop %rax
    add $0, %rsp
L4:
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    incl (%rcx)
    jmp L3
L5:
    push %rax
    push %rcx
    pop %rcx
    pop %rax
    add $8, %rsp
L9:
    mov $1, %rax
    cmp $0, %rax
    je L11
    push %rax
    push %rcx
    pop %rcx
    pop %rax
    add $0, %rsp
L10:
    jmp L9
L11:
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $0, %rax
    push %rax
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax
    movl %eax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax
    push %rcx
    pop %rcx
    pop %rax
    push %rax
    push %rcx
    pop %rcx
    pop %rax
    add $0, %rsp

L0:
    push %rbp
    mov %rsp, %rbp
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax
    mov 0(%r15), %rax
    lea 0(%r15), %rcx
    push %rax
    push %rcx
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    push %rax
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    push %rax
    mov 8(%r15), %rax
    lea 8(%r15), %rcx
    pop %rbx
    mul %rbx
    pop %rbx
    add %rbx, %rax
    mov %rax, %rbx
    pop %rcx
    pop %rax
    push %rax
    lea (%rax, %rbx, 4), %rax
    mov %rax, %rcx
    pop %rax
    movl (%rax, %rbx, 4), %eax
    mov %rcx, %rbx
    pop %rax
    movl %eax, (%rbx)
    push %rax
    push %rcx
    pop %rcx
    pop %rax
    add $0, %rsp
    pop %rbp
    ret

L1:
    push %rbp
    mov %rsp, %rbp
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    movsxd %eax, %rax
    push %rax
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax
    movq %rax, (%rbx)
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    movsxd %eax, %rax
    push %rax
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax
    movq %rax, (%rbx)
    sub $8, %rsp
    movq $0, -24(%rbp)
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax
    movl %eax, (%rbx)
    call L0
    push %rax
    push %rcx
    pop %rcx
    pop %rax
    add $24, %rsp
    push %rax
    push %rcx
    pop %rcx
    pop %rax
    add $0, %rsp
    pop %rbp
    ret

.section .rodata

