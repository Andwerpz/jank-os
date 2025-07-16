.section .text
# main()
.global _start
_start:
    # start initialize global variables
    mov %rsp, %r15
    sub $208, %rsp
    mov %rsp, %rbp
    # initialize global variable : u64 PROT_READ
    movq $0, 0(%r15)
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable PROT_READ
    mov 0(%r15), %rax
    lea 0(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : u64 PROT_READ
    # initialize global variable : u64 ERR_MALFORMED
    movq $0, 8(%r15)
    mov $2, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ERR_MALFORMED
    mov 8(%r15), %rax
    lea 8(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : u64 ERR_MALFORMED
    # initialize global variable : u64 ERR_RANGE
    movq $0, 16(%r15)
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ERR_RANGE
    mov 16(%r15), %rax
    lea 16(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : u64 ERR_RANGE
    # initialize global variable : u64 errno
    movq $0, 24(%r15)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable errno
    mov 24(%r15), %rax
    lea 24(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : u64 errno
    # initialize global variable : u64 MEM_USED
    movq $0, 32(%r15)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable MEM_USED
    mov 32(%r15), %rax
    lea 32(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : u64 MEM_USED
    # initialize global variable : u64 PAGE_SIZE
    movq $0, 40(%r15)
    mov $4096, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable PAGE_SIZE
    mov 40(%r15), %rax
    lea 40(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : u64 PAGE_SIZE
    # initialize global variable : u64 MAP_ANONYMOUS
    movq $0, 48(%r15)
    mov $5, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    movsxd %eax, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    push %rcx
    mov %rbx, %rcx
    shl %cl, %rax
    pop %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable MAP_ANONYMOUS
    mov 48(%r15), %rax
    lea 48(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : u64 MAP_ANONYMOUS
    # initialize global variable : u64 PROT_NONE
    movq $0, 56(%r15)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable PROT_NONE
    mov 56(%r15), %rax
    lea 56(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : u64 PROT_NONE
    # initialize global variable : u64 PROT_WRITE
    movq $0, 64(%r15)
    mov $2, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable PROT_WRITE
    mov 64(%r15), %rax
    lea 64(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : u64 PROT_WRITE
    # initialize global variable : u64 PROT_EXEC
    movq $0, 72(%r15)
    mov $4, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable PROT_EXEC
    mov 72(%r15), %rax
    lea 72(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : u64 PROT_EXEC
    # initialize global variable : u64 MAP_PRIVATE
    movq $0, 80(%r15)
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    movsxd %eax, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    push %rcx
    mov %rbx, %rcx
    shl %cl, %rax
    pop %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable MAP_PRIVATE
    mov 80(%r15), %rax
    lea 80(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : u64 MAP_PRIVATE
    # initialize global variable : void* nullptr
    movq $0, 88(%r15)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable nullptr
    mov 88(%r15), %rax
    lea 88(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : void* nullptr
    # initialize global variable : i32 STDIN
    movq $0, 96(%r15)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable STDIN
    mov 96(%r15), %rax
    lea 96(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize global variable : i32 STDIN
    # initialize global variable : i32 STDOUT
    movq $0, 104(%r15)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable STDOUT
    mov 104(%r15), %rax
    lea 104(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize global variable : i32 STDOUT
    # initialize global variable : i32 STDERR
    movq $0, 112(%r15)
    mov $2, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable STDERR
    mov 112(%r15), %rax
    lea 112(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize global variable : i32 STDERR
    # initialize global variable : u64 CLOCK_MONOTONIC
    movq $0, 120(%r15)
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable CLOCK_MONOTONIC
    mov 120(%r15), %rax
    lea 120(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : u64 CLOCK_MONOTONIC
    # initialize global variable : ostream cout
    # calling constructor : ostream
    mov $12, %rax
    push %rax    # emit_malloc() : malloc arg
    call L49
    # emit_malloc() : malloc arg
    add $8, %rsp
    # initialize struct ostream
    push %rax    # emit_initialize_struct() :: save original %rax
    movl $0, (%rax)
    add $4, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory ostream
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    call L24
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    movq %rax, 128(%r15)
    # calling constructor : ostream
    mov $12, %rax
    push %rax    # emit_malloc() : malloc arg
    call L49
    # emit_malloc() : malloc arg
    add $8, %rsp
    # initialize struct ostream
    push %rax    # emit_initialize_struct() :: save original %rax
    movl $0, (%rax)
    add $4, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory ostream
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    # TMP:0
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable STDOUT
    mov 104(%r15), %rax
    lea 104(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:0
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    call L25
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    # expression struct assignment tmp variable
    push %rax    # TMP:1
    # load variable cout
    mov 128(%r15), %rax
    mov 128(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling destructor : ostream
    push %rax    # DestructorCall::emit_asm() : target struct
    call L27
    pop %rax    # DestructorCall::emit_asm() : target struct
    pop %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling constructor : ostream
    # initialize struct ostream
    push %rax    # emit_initialize_struct() :: save original %rax
    movl $0, (%rax)
    add $4, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory ostream
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    # TMP:2
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable TMP:1
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    movq %rcx, -32(%rbp)
    call L26
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ExprBinary::emit_asm() : save struct addr during right dealloc
    movq -8(%rbp), %rax
    # calling destructor : ostream
    push %rax    # DestructorCall::emit_asm() : target struct
    call L27
    pop %rax    # DestructorCall::emit_asm() : target struct
    push %rax    # emit_free() : free addr
    mov $12, %rax
    push %rax    # emit_free() : free sz_bytes
    call L50
    add $16, %rsp
    pop %rax    # ExprBinary::emit_asm() : save struct addr during right dealloc
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    mov %rax, %rcx
    # done initialize global variable : ostream cout
    # initialize global variable : istream cin
    # calling constructor : istream
    mov $32, %rax
    push %rax    # emit_malloc() : malloc arg
    call L49
    # emit_malloc() : malloc arg
    add $8, %rsp
    # initialize struct istream
    push %rax    # emit_initialize_struct() :: save original %rax
    movl $0, (%rax)
    add $4, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movl $0, (%rax)
    add $4, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory istream
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    call L9
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    movq %rax, 136(%r15)
    # calling constructor : istream
    mov $32, %rax
    push %rax    # emit_malloc() : malloc arg
    call L49
    # emit_malloc() : malloc arg
    add $8, %rsp
    # initialize struct istream
    push %rax    # emit_initialize_struct() :: save original %rax
    movl $0, (%rax)
    add $4, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movl $0, (%rax)
    add $4, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory istream
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    # TMP:3
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable STDIN
    mov 96(%r15), %rax
    lea 96(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:3
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    call L10
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    # expression struct assignment tmp variable
    push %rax    # TMP:4
    # load variable cin
    mov 136(%r15), %rax
    mov 136(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling destructor : istream
    push %rax    # DestructorCall::emit_asm() : target struct
    call L12
    pop %rax    # DestructorCall::emit_asm() : target struct
    pop %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling constructor : istream
    # initialize struct istream
    push %rax    # emit_initialize_struct() :: save original %rax
    movl $0, (%rax)
    add $4, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movl $0, (%rax)
    add $4, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory istream
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    # TMP:5
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable TMP:4
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    movq %rcx, -32(%rbp)
    call L11
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ExprBinary::emit_asm() : save struct addr during right dealloc
    movq -8(%rbp), %rax
    # calling destructor : istream
    push %rax    # DestructorCall::emit_asm() : target struct
    call L12
    pop %rax    # DestructorCall::emit_asm() : target struct
    push %rax    # emit_free() : free addr
    mov $32, %rax
    push %rax    # emit_free() : free sz_bytes
    call L50
    add $16, %rsp
    pop %rax    # ExprBinary::emit_asm() : save struct addr during right dealloc
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    mov %rax, %rcx
    # done initialize global variable : istream cin
    # initialize global variable : u8* jstring_f32_base2
    movq $0, 144(%r15)
    # calling function : malloc
    # function call member variable : sz
    # TMP:6
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $512, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:6
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable jstring_f32_base2
    mov 144(%r15), %rax
    lea 144(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : u8* jstring_f32_base2
    # initialize global variable : u64 U64_MAX
    movq $0, 152(%r15)
    mov $1, %rax
    neg %eax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable U64_MAX
    mov 152(%r15), %rax
    lea 152(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : u64 U64_MAX
    # initialize global variable : u32 U32_MAX
    movq $0, 160(%r15)
    mov $1, %rax
    neg %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable U32_MAX
    mov 160(%r15), %rax
    lea 160(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize global variable : u32 U32_MAX
    # initialize global variable : u16 U16_MAX
    movq $0, 168(%r15)
    mov $1, %rax
    neg %eax
    movzwq %ax, %rax

    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable U16_MAX
    mov 168(%r15), %rax
    lea 168(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movw %ax, (%rbx)
    # done initialize global variable : u16 U16_MAX
    # initialize global variable : u8 U8_MAX
    movq $0, 176(%r15)
    mov $1, %rax
    neg %eax
    movzbq %al, %rax

    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable U8_MAX
    mov 176(%r15), %rax
    lea 176(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    # done initialize global variable : u8 U8_MAX
    # initialize global variable : i32 I32_MAX
    movq $0, 184(%r15)
    mov $2147483647, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable I32_MAX
    mov 184(%r15), %rax
    lea 184(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize global variable : i32 I32_MAX
    # initialize global variable : i32 I32_MIN
    movq $0, 192(%r15)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    mov $2147483647, %rax
    neg %eax
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %ebx, %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable I32_MIN
    mov 192(%r15), %rax
    lea 192(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize global variable : i32 I32_MIN
    # initialize global variable : u64 CLOCK_REALTIME
    movq $0, 200(%r15)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable CLOCK_REALTIME
    mov 200(%r15), %rax
    lea 200(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize global variable : u64 CLOCK_REALTIME
    # done initialize global variables
    push %rbp
    mov %rsp, %rbp
    # initialize local variable : i32 a
    # a
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $4, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable a
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 a
    # TMP:7
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable a
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:7
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    mov -16(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax
    call L40
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp

# to_jstr(i32)
L56:
    push %rbp
    mov %rsp, %rbp
    # if statement start
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L78
    jmp L79
L78:
    # TMP:8
    sub $8, %rsp
    movq $0, -8(%rbp)
    lea L80(%rip), %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:8
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    jmp L79
L79:
    # if statement end
    # initialize local variable : i32 is_neg
    # is_neg
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    setl %al
    movzx %al, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable is_neg
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 is_neg
    # if statement start
    # load variable is_neg
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    cmp $0, %rax
    jne L81
    jmp L82
L81:
    mov $1, %rax
    neg %eax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    imul %ebx, %eax
    movl %eax, (%rcx)
    jmp L82
L82:
    # if statement end
    # initialize local variable : u8* str
    # str
    sub $8, %rsp
    movq $0, -16(%rbp)
    # calling function : malloc
    # function call member variable : sz
    # TMP:9
    sub $8, %rsp
    movq $0, -24(%rbp)
    mov $12, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:9
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable str
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u8* str
    # initialize local variable : i32 ptr
    # ptr
    sub $8, %rsp
    movq $0, -24(%rbp)
    mov $11, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ptr
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 ptr
    mov $0, %rax
    movzbq %al, %rax

    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable str
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ptr
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    decl (%rcx)
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    # while loop start
L83:
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    setne %al
    movzx %al, %rax
    cmp $0, %rax
    je L85
    mov $10, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    movsx %eax, %rax
    movsx %ebx, %rbx
    cqo
    idiv %rbx
    mov %edx, %eax
    push %rax    # ExprBinary::emit_asm() : save right
    movb $48, %al
    movzbl %al, %eax
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %ebx, %eax
    movzbq %al, %rax

    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable str
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ptr
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    decl (%rcx)
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    mov $10, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    movsx %eax, %rax
    movsx %ebx, %rbx
    cqo
    idiv %rbx
    mov %eax, %eax
    movl %eax, (%rcx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
L84:
    jmp L83
L85:
    # while loop end
    # if statement start
    # load variable is_neg
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    cmp $0, %rax
    jne L86
    jmp L87
L86:
    movb $45, %al
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable str
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ptr
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    decl (%rcx)
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    jmp L87
L87:
    # if statement end
    # TMP:10
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable str
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable ptr
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %ebx, %eax
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:10
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -32(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $24, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $24, %rsp

# sys_clock_gettime(u64, timespec*)
L45:
    push %rbp
    mov %rsp, %rbp
    # TMP:11
    sub $8, %rsp
    movq $0, -8(%rbp)
    # syscall : 228
    # TMP:12
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable clock_id
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:12
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:13
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable tp
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:13
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov $228, %rax
    movq -16(%rbp), %rdi
    movq -24(%rbp), %rsi
    syscall
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # done syscall : 228
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:11
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# sys_mmap(void*, u64, u64, u64, i32, u64)
L46:
    push %rbp
    mov %rsp, %rbp
    # TMP:14
    sub $8, %rsp
    movq $0, -8(%rbp)
    # syscall : 9
    # TMP:15
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable addr
    mov 56(%rbp), %rax
    lea 56(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:15
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:16
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable len
    mov 48(%rbp), %rax
    lea 48(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:16
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:17
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable prot_flags
    mov 40(%rbp), %rax
    lea 40(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:17
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:18
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable map_flags
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:18
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:19
    sub $8, %rsp
    movq $0, -48(%rbp)
    # load variable fd
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:19
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # TMP:20
    sub $8, %rsp
    movq $0, -56(%rbp)
    # load variable offset
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:20
    mov -56(%rbp), %rax
    lea -56(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov $9, %rax
    movq -16(%rbp), %rdi
    movq -24(%rbp), %rsi
    movq -32(%rbp), %rdx
    movq -40(%rbp), %r10
    movq -48(%rbp), %r8
    movq -56(%rbp), %r9
    syscall
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $48, %rsp
    # done syscall : 9
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:14
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# sys_munmap(void*, u64)
L47:
    push %rbp
    mov %rsp, %rbp
    # TMP:21
    sub $8, %rsp
    movq $0, -8(%rbp)
    # syscall : 11
    # TMP:22
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable addr
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:22
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:23
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable len
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:23
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov $11, %rax
    movq -16(%rbp), %rdi
    movq -24(%rbp), %rsi
    syscall
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # done syscall : 11
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:21
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# sbrk(u64)
L48:
    push %rbp
    mov %rsp, %rbp
    # initialize local variable : u64 cur_brk
    # cur_brk
    sub $8, %rsp
    movq $0, -8(%rbp)
    # calling function : sys_brk
    # function call member variable : addr
    # TMP:24
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:24
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L43
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable cur_brk
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 cur_brk
    # calling function : sys_brk
    # function call member variable : addr
    # TMP:25
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable inc
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable cur_brk
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:25
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L43
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # TMP:26
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable cur_brk
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:26
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -16(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp

# malloc(u64)
L49:
    push %rbp
    mov %rsp, %rbp
    # load variable PAGE_SIZE
    mov 40(%r15), %rax
    lea 40(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable PAGE_SIZE
    mov 40(%r15), %rax
    lea 40(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable PAGE_SIZE
    mov 40(%r15), %rax
    lea 40(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable sz
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %rbx, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %rbx, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    xor %rdx, %rdx
    div %rbx
    pop %rbx    # ExprBinary::emit_asm() : save right
    mul %rbx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable sz
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # load variable sz
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable MEM_USED
    mov 32(%r15), %rax
    lea 32(%r15), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %rbx, %rax
    movq %rax, (%rcx)
    # initialize local variable : void* addr
    # addr
    sub $8, %rsp
    movq $0, -8(%rbp)
    # calling function : sys_mmap
    # function call member variable : addr
    # TMP:27
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable nullptr
    mov 88(%r15), %rax
    lea 88(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:27
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : len
    # TMP:28
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable sz
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:28
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : prot_flags
    # TMP:29
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable PROT_WRITE
    mov 64(%r15), %rax
    lea 64(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable PROT_READ
    mov 0(%r15), %rax
    lea 0(%r15), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    or %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:29
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : map_flags
    # TMP:30
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable MAP_ANONYMOUS
    mov 48(%r15), %rax
    lea 48(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable MAP_PRIVATE
    mov 80(%r15), %rax
    lea 80(%r15), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    or %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:30
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : fd
    # TMP:31
    sub $8, %rsp
    movq $0, -48(%rbp)
    mov $1, %rax
    neg %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:31
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # function call member variable : offset
    # TMP:32
    sub $8, %rsp
    movq $0, -56(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:32
    mov -56(%rbp), %rax
    lea -56(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L46
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $48, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable addr
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : void* addr
    # TMP:33
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable addr
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:33
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -16(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp

# free(void*, u64)
L50:
    push %rbp
    mov %rsp, %rbp
    # load variable PAGE_SIZE
    mov 40(%r15), %rax
    lea 40(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable PAGE_SIZE
    mov 40(%r15), %rax
    lea 40(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable PAGE_SIZE
    mov 40(%r15), %rax
    lea 40(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable sz
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %rbx, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %rbx, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    xor %rdx, %rdx
    div %rbx
    pop %rbx    # ExprBinary::emit_asm() : save right
    mul %rbx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable sz
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # if statement start
    # load variable MEM_USED
    mov 32(%r15), %rax
    lea 32(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable sz
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    seta %al
    movzx %al, %rax
    cmp $0, %rax
    jne L88
    jmp L89
L88:
    # calling overload : 
    # TMP:34
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable cout
    mov 128(%r15), %rax
    mov 128(%r15), %rcx
    movq %rcx, -8(%rbp)
    # TMP:35
    sub $8, %rsp
    movq $0, -16(%rbp)
    lea L90(%rip), %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:35
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L70
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type ostream
    mov %rax, %rcx
    # calling function : sys_exit
    # function call member variable : status
    # TMP:36
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:36
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    call L40
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L89
L89:
    # if statement end
    # load variable sz
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable MEM_USED
    mov 32(%r15), %rax
    lea 32(%r15), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %rbx, %rax
    movq %rax, (%rcx)
    # initialize local variable : i32 status
    # status
    sub $8, %rsp
    movq $0, -8(%rbp)
    # calling function : sys_munmap
    # function call member variable : addr
    # TMP:37
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable addr
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:37
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : len
    # TMP:38
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable sz
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:38
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L47
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable status
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 status
    # if statement start
    mov $1, %rax
    neg %eax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable status
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L91
    jmp L92
L91:
    # calling overload : 
    # TMP:39
    sub $8, %rsp
    movq $0, -16(%rbp)
    # calling overload : 
    # TMP:40
    sub $8, %rsp
    movq $0, -24(%rbp)
    # calling overload : 
    # TMP:41
    sub $8, %rsp
    movq $0, -32(%rbp)
    # calling overload : 
    # TMP:42
    sub $8, %rsp
    movq $0, -40(%rbp)
    # calling overload : 
    # TMP:43
    sub $8, %rsp
    movq $0, -48(%rbp)
    # load variable cout
    mov 128(%r15), %rax
    mov 128(%r15), %rcx
    movq %rcx, -48(%rbp)
    # TMP:44
    sub $8, %rsp
    movq $0, -56(%rbp)
    lea L93(%rip), %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:44
    mov -56(%rbp), %rax
    lea -56(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L70
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type ostream
    mov %rax, %rcx
    movq %rcx, -40(%rbp)
    # TMP:45
    sub $8, %rsp
    movq $0, -48(%rbp)
    # load variable addr
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:45
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L73
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type ostream
    mov %rax, %rcx
    movq %rcx, -32(%rbp)
    # TMP:46
    sub $8, %rsp
    movq $0, -40(%rbp)
    lea L94(%rip), %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:46
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L70
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type ostream
    mov %rax, %rcx
    movq %rcx, -24(%rbp)
    # TMP:47
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable sz
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:47
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L73
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type ostream
    mov %rax, %rcx
    movq %rcx, -16(%rbp)
    # TMP:48
    sub $8, %rsp
    movq $0, -24(%rbp)
    lea L95(%rip), %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:48
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L70
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type ostream
    mov %rax, %rcx
    # calling function : sys_exit
    # function call member variable : status
    # TMP:49
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:49
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    call L40
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L92
L92:
    # if statement end
    # TMP:50
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable status
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:50
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    mov -16(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp

# memcpy(void*, void*, u64)
L51:
    push %rbp
    mov %rsp, %rbp
    # for loop start
    # initialize local variable : u64 i
    # i
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 i
L96:
    # load variable count
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    je L98
    # load variable src
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable dest
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
L97:
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    incq (%rcx)
    jmp L96
L98:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # TMP:51
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable dest
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:51
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# get_sys_time_ns()
L53:
    push %rbp
    mov %rsp, %rbp
    # initialize local variable : timespec ts
    # ts
    sub $8, %rsp
    # calling constructor : timespec
    mov $16, %rax
    push %rax    # emit_malloc() : malloc arg
    call L49
    # emit_malloc() : malloc arg
    add $8, %rsp
    # initialize struct timespec
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory timespec
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    call L0
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    movq %rax, -8(%rbp)
    # calling constructor : timespec
    mov $16, %rax
    push %rax    # emit_malloc() : malloc arg
    call L49
    # emit_malloc() : malloc arg
    add $8, %rsp
    # initialize struct timespec
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory timespec
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    call L0
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    # expression struct assignment tmp variable
    push %rax    # TMP:52
    # load variable ts
    mov -8(%rbp), %rax
    mov -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling destructor : timespec
    push %rax    # DestructorCall::emit_asm() : target struct
    call L2
    pop %rax    # DestructorCall::emit_asm() : target struct
    pop %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling constructor : timespec
    # initialize struct timespec
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory timespec
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    # TMP:53
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable TMP:52
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    # dereferencing to type timespec
    mov %rax, %rcx
    movq %rcx, -40(%rbp)
    call L1
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ExprBinary::emit_asm() : save struct addr during right dealloc
    movq -16(%rbp), %rax
    # calling destructor : timespec
    push %rax    # DestructorCall::emit_asm() : target struct
    call L2
    pop %rax    # DestructorCall::emit_asm() : target struct
    push %rax    # emit_free() : free addr
    mov $16, %rax
    push %rax    # emit_free() : free sz_bytes
    call L50
    add $16, %rsp
    pop %rax    # ExprBinary::emit_asm() : save struct addr during right dealloc
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    mov %rax, %rcx
    # done initialize local variable : timespec ts
    # calling function : sys_clock_gettime
    # function call member variable : clock_id
    # TMP:54
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable CLOCK_REALTIME
    mov 200(%r15), %rax
    lea 200(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:54
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : tp
    # TMP:55
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable ts
    mov -8(%rbp), %rax
    mov -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:55
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L45
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # TMP:56
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable ts
    mov -8(%rbp), %rax
    mov -8(%rbp), %rcx
    # accessing member variable tv_nsec, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable tv_nsec
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1000000000, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable ts
    mov -8(%rbp), %rax
    mov -8(%rbp), %rcx
    # accessing member variable tv_sec, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable tv_sec
    pop %rbx    # ExprBinary::emit_asm() : save right
    mul %rbx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:56
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -16(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    movq -8(%rbp), %rax
    # calling destructor : timespec
    push %rax    # DestructorCall::emit_asm() : target struct
    call L2
    pop %rax    # DestructorCall::emit_asm() : target struct
    push %rax    # emit_free() : free addr
    mov $16, %rax
    push %rax    # emit_free() : free sz_bytes
    call L50
    add $16, %rsp
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    movq -8(%rbp), %rax
    # calling destructor : timespec
    push %rax    # DestructorCall::emit_asm() : target struct
    call L2
    pop %rax    # DestructorCall::emit_asm() : target struct
    push %rax    # emit_free() : free addr
    mov $16, %rax
    push %rax    # emit_free() : free sz_bytes
    call L50
    add $16, %rsp
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp

# strlen(u8*)
L54:
    push %rbp
    mov %rsp, %rbp
    # for loop start
    # initialize local variable : u64 i
    # i
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 i
L99:
    # if statement start
    mov $0, %rax
    movzbq %al, %rax

    push %rax    # ExprBinary::emit_asm() : save right
    # load variable s
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %bl, %al
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L102
    jmp L103
L102:
    # TMP:57
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:57
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -16(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    pop %rbp
    ret
    jmp L103
L103:
    # if statement end
L100:
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    incq (%rcx)
    jmp L99
L101:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# to_jstr(i32, u8*)
L55:
    push %rbp
    mov %rsp, %rbp
    # TMP:58
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:58
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# sys_getrandom(void*, u64, u64)
L44:
    push %rbp
    mov %rsp, %rbp
    # TMP:59
    sub $8, %rsp
    movq $0, -8(%rbp)
    # syscall : 318
    # TMP:60
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable buf
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:60
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:61
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable buf_len
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:61
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:62
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable flags
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:62
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov $318, %rax
    movq -16(%rbp), %rdi
    movq -24(%rbp), %rsi
    movq -32(%rbp), %rdx
    syscall
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $24, %rsp
    # done syscall : 318
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:59
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# to_jstr(u64)
L57:
    push %rbp
    mov %rsp, %rbp
    # initialize local variable : u8* str
    # str
    sub $8, %rsp
    movq $0, -8(%rbp)
    # calling function : malloc
    # function call member variable : sz
    # TMP:63
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov $21, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:63
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable str
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u8* str
    # initialize local variable : i32 ptr
    # ptr
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov $20, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ptr
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 ptr
    mov $0, %rax
    movzbq %al, %rax

    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable str
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ptr
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    decl (%rcx)
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    # if statement start
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L104
    jmp L105
L104:
    movb $48, %al
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable str
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ptr
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    # TMP:64
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable str
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ptr
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:64
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -24(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L105
L105:
    # if statement end
    # while loop start
L106:
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setne %al
    movzx %al, %rax
    cmp $0, %rax
    je L108
    mov $10, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    xor %rdx, %rdx
    div %rbx
    mov %rdx, %rax
    movzbq %al, %rax

    push %rax    # ExprBinary::emit_asm() : save right
    movb $48, %al
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %bl, %al
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable str
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ptr
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    decl (%rcx)
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    mov $10, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    xor %rdx, %rdx
    div %rbx
    movq %rax, (%rcx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
L107:
    jmp L106
L108:
    # while loop end
    # TMP:65
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable str
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable ptr
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %ebx, %eax
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:65
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -24(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp

# to_jstr(f32)
L58:
    push %rbp
    mov %rsp, %rbp
    # initialize local variable : u32 fbits
    # fbits
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable f
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    mov %rcx, %rax
    # dereferencing to type u32
    mov %rax, %rcx
    movl (%rax), %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable fbits
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : u32 fbits
    # initialize local variable : u32 sgn
    # sgn
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov $31, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    push %rcx
    mov %rbx, %rcx
    sal %cl, %eax
    pop %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable fbits
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    and %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable sgn
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : u32 sgn
    # initialize local variable : u32 exp
    # exp
    sub $8, %rsp
    movq $0, -24(%rbp)
    mov $23, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    mov $8, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    push %rcx
    mov %rbx, %rcx
    sal %cl, %eax
    pop %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %ebx, %eax
    pop %rbx    # ExprBinary::emit_asm() : save right
    push %rcx
    mov %rbx, %rcx
    sal %cl, %eax
    pop %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable fbits
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    and %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable exp
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : u32 exp
    # initialize local variable : u32 mantissa
    # mantissa
    sub $8, %rsp
    movq $0, -32(%rbp)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    mov $23, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    push %rcx
    mov %rbx, %rcx
    sal %cl, %eax
    pop %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %ebx, %eax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable fbits
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    and %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable mantissa
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : u32 mantissa
    mov $31, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable sgn
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    push %rcx
    mov %rbx, %rcx
    shr %cl, %eax
    pop %rcx
    movl %eax, (%rcx)
    mov $23, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable exp
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    push %rcx
    mov %rbx, %rcx
    shr %cl, %eax
    pop %rcx
    movl %eax, (%rcx)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable mantissa
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    push %rcx
    mov %rbx, %rcx
    shr %cl, %eax
    pop %rcx
    movl %eax, (%rcx)
    mov $23, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    push %rcx
    mov %rbx, %rcx
    sal %cl, %eax
    pop %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable mantissa
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    or %rbx, %rax
    movl %eax, (%rcx)
    # initialize local variable : u8* base2
    # base2
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable jstring_f32_base2
    mov 144(%r15), %rax
    lea 144(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable base2
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u8* base2
    # for loop start
    # initialize local variable : i32 i
    # i
    sub $8, %rsp
    movq $0, -48(%rbp)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 i
L109:
    mov $512, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    setl %al
    movzx %al, %rax
    cmp $0, %rax
    je L111
    mov $0, %rax
    movzbq %al, %rax

    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable base2
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
L110:
    # load variable i
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    incl (%rcx)
    jmp L109
L111:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # initialize local variable : u64 zind
    # zind
    sub $8, %rsp
    movq $0, -48(%rbp)
    mov $255, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable zind
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 zind
    # for loop start
    # initialize local variable : u32 i
    # i
    sub $8, %rsp
    movq $0, -56(%rbp)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -56(%rbp), %rax
    lea -56(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : u32 i
L112:
    mov $24, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -56(%rbp), %rax
    lea -56(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    je L114
    # initialize local variable : u64 ind
    # ind
    sub $8, %rsp
    movq $0, -64(%rbp)
    mov $23, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -56(%rbp), %rax
    lea -56(%rbp), %rcx
    mov %eax, %eax
    push %rax    # ExprBinary::emit_asm() : save right
    mov $127, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable exp
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %eax, %eax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable zind
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %rbx, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %rbx, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %rbx, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ind
    mov -64(%rbp), %rax
    lea -64(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 ind
    # if statement start
    # load variable i
    mov -56(%rbp), %rax
    lea -56(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    push %rcx
    mov %rbx, %rcx
    sal %cl, %eax
    pop %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable mantissa
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    and %rbx, %rax
    cmp $0, %rax
    jne L115
    jmp L116
L115:
    mov $1, %rax
    movzbq %al, %rax

    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable base2
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ind
    mov -64(%rbp), %rax
    lea -64(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    jmp L116
L116:
    # if statement end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
L113:
    # load variable i
    mov -56(%rbp), %rax
    lea -56(%rbp), %rcx
    incl (%rcx)
    jmp L112
L114:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # initialize local variable : u64 int_por
    # int_por
    sub $8, %rsp
    movq $0, -56(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable int_por
    mov -56(%rbp), %rax
    lea -56(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 int_por
    # for loop start
    # initialize local variable : i32 i
    # i
    sub $8, %rsp
    movq $0, -64(%rbp)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -64(%rbp), %rax
    lea -64(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 i
L117:
    mov $60, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -64(%rbp), %rax
    lea -64(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    setl %al
    movzx %al, %rax
    cmp $0, %rax
    je L119
    # if statement start
    # load variable base2
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable zind
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %eax, %eax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -64(%rbp), %rax
    lea -64(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %ebx, %eax
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    cmp $0, %rax
    jne L120
    jmp L121
L120:
    # load variable i
    mov -64(%rbp), %rax
    lea -64(%rbp), %rcx
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    movsxd %eax, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    push %rcx
    mov %rbx, %rcx
    shl %cl, %rax
    pop %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable int_por
    mov -56(%rbp), %rax
    lea -56(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %rbx, %rax
    movq %rax, (%rcx)
    jmp L121
L121:
    # if statement end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
L118:
    # load variable i
    mov -64(%rbp), %rax
    lea -64(%rbp), %rcx
    incl (%rcx)
    jmp L117
L119:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # initialize local variable : i32 frac_precision
    # frac_precision
    sub $8, %rsp
    movq $0, -64(%rbp)
    mov $13, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable frac_precision
    mov -64(%rbp), %rax
    lea -64(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 frac_precision
    # initialize local variable : u64 frac_por
    # frac_por
    sub $8, %rsp
    movq $0, -72(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable frac_por
    mov -72(%rbp), %rax
    lea -72(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 frac_por
    # initialize local variable : u64 pow2
    # pow2
    sub $8, %rsp
    movq $0, -80(%rbp)
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable pow2
    mov -80(%rbp), %rax
    lea -80(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 pow2
    # for loop start
    # initialize local variable : i32 i
    # i
    sub $8, %rsp
    movq $0, -88(%rbp)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -88(%rbp), %rax
    lea -88(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 i
L122:
    # load variable frac_precision
    mov -64(%rbp), %rax
    lea -64(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -88(%rbp), %rax
    lea -88(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    setl %al
    movzx %al, %rax
    cmp $0, %rax
    je L124
    mov $10, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable pow2
    mov -80(%rbp), %rax
    lea -80(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    mul %rbx
    movq %rax, (%rcx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
L123:
    # load variable i
    mov -88(%rbp), %rax
    lea -88(%rbp), %rcx
    incl (%rcx)
    jmp L122
L124:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    mov $2, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable pow2
    mov -80(%rbp), %rax
    lea -80(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    xor %rdx, %rdx
    div %rbx
    movq %rax, (%rcx)
    # for loop start
    # initialize local variable : i32 i
    # i
    sub $8, %rsp
    movq $0, -88(%rbp)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable zind
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %eax, %eax
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %ebx, %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -88(%rbp), %rax
    lea -88(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 i
L125:
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -88(%rbp), %rax
    lea -88(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    setge %al
    movzx %al, %rax
    cmp $0, %rax
    je L127
    # if statement start
    # load variable base2
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -88(%rbp), %rax
    lea -88(%rbp), %rcx
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    cmp $0, %rax
    jne L128
    jmp L129
L128:
    # load variable pow2
    mov -80(%rbp), %rax
    lea -80(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable frac_por
    mov -72(%rbp), %rax
    lea -72(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %rbx, %rax
    movq %rax, (%rcx)
    jmp L129
L129:
    # if statement end
    mov $2, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable pow2
    mov -80(%rbp), %rax
    lea -80(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    xor %rdx, %rdx
    div %rbx
    movq %rax, (%rcx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
L126:
    # load variable i
    mov -88(%rbp), %rax
    lea -88(%rbp), %rcx
    decl (%rcx)
    jmp L125
L127:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # initialize local variable : u8* int_str
    # int_str
    sub $8, %rsp
    movq $0, -88(%rbp)
    # calling function : to_jstr
    # function call member variable : x
    # TMP:66
    sub $8, %rsp
    movq $0, -96(%rbp)
    # load variable int_por
    mov -56(%rbp), %rax
    lea -56(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:66
    mov -96(%rbp), %rax
    lea -96(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L57
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable int_str
    mov -88(%rbp), %rax
    lea -88(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u8* int_str
    # initialize local variable : u8* frac_str
    # frac_str
    sub $8, %rsp
    movq $0, -96(%rbp)
    # calling function : to_jstr
    # function call member variable : x
    # TMP:67
    sub $8, %rsp
    movq $0, -104(%rbp)
    # load variable frac_por
    mov -72(%rbp), %rax
    lea -72(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:67
    mov -104(%rbp), %rax
    lea -104(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L57
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable frac_str
    mov -96(%rbp), %rax
    lea -96(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u8* frac_str
    # initialize local variable : i32 int_len
    # int_len
    sub $8, %rsp
    movq $0, -104(%rbp)
    # calling function : strlen
    # function call member variable : s
    # TMP:68
    sub $8, %rsp
    movq $0, -112(%rbp)
    # load variable int_str
    mov -88(%rbp), %rax
    lea -88(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:68
    mov -112(%rbp), %rax
    lea -112(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L54
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    mov %eax, %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable int_len
    mov -104(%rbp), %rax
    lea -104(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 int_len
    # initialize local variable : i32 frac_len
    # frac_len
    sub $8, %rsp
    movq $0, -112(%rbp)
    # calling function : strlen
    # function call member variable : s
    # TMP:69
    sub $8, %rsp
    movq $0, -120(%rbp)
    # load variable frac_str
    mov -96(%rbp), %rax
    lea -96(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:69
    mov -120(%rbp), %rax
    lea -120(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L54
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    mov %eax, %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable frac_len
    mov -112(%rbp), %rax
    lea -112(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 frac_len
    # initialize local variable : i32 len
    # len
    sub $8, %rsp
    movq $0, -120(%rbp)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable frac_precision
    mov -64(%rbp), %rax
    lea -64(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable int_len
    mov -104(%rbp), %rax
    lea -104(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %ebx, %eax
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %ebx, %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable len
    mov -120(%rbp), %rax
    lea -120(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 len
    # if statement start
    # load variable sgn
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    cmp $0, %rax
    jne L130
    jmp L131
L130:
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable len
    mov -120(%rbp), %rax
    lea -120(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %ebx, %eax
    movl %eax, (%rcx)
    jmp L131
L131:
    # if statement end
    # initialize local variable : u8* out_str
    # out_str
    sub $8, %rsp
    movq $0, -128(%rbp)
    # calling function : malloc
    # function call member variable : sz
    # TMP:70
    sub $8, %rsp
    movq $0, -136(%rbp)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable len
    mov -120(%rbp), %rax
    lea -120(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %ebx, %eax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:70
    mov -136(%rbp), %rax
    lea -136(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable out_str
    mov -128(%rbp), %rax
    lea -128(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u8* out_str
    # initialize local variable : i32 ptr
    # ptr
    sub $8, %rsp
    movq $0, -136(%rbp)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ptr
    mov -136(%rbp), %rax
    lea -136(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 ptr
    # if statement start
    # load variable sgn
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    cmp $0, %rax
    jne L132
    jmp L133
L132:
    movb $45, %al
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable out_str
    mov -128(%rbp), %rax
    lea -128(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ptr
    mov -136(%rbp), %rax
    lea -136(%rbp), %rcx
    incl (%rcx)
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    jmp L133
L133:
    # if statement end
    # for loop start
    # initialize local variable : i32 i
    # i
    sub $8, %rsp
    movq $0, -144(%rbp)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -144(%rbp), %rax
    lea -144(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 i
L134:
    # load variable int_len
    mov -104(%rbp), %rax
    lea -104(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -144(%rbp), %rax
    lea -144(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    setl %al
    movzx %al, %rax
    cmp $0, %rax
    je L136
    # load variable int_str
    mov -88(%rbp), %rax
    lea -88(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -144(%rbp), %rax
    lea -144(%rbp), %rcx
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable out_str
    mov -128(%rbp), %rax
    lea -128(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ptr
    mov -136(%rbp), %rax
    lea -136(%rbp), %rcx
    incl (%rcx)
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
L135:
    # load variable i
    mov -144(%rbp), %rax
    lea -144(%rbp), %rcx
    incl (%rcx)
    jmp L134
L136:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    movb $46, %al
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable out_str
    mov -128(%rbp), %rax
    lea -128(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ptr
    mov -136(%rbp), %rax
    lea -136(%rbp), %rcx
    incl (%rcx)
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    # for loop start
    # initialize local variable : i32 i
    # i
    sub $8, %rsp
    movq $0, -144(%rbp)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -144(%rbp), %rax
    lea -144(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 i
L137:
    # load variable frac_len
    mov -112(%rbp), %rax
    lea -112(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable frac_precision
    mov -64(%rbp), %rax
    lea -64(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %ebx, %eax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -144(%rbp), %rax
    lea -144(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    setl %al
    movzx %al, %rax
    cmp $0, %rax
    je L139
    movb $48, %al
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable out_str
    mov -128(%rbp), %rax
    lea -128(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ptr
    mov -136(%rbp), %rax
    lea -136(%rbp), %rcx
    incl (%rcx)
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
L138:
    # load variable i
    mov -144(%rbp), %rax
    lea -144(%rbp), %rcx
    incl (%rcx)
    jmp L137
L139:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # for loop start
    # initialize local variable : i32 i
    # i
    sub $8, %rsp
    movq $0, -144(%rbp)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -144(%rbp), %rax
    lea -144(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 i
L140:
    # load variable frac_len
    mov -112(%rbp), %rax
    lea -112(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -144(%rbp), %rax
    lea -144(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    setl %al
    movzx %al, %rax
    cmp $0, %rax
    je L142
    # load variable frac_str
    mov -96(%rbp), %rax
    lea -96(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -144(%rbp), %rax
    lea -144(%rbp), %rcx
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable out_str
    mov -128(%rbp), %rax
    lea -128(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ptr
    mov -136(%rbp), %rax
    lea -136(%rbp), %rcx
    incl (%rcx)
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
L141:
    # load variable i
    mov -144(%rbp), %rax
    lea -144(%rbp), %rcx
    incl (%rcx)
    jmp L140
L142:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    mov $0, %rax
    movzbq %al, %rax

    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable out_str
    mov -128(%rbp), %rax
    lea -128(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ptr
    mov -136(%rbp), %rax
    lea -136(%rbp), %rcx
    incl (%rcx)
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    # TMP:71
    sub $8, %rsp
    movq $0, -144(%rbp)
    # load variable out_str
    mov -128(%rbp), %rax
    lea -128(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:71
    mov -144(%rbp), %rax
    lea -144(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -144(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $136, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $136, %rsp

# assert(i32)
L59:
    push %rbp
    mov %rsp, %rbp
    # if statement start
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    test %eax, %eax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L143
    jmp L144
L143:
    # calling function : puts_endl
    # function call member variable : s
    # TMP:72
    sub $8, %rsp
    movq $0, -8(%rbp)
    lea L145(%rip), %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:72
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L64
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # calling function : sys_exit
    # function call member variable : status
    # TMP:73
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:73
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    call L40
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L144
L144:
    # if statement end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# assert(u64)
L60:
    push %rbp
    mov %rsp, %rbp
    # if statement start
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    test %rax, %rax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L146
    jmp L147
L146:
    # calling function : puts_endl
    # function call member variable : s
    # TMP:74
    sub $8, %rsp
    movq $0, -8(%rbp)
    lea L145(%rip), %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:74
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L64
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # calling function : sys_exit
    # function call member variable : status
    # TMP:75
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:75
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    call L40
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L147
L147:
    # if statement end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# stou64(string)
L61:
    push %rbp
    mov %rsp, %rbp
    # if statement start
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable s
    mov 16(%rbp), %rax
    mov 16(%rbp), %rcx
    # calling function : size
    push %rax    # FunctionCall::emit_asm() : target struct
    call L31
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L148
    jmp L149
L148:
    # load variable ERR_MALFORMED
    mov 8(%r15), %rax
    lea 8(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable errno
    mov 24(%r15), %rax
    lea 24(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:76
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $1, %rax
    neg %eax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:76
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L149
L149:
    # if statement end
    # initialize local variable : u64 ptr
    # ptr
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ptr
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 ptr
    # initialize local variable : u64 ans
    # ans
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ans
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 ans
    # for loop start
    # initialize local variable : i32 i
    # i
    sub $8, %rsp
    movq $0, -24(%rbp)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 i
L150:
    # load variable s
    mov 16(%rbp), %rax
    mov 16(%rbp), %rcx
    # calling function : size
    push %rax    # FunctionCall::emit_asm() : target struct
    call L31
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    mov %eax, %eax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    setl %al
    movzx %al, %rax
    cmp $0, %rax
    je L152
    # initialize local variable : u8 c
    # c
    sub $8, %rsp
    movq $0, -32(%rbp)
    # calling overload : 
    # TMP:77
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable s
    mov 16(%rbp), %rax
    mov 16(%rbp), %rcx
    movq %rcx, -40(%rbp)
    # TMP:78
    sub $8, %rsp
    movq $0, -48(%rbp)
    # load variable i
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:78
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    call L77
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type u8
    mov %rax, %rcx
    movzbq (%rax), %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable c
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    # done initialize local variable : u8 c
    # if statement start
    movb $48, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable c
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %bl, %al
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    jne L155
    push %rax    # ExprBinary::emit_asm() : || save left
    movb $57, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable c
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %bl, %al
    seta %al
    movzx %al, %rax
    mov %rax, %rbx
    pop %rax    # ExprBinary::emit_asm() : || save left
    test %eax, %ebx
    setne %al
    movzx %al, %rax
    test %ebx, %ebx
    setne %bl
    movzx %bl, %rbx
    or %rbx, %rax
L155:
    cmp $0, %rax
    jne L153
    jmp L154
L153:
    # load variable ERR_MALFORMED
    mov 8(%r15), %rax
    lea 8(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable errno
    mov 24(%r15), %rax
    lea 24(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:79
    sub $8, %rsp
    movq $0, -40(%rbp)
    mov $1, %rax
    neg %eax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:79
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -40(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $32, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L154
L154:
    # if statement end
    # initialize local variable : u64 dig
    # dig
    sub $8, %rsp
    movq $0, -40(%rbp)
    movb $48, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable c
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %bl, %al
    movzbq %al, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable dig
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 dig
    # if statement start
    mov $10, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable dig
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable U64_MAX
    mov 152(%r15), %rax
    lea 152(%r15), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %rbx, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    xor %rdx, %rdx
    div %rbx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable ans
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    seta %al
    movzx %al, %rax
    cmp $0, %rax
    jne L156
    jmp L157
L156:
    # load variable ERR_RANGE
    mov 16(%r15), %rax
    lea 16(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable errno
    mov 24(%r15), %rax
    lea 24(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:80
    sub $8, %rsp
    movq $0, -48(%rbp)
    mov $1, %rax
    neg %eax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:80
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -48(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $40, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L157
L157:
    # if statement end
    movb $48, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable c
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %bl, %al
    movzbq %al, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    mov $10, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable ans
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    mul %rbx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ans
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
L151:
    # load variable i
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    incl (%rcx)
    jmp L150
L152:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # TMP:81
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable ans
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:81
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -24(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp

# stoi32(string)
L62:
    push %rbp
    mov %rsp, %rbp
    # if statement start
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable s
    mov 16(%rbp), %rax
    mov 16(%rbp), %rcx
    # calling function : size
    push %rax    # FunctionCall::emit_asm() : target struct
    call L31
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L158
    jmp L159
L158:
    # load variable ERR_MALFORMED
    mov 8(%r15), %rax
    lea 8(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable errno
    mov 24(%r15), %rax
    lea 24(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:82
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $1, %rax
    neg %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:82
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L159
L159:
    # if statement end
    # initialize local variable : u64 ptr
    # ptr
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ptr
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 ptr
    # initialize local variable : i32 is_neg
    # is_neg
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable is_neg
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 is_neg
    # if statement start
    movb $45, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # calling overload : 
    # TMP:83
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable s
    mov 16(%rbp), %rax
    mov 16(%rbp), %rcx
    movq %rcx, -32(%rbp)
    # TMP:84
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable ptr
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:84
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L76
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type u8
    mov %rax, %rcx
    movzbq (%rax), %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %bl, %al
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L160
    jmp L161
L160:
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable is_neg
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # load variable ptr
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    incq (%rcx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L161
L161:
    # if statement end
    # if statement start
    # load variable ptr
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable s
    mov 16(%rbp), %rax
    mov 16(%rbp), %rcx
    # calling function : size
    push %rax    # FunctionCall::emit_asm() : target struct
    call L31
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L162
    jmp L163
L162:
    # load variable ERR_MALFORMED
    mov 8(%r15), %rax
    lea 8(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable errno
    mov 24(%r15), %rax
    lea 24(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:85
    sub $8, %rsp
    movq $0, -24(%rbp)
    mov $1, %rax
    neg %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:85
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    mov -24(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L163
L163:
    # if statement end
    # while loop start
L164:
    # load variable s
    mov 16(%rbp), %rax
    mov 16(%rbp), %rcx
    # calling function : size
    push %rax    # FunctionCall::emit_asm() : target struct
    call L31
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable ptr
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setne %al
    movzx %al, %rax
    cmp $0, %rax
    je L167
    push %rax    # ExprBinary::emit_asm() : && save left
    movb $48, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # calling overload : 
    # TMP:86
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable s
    mov 16(%rbp), %rax
    mov 16(%rbp), %rcx
    movq %rcx, -40(%rbp)
    # TMP:87
    sub $8, %rsp
    movq $0, -48(%rbp)
    # load variable ptr
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:87
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L76
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type u8
    mov %rax, %rcx
    movzbq (%rax), %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %bl, %al
    sete %al
    movzx %al, %rax
    mov %rax, %rbx
    pop %rax    # ExprBinary::emit_asm() : && save left
    test %eax, %ebx
    setne %al
    movzx %al, %rax
    test %ebx, %ebx
    setne %bl
    movzx %bl, %rbx
    and %rbx, %rax
L167:
    cmp $0, %rax
    je L166
    # load variable ptr
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    incq (%rcx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
L165:
    jmp L164
L166:
    # while loop end
    # initialize local variable : i32 ans
    # ans
    sub $8, %rsp
    movq $0, -24(%rbp)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ans
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 ans
    # if statement start
    # load variable is_neg
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    cmp $0, %rax
    jne L168
    jmp L169
L168:
    movb $48, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # calling overload : 
    # TMP:88
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable s
    mov 16(%rbp), %rax
    mov 16(%rbp), %rcx
    movq %rcx, -40(%rbp)
    # TMP:89
    sub $8, %rsp
    movq $0, -48(%rbp)
    # load variable ptr
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:89
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L76
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type u8
    mov %rax, %rcx
    movzbq (%rax), %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %bl, %al
    movzbl %al, %eax
    neg %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ans
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # for loop start
    # initialize local variable : i32 i
    # i
    sub $8, %rsp
    movq $0, -32(%rbp)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable ptr
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %eax, %eax
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %ebx, %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 i
L171:
    # load variable s
    mov 16(%rbp), %rax
    mov 16(%rbp), %rcx
    # calling function : size
    push %rax    # FunctionCall::emit_asm() : target struct
    call L31
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    mov %eax, %eax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    setl %al
    movzx %al, %rax
    cmp $0, %rax
    je L173
    # initialize local variable : u8 c
    # c
    sub $8, %rsp
    movq $0, -40(%rbp)
    # calling overload : 
    # TMP:90
    sub $8, %rsp
    movq $0, -48(%rbp)
    # load variable s
    mov 16(%rbp), %rax
    mov 16(%rbp), %rcx
    movq %rcx, -48(%rbp)
    # TMP:91
    sub $8, %rsp
    movq $0, -56(%rbp)
    # load variable i
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:91
    mov -56(%rbp), %rax
    lea -56(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    call L77
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type u8
    mov %rax, %rcx
    movzbq (%rax), %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable c
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    # done initialize local variable : u8 c
    # if statement start
    movb $48, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable c
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %bl, %al
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    jne L176
    push %rax    # ExprBinary::emit_asm() : || save left
    movb $57, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable c
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %bl, %al
    seta %al
    movzx %al, %rax
    mov %rax, %rbx
    pop %rax    # ExprBinary::emit_asm() : || save left
    test %eax, %ebx
    setne %al
    movzx %al, %rax
    test %ebx, %ebx
    setne %bl
    movzx %bl, %rbx
    or %rbx, %rax
L176:
    cmp $0, %rax
    jne L174
    jmp L175
L174:
    # load variable ERR_MALFORMED
    mov 8(%r15), %rax
    lea 8(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable errno
    mov 24(%r15), %rax
    lea 24(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:92
    sub $8, %rsp
    movq $0, -48(%rbp)
    mov $1, %rax
    neg %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:92
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    mov -48(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $40, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L175
L175:
    # if statement end
    # initialize local variable : i32 dig
    # dig
    sub $8, %rsp
    movq $0, -48(%rbp)
    movb $48, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable c
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %bl, %al
    movzbl %al, %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable dig
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 dig
    # if statement start
    mov $10, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable dig
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable I32_MIN
    mov 192(%r15), %rax
    lea 192(%r15), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %ebx, %eax
    pop %rbx    # ExprBinary::emit_asm() : save right
    movsx %eax, %rax
    movsx %ebx, %rbx
    cqo
    idiv %rbx
    mov %eax, %eax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable ans
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    setl %al
    movzx %al, %rax
    cmp $0, %rax
    jne L177
    jmp L178
L177:
    # load variable ERR_RANGE
    mov 16(%r15), %rax
    lea 16(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable errno
    mov 24(%r15), %rax
    lea 24(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:93
    sub $8, %rsp
    movq $0, -56(%rbp)
    mov $1, %rax
    neg %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:93
    mov -56(%rbp), %rax
    lea -56(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    mov -56(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $48, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L178
L178:
    # if statement end
    # load variable dig
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    mov $10, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable ans
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    imul %ebx, %eax
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %ebx, %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ans
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
L172:
    # load variable i
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    incl (%rcx)
    jmp L171
L173:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L170
L169:
    # for loop start
    # initialize local variable : i32 i
    # i
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable ptr
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %eax, %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 i
L179:
    # load variable s
    mov 16(%rbp), %rax
    mov 16(%rbp), %rcx
    # calling function : size
    push %rax    # FunctionCall::emit_asm() : target struct
    call L31
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    mov %eax, %eax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    setl %al
    movzx %al, %rax
    cmp $0, %rax
    je L181
    # initialize local variable : u8 c
    # c
    sub $8, %rsp
    movq $0, -40(%rbp)
    # calling overload : 
    # TMP:94
    sub $8, %rsp
    movq $0, -48(%rbp)
    # load variable s
    mov 16(%rbp), %rax
    mov 16(%rbp), %rcx
    movq %rcx, -48(%rbp)
    # TMP:95
    sub $8, %rsp
    movq $0, -56(%rbp)
    # load variable i
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:95
    mov -56(%rbp), %rax
    lea -56(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    call L77
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type u8
    mov %rax, %rcx
    movzbq (%rax), %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable c
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    # done initialize local variable : u8 c
    # if statement start
    movb $48, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable c
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %bl, %al
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    jne L184
    push %rax    # ExprBinary::emit_asm() : || save left
    movb $57, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable c
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %bl, %al
    seta %al
    movzx %al, %rax
    mov %rax, %rbx
    pop %rax    # ExprBinary::emit_asm() : || save left
    test %eax, %ebx
    setne %al
    movzx %al, %rax
    test %ebx, %ebx
    setne %bl
    movzx %bl, %rbx
    or %rbx, %rax
L184:
    cmp $0, %rax
    jne L182
    jmp L183
L182:
    # load variable ERR_MALFORMED
    mov 8(%r15), %rax
    lea 8(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable errno
    mov 24(%r15), %rax
    lea 24(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:96
    sub $8, %rsp
    movq $0, -48(%rbp)
    mov $1, %rax
    neg %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:96
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    mov -48(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $40, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L183
L183:
    # if statement end
    # initialize local variable : i32 dig
    # dig
    sub $8, %rsp
    movq $0, -48(%rbp)
    movb $48, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable c
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %bl, %al
    movzbl %al, %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable dig
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 dig
    # if statement start
    mov $10, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable dig
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable I32_MAX
    mov 184(%r15), %rax
    lea 184(%r15), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %ebx, %eax
    pop %rbx    # ExprBinary::emit_asm() : save right
    movsx %eax, %rax
    movsx %ebx, %rbx
    cqo
    idiv %rbx
    mov %eax, %eax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable ans
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %ebx, %eax
    setg %al
    movzx %al, %rax
    cmp $0, %rax
    jne L185
    jmp L186
L185:
    # load variable ERR_RANGE
    mov 16(%r15), %rax
    lea 16(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable errno
    mov 24(%r15), %rax
    lea 24(%r15), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:97
    sub $8, %rsp
    movq $0, -56(%rbp)
    mov $1, %rax
    neg %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:97
    mov -56(%rbp), %rax
    lea -56(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    mov -56(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $48, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L186
L186:
    # if statement end
    # load variable dig
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    mov $10, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable ans
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    imul %ebx, %eax
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %ebx, %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ans
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
L180:
    # load variable i
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    incl (%rcx)
    jmp L179
L181:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L170
L170:
    # if statement end
    # TMP:98
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable ans
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:98
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    mov -32(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $24, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $24, %rsp

# puts(u8*)
L63:
    push %rbp
    mov %rsp, %rbp
    # calling function : sys_write
    # function call member variable : fd
    # TMP:99
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:99
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # function call member variable : buf
    # TMP:100
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable s
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:100
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : count
    # TMP:101
    sub $8, %rsp
    movq $0, -24(%rbp)
    # calling function : strlen
    # function call member variable : s
    # TMP:102
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable s
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:102
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L54
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:101
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L41
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $24, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# puts_endl(u8*)
L64:
    push %rbp
    mov %rsp, %rbp
    # calling function : sys_write
    # function call member variable : fd
    # TMP:103
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:103
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # function call member variable : buf
    # TMP:104
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable s
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:104
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : count
    # TMP:105
    sub $8, %rsp
    movq $0, -24(%rbp)
    # calling function : strlen
    # function call member variable : s
    # TMP:106
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable s
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:106
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L54
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:105
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L41
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $24, %rsp
    # calling function : sys_write
    # function call member variable : fd
    # TMP:107
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:107
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # function call member variable : buf
    # TMP:108
    sub $8, %rsp
    movq $0, -16(%rbp)
    lea L95(%rip), %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:108
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : count
    # TMP:109
    sub $8, %rsp
    movq $0, -24(%rbp)
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:109
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L41
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $24, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# puti(i32)
L65:
    push %rbp
    mov %rsp, %rbp
    # calling function : puts
    # function call member variable : s
    # TMP:110
    sub $8, %rsp
    movq $0, -8(%rbp)
    # calling function : to_jstr
    # function call member variable : x
    # TMP:111
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:111
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    call L56
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:110
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L63
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# puti_endl(i32)
L66:
    push %rbp
    mov %rsp, %rbp
    # calling function : puts_endl
    # function call member variable : s
    # TMP:112
    sub $8, %rsp
    movq $0, -8(%rbp)
    # calling function : to_jstr
    # function call member variable : x
    # TMP:113
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:113
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    call L56
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:112
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L64
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# ostream::write_to_fd(string)
L23:
    push %rbp
    mov %rsp, %rbp
    # calling function : sys_write
    # function call member variable : fd
    # TMP:114
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    # accessing member variable fd, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movl (%rax), %eax
    # done accessing member variable fd
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:114
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # function call member variable : buf
    # TMP:115
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable str
    mov 16(%rbp), %rax
    mov 16(%rbp), %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:115
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : count
    # TMP:116
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable str
    mov 16(%rbp), %rax
    mov 16(%rbp), %rcx
    # calling function : size
    push %rax    # FunctionCall::emit_asm() : target struct
    call L31
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:116
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L41
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $24, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# istream::refresh_buf()
L4:
    push %rbp
    mov %rsp, %rbp
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable buf_ptr, offset : 20
    lea 20(%rax), %rcx
    lea 20(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable buf_ptr
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # calling function : sys_read
    # function call member variable : fd
    # TMP:117
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable fd, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movl (%rax), %eax
    # done accessing member variable fd
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:117
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # function call member variable : buf
    # TMP:118
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable buf, offset : 4
    lea 4(%rax), %rcx
    lea 4(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable buf
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:118
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : count
    # TMP:119
    sub $8, %rsp
    movq $0, -24(%rbp)
    mov $4096, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:119
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L42
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $24, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable buf_sz, offset : 12
    lea 12(%rax), %rcx
    lea 12(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable buf_sz
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # if statement start
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable buf_sz, offset : 12
    lea 12(%rax), %rcx
    lea 12(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable buf_sz
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L187
    jmp L188
L187:
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable is_eof, offset : 28
    lea 28(%rax), %rcx
    lea 28(%rax), %rax
    movl (%rax), %eax
    # done accessing member variable is_eof
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    jmp L188
L188:
    # if statement end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# istream::is_whitespace(u8)
L5:
    push %rbp
    mov %rsp, %rbp
    # TMP:120
    sub $8, %rsp
    movq $0, -8(%rbp)
    movb $32, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable c
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %bl, %al
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L191
    push %rax    # ExprBinary::emit_asm() : || save left
    movb $10, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable c
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %bl, %al
    sete %al
    movzx %al, %rax
    mov %rax, %rbx
    pop %rax    # ExprBinary::emit_asm() : || save left
    test %eax, %ebx
    setne %al
    movzx %al, %rax
    test %ebx, %ebx
    setne %bl
    movzx %bl, %rbx
    or %rbx, %rax
L191:
    cmp $0, %rax
    jne L190
    push %rax    # ExprBinary::emit_asm() : || save left
    movb $9, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable c
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %bl, %al
    sete %al
    movzx %al, %rax
    mov %rax, %rbx
    pop %rax    # ExprBinary::emit_asm() : || save left
    test %eax, %ebx
    setne %al
    movzx %al, %rax
    test %ebx, %ebx
    setne %bl
    movzx %bl, %rbx
    or %rbx, %rax
L190:
    cmp $0, %rax
    jne L189
    push %rax    # ExprBinary::emit_asm() : || save left
    movb $13, %al
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable c
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %bl, %al
    sete %al
    movzx %al, %rax
    mov %rax, %rbx
    pop %rax    # ExprBinary::emit_asm() : || save left
    test %eax, %ebx
    setne %al
    movzx %al, %rax
    test %ebx, %ebx
    setne %bl
    movzx %bl, %rbx
    or %rbx, %rax
L189:
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:120
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# istream::next_char()
L6:
    push %rbp
    mov %rsp, %rbp
    # while loop start
L192:
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # calling function : eof
    push %rax    # FunctionCall::emit_asm() : target struct
    call L8
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    test %eax, %eax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    je L195
    push %rax    # ExprBinary::emit_asm() : && save left
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable buf_sz, offset : 12
    lea 12(%rax), %rcx
    lea 12(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable buf_sz
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable buf_ptr, offset : 20
    lea 20(%rax), %rcx
    lea 20(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable buf_ptr
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    sete %al
    movzx %al, %rax
    mov %rax, %rbx
    pop %rax    # ExprBinary::emit_asm() : && save left
    test %eax, %ebx
    setne %al
    movzx %al, %rax
    test %ebx, %ebx
    setne %bl
    movzx %bl, %rbx
    and %rbx, %rax
L195:
    cmp $0, %rax
    je L194
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # calling function : refresh_buf
    push %rax    # FunctionCall::emit_asm() : target struct
    call L4
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
L193:
    jmp L192
L194:
    # while loop end
    # if statement start
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # calling function : eof
    push %rax    # FunctionCall::emit_asm() : target struct
    call L8
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    cmp $0, %rax
    jne L196
    jmp L197
L196:
    # TMP:121
    sub $8, %rsp
    movq $0, -8(%rbp)
    movb $0, %al
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:121
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    jmp L197
L197:
    # if statement end
    # TMP:122
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable buf, offset : 4
    lea 4(%rax), %rcx
    lea 4(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable buf
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable buf_ptr, offset : 20
    lea 20(%rax), %rcx
    lea 20(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable buf_ptr
    incq (%rcx)
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:122
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# istream::next_token()
L7:
    push %rbp
    mov %rsp, %rbp
    # initialize local variable : vector<u8> tok
    # tok
    sub $8, %rsp
    # calling constructor : vector<u8>
    mov $24, %rax
    push %rax    # emit_malloc() : malloc arg
    call L49
    # emit_malloc() : malloc arg
    add $8, %rsp
    # initialize struct vector<u8>
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory vector<u8>
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    call L17
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    movq %rax, -8(%rbp)
    # calling constructor : vector<u8>
    mov $24, %rax
    push %rax    # emit_malloc() : malloc arg
    call L49
    # emit_malloc() : malloc arg
    add $8, %rsp
    # initialize struct vector<u8>
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory vector<u8>
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    # TMP:123
    sub $8, %rsp
    movq $0, -32(%rbp)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:123
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # TMP:124
    sub $8, %rsp
    movq $0, -40(%rbp)
    movb $0, %al
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:124
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    call L20
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    # expression struct assignment tmp variable
    push %rax    # TMP:125
    # load variable tok
    mov -8(%rbp), %rax
    mov -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling destructor : vector<u8>
    push %rax    # DestructorCall::emit_asm() : target struct
    call L21
    pop %rax    # DestructorCall::emit_asm() : target struct
    pop %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling constructor : vector<u8>
    # initialize struct vector<u8>
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory vector<u8>
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    # TMP:126
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable TMP:125
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    movq %rcx, -40(%rbp)
    call L18
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ExprBinary::emit_asm() : save struct addr during right dealloc
    movq -16(%rbp), %rax
    # calling destructor : vector<u8>
    push %rax    # DestructorCall::emit_asm() : target struct
    call L21
    pop %rax    # DestructorCall::emit_asm() : target struct
    push %rax    # emit_free() : free addr
    mov $24, %rax
    push %rax    # emit_free() : free sz_bytes
    call L50
    add $16, %rsp
    pop %rax    # ExprBinary::emit_asm() : save struct addr during right dealloc
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    mov %rax, %rcx
    # done initialize local variable : vector<u8> tok
    # initialize local variable : i32 found_tok
    # found_tok
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable found_tok
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # done initialize local variable : i32 found_tok
    # while loop start
L198:
    mov $1, %rax
    cmp $0, %rax
    je L200
    # initialize local variable : u8 c
    # c
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # calling function : next_char
    push %rax    # FunctionCall::emit_asm() : target struct
    call L6
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable c
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    # done initialize local variable : u8 c
    # if statement start
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # calling function : eof
    push %rax    # FunctionCall::emit_asm() : target struct
    call L8
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    cmp $0, %rax
    jne L201
    jmp L202
L201:
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    jmp L200
    jmp L202
L202:
    # if statement end
    # if statement start
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # calling function : is_whitespace
    push %rax    # FunctionCall::emit_asm() : target struct
    # function call member variable : c
    # TMP:127
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable c
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:127
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    call L5
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    cmp $0, %rax
    jne L203
    jmp L204
L203:
    # if statement start
    # load variable found_tok
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    cmp $0, %rax
    jne L206
    jmp L207
L206:
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    jmp L200
    jmp L207
L207:
    # if statement end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L205
L204:
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable found_tok
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # load variable tok
    mov -8(%rbp), %rax
    mov -8(%rbp), %rcx
    # calling function : push_back
    push %rax    # FunctionCall::emit_asm() : target struct
    # function call member variable : x
    # TMP:128
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable c
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:128
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    call L15
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L205
L205:
    # if statement end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
L199:
    jmp L198
L200:
    # while loop end
    # if statement start
    # load variable found_tok
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    test %eax, %eax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L208
    jmp L209
L208:
    # TMP:129
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable nullptr
    mov 88(%r15), %rax
    lea 88(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:129
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -24(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    movq -8(%rbp), %rax
    # calling destructor : vector<u8>
    push %rax    # DestructorCall::emit_asm() : target struct
    call L21
    pop %rax    # DestructorCall::emit_asm() : target struct
    push %rax    # emit_free() : free addr
    mov $24, %rax
    push %rax    # emit_free() : free sz_bytes
    call L50
    add $16, %rsp
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    pop %rbp
    ret
    jmp L209
L209:
    # if statement end
    # initialize local variable : u8* ret
    # ret
    sub $8, %rsp
    movq $0, -24(%rbp)
    # calling function : malloc
    # function call member variable : sz
    # TMP:130
    sub $8, %rsp
    movq $0, -32(%rbp)
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable tok
    mov -8(%rbp), %rax
    mov -8(%rbp), %rcx
    # calling function : size
    push %rax    # FunctionCall::emit_asm() : target struct
    call L16
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:130
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ret
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u8* ret
    # for loop start
    # initialize local variable : u64 i
    # i
    sub $8, %rsp
    movq $0, -32(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 i
L210:
    # load variable tok
    mov -8(%rbp), %rax
    mov -8(%rbp), %rcx
    # calling function : size
    push %rax    # FunctionCall::emit_asm() : target struct
    call L16
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    je L212
    # calling overload : 
    # TMP:131
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable tok
    mov -8(%rbp), %rax
    mov -8(%rbp), %rcx
    movq %rcx, -40(%rbp)
    # TMP:132
    sub $8, %rsp
    movq $0, -48(%rbp)
    # load variable i
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:132
    mov -48(%rbp), %rax
    lea -48(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L213
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type u8
    mov %rax, %rcx
    movzbq (%rax), %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ret
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
L211:
    # load variable i
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    incq (%rcx)
    jmp L210
L212:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    movb $0, %al
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ret
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable tok
    mov -8(%rbp), %rax
    mov -8(%rbp), %rcx
    # calling function : size
    push %rax    # FunctionCall::emit_asm() : target struct
    call L16
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    # TMP:133
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable ret
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:133
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -32(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    movq -8(%rbp), %rax
    # calling destructor : vector<u8>
    push %rax    # DestructorCall::emit_asm() : target struct
    call L21
    pop %rax    # DestructorCall::emit_asm() : target struct
    push %rax    # emit_free() : free addr
    mov $24, %rax
    push %rax    # emit_free() : free sz_bytes
    call L50
    add $16, %rsp
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $24, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    movq -8(%rbp), %rax
    # calling destructor : vector<u8>
    push %rax    # DestructorCall::emit_asm() : target struct
    call L21
    pop %rax    # DestructorCall::emit_asm() : target struct
    push %rax    # emit_free() : free addr
    mov $24, %rax
    push %rax    # emit_free() : free sz_bytes
    call L50
    add $16, %rsp
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $24, %rsp

# istream::eof()
L8:
    push %rbp
    mov %rsp, %rbp
    # TMP:134
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable is_eof, offset : 28
    lea 28(%rax), %rcx
    lea 28(%rax), %rax
    movl (%rax), %eax
    # done accessing member variable is_eof
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:134
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# vector<u8>::grow()
L13:
    push %rbp
    mov %rsp, %rbp
    # initialize local variable : u64 old_cap
    # old_cap
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable old_cap
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 old_cap
    mov $2, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    pop %rbx    # ExprBinary::emit_asm() : save right
    mul %rbx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # initialize local variable : u8* narr
    # narr
    sub $8, %rsp
    movq $0, -16(%rbp)
    # calling function : malloc
    # function call member variable : sz
    # TMP:135
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    mul %rbx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:135
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable narr
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u8* narr
    # for loop start
    # initialize local variable : u64 i
    # i
    sub $8, %rsp
    movq $0, -24(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 i
L214:
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    je L216
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable narr
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
L215:
    # load variable i
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    incq (%rcx)
    jmp L214
L216:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # calling function : free
    # function call member variable : addr
    # TMP:136
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:136
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : sz
    # TMP:137
    sub $8, %rsp
    movq $0, -32(%rbp)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable old_cap
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    mul %rbx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:137
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L50
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # load variable narr
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    pop %rbp
    ret

# vector<u8>::pop_back()
L14:
    push %rbp
    mov %rsp, %rbp
    # if statement start
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L217
    jmp L218
L217:
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    jmp L218
L218:
    # if statement end
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# vector<u8>::push_back(u8)
L15:
    push %rbp
    mov %rsp, %rbp
    # if statement start
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L219
    jmp L220
L219:
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # calling function : grow
    push %rax    # FunctionCall::emit_asm() : target struct
    call L13
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    jmp L220
L220:
    # if statement end
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# vector<u8>::size()
L16:
    push %rbp
    mov %rsp, %rbp
    # TMP:138
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:138
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# ostream::write_to_fd(u8*)
L22:
    push %rbp
    mov %rsp, %rbp
    # calling function : sys_write
    # function call member variable : fd
    # TMP:139
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    # accessing member variable fd, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movl (%rax), %eax
    # done accessing member variable fd
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:139
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # function call member variable : buf
    # TMP:140
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable str
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:140
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : count
    # TMP:141
    sub $8, %rsp
    movq $0, -24(%rbp)
    # calling function : strlen
    # function call member variable : s
    # TMP:142
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable str
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:142
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L54
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:141
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L41
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $24, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# istream::init_buf()
L3:
    push %rbp
    mov %rsp, %rbp
    # calling function : malloc
    # function call member variable : sz
    # TMP:143
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $4096, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:143
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable buf, offset : 4
    lea 4(%rax), %rcx
    lea 4(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable buf
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable buf_sz, offset : 12
    lea 12(%rax), %rcx
    lea 12(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable buf_sz
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable buf_ptr, offset : 20
    lea 20(%rax), %rcx
    lea 20(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable buf_ptr
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov $0, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable is_eof, offset : 28
    lea 28(%rax), %rcx
    lea 28(%rax), %rax
    movl (%rax), %eax
    # done accessing member variable is_eof
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# string::grow()
L28:
    push %rbp
    mov %rsp, %rbp
    # initialize local variable : u64 old_cap
    # old_cap
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable old_cap
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 old_cap
    mov $2, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    pop %rbx    # ExprBinary::emit_asm() : save right
    mul %rbx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # initialize local variable : u8* narr
    # narr
    sub $8, %rsp
    movq $0, -16(%rbp)
    # calling function : malloc
    # function call member variable : sz
    # TMP:144
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:144
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable narr
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u8* narr
    # for loop start
    # initialize local variable : u64 i
    # i
    sub $8, %rsp
    movq $0, -24(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 i
L221:
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    je L223
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable narr
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
L222:
    # load variable i
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    incq (%rcx)
    jmp L221
L223:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # calling function : free
    # function call member variable : addr
    # TMP:145
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:145
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : sz
    # TMP:146
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable old_cap
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:146
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L50
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # load variable narr
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    pop %rbp
    ret

# string::pop_back()
L29:
    push %rbp
    mov %rsp, %rbp
    # if statement start
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L224
    jmp L225
L224:
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    jmp L225
L225:
    # if statement end
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# string::push_back(u8)
L30:
    push %rbp
    mov %rsp, %rbp
    # if statement start
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L226
    jmp L227
L226:
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # calling function : grow
    push %rax    # FunctionCall::emit_asm() : target struct
    call L28
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    jmp L227
L227:
    # if statement end
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# string::size()
L31:
    push %rbp
    mov %rsp, %rbp
    # TMP:147
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:147
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# string::jstr()
L32:
    push %rbp
    mov %rsp, %rbp
    # initialize local variable : u8* ret
    # ret
    sub $8, %rsp
    movq $0, -8(%rbp)
    # calling function : malloc
    # function call member variable : sz
    # TMP:148
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    pop %rbx    # ExprBinary::emit_asm() : save right
    add %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:148
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ret
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u8* ret
    # for loop start
    # initialize local variable : u64 i
    # i
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 i
L228:
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    je L230
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ret
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
L229:
    # load variable i
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    incq (%rcx)
    jmp L228
L230:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    movb $0, %al
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable ret
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    # TMP:149
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable ret
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:149
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -16(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp

# string::reverse()
L33:
    push %rbp
    mov %rsp, %rbp
    # for loop start
    # initialize local variable : u64 i
    # i
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 i
L231:
    mov $2, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    pop %rbx    # ExprBinary::emit_asm() : save right
    xor %rdx, %rdx
    div %rbx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    je L233
    # initialize local variable : u8 tmp
    # tmp
    sub $8, %rsp
    movq $0, -16(%rbp)
    # calling overload : 
    # TMP:150
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    movq %rcx, -24(%rbp)
    # TMP:151
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:151
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L76
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type u8
    mov %rax, %rcx
    movzbq (%rax), %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable tmp
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    # done initialize local variable : u8 tmp
    # calling overload : 
    # TMP:152
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    movq %rcx, -24(%rbp)
    # TMP:153
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %rbx, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:153
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L76
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type u8
    mov %rax, %rcx
    movzbq (%rax), %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # calling overload : 
    # TMP:154
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    movq %rcx, -32(%rbp)
    # TMP:155
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:155
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L76
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type u8
    mov %rax, %rcx
    movzbq (%rax), %rax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    # load variable tmp
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # calling overload : 
    # TMP:156
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    movq %rcx, -32(%rbp)
    # TMP:157
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %rbx, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    sub %rbx, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:157
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L76
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    # dereferencing to type u8
    mov %rax, %rcx
    movzbq (%rax), %rax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
L232:
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    incq (%rcx)
    jmp L231
L233:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# sys_exit(i32)
L40:
    push %rbp
    mov %rsp, %rbp
    # syscall : 60
    # TMP:158
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable status
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:158
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    mov $60, %rax
    movq -8(%rbp), %rdi
    syscall
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # done syscall : 60
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# sys_write(i32, void*, u64)
L41:
    push %rbp
    mov %rsp, %rbp
    # TMP:159
    sub $8, %rsp
    movq $0, -8(%rbp)
    # syscall : 1
    # TMP:160
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable fd
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:160
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # TMP:161
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable buf
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:161
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:162
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable count
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:162
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov $1, %rax
    movq -16(%rbp), %rdi
    movq -24(%rbp), %rsi
    movq -32(%rbp), %rdx
    syscall
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $24, %rsp
    # done syscall : 1
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:159
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# sys_read(i32, void*, u64)
L42:
    push %rbp
    mov %rsp, %rbp
    # TMP:163
    sub $8, %rsp
    movq $0, -8(%rbp)
    # syscall : 0
    # TMP:164
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable fd
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:164
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # TMP:165
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable buf
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:165
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # TMP:166
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable count
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:166
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov $0, %rax
    movq -16(%rbp), %rdi
    movq -24(%rbp), %rsi
    movq -32(%rbp), %rdx
    syscall
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $24, %rsp
    # done syscall : 0
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:163
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# sys_brk(u64)
L43:
    push %rbp
    mov %rsp, %rbp
    # TMP:167
    sub $8, %rsp
    movq $0, -8(%rbp)
    # syscall : 12
    # TMP:168
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable addr
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:168
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov $12, %rax
    movq -16(%rbp), %rdi
    syscall
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # done syscall : 12
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:167
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# timespec()
L0:
    push %rbp
    mov %rsp, %rbp
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type timespec
    mov %rax, %rcx
    # accessing member variable tv_sec, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable tv_sec
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type timespec
    mov %rax, %rcx
    # accessing member variable tv_nsec, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable tv_nsec
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# timespec(timespec&)
L1:
    push %rbp
    mov %rsp, %rbp
    # load variable other
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type timespec
    mov %rax, %rcx
    # accessing member variable tv_sec, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable tv_sec
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type timespec
    mov %rax, %rcx
    # accessing member variable tv_sec, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable tv_sec
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # load variable other
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type timespec
    mov %rax, %rcx
    # accessing member variable tv_nsec, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable tv_nsec
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type timespec
    mov %rax, %rcx
    # accessing member variable tv_nsec, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable tv_nsec
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# istream()
L9:
    push %rbp
    mov %rsp, %rbp
    # load variable STDIN
    mov 96(%r15), %rax
    lea 96(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable fd, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movl (%rax), %eax
    # done accessing member variable fd
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # calling function : init_buf
    push %rax    # FunctionCall::emit_asm() : target struct
    call L3
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# istream(i32)
L10:
    push %rbp
    mov %rsp, %rbp
    # load variable _fd
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable fd, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movl (%rax), %eax
    # done accessing member variable fd
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # calling function : init_buf
    push %rax    # FunctionCall::emit_asm() : target struct
    call L3
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# istream(istream&)
L11:
    push %rbp
    mov %rsp, %rbp
    # load variable other
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable fd, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movl (%rax), %eax
    # done accessing member variable fd
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable fd, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movl (%rax), %eax
    # done accessing member variable fd
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # calling function : init_buf
    push %rax    # FunctionCall::emit_asm() : target struct
    call L3
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# vector<u8>()
L17:
    push %rbp
    mov %rsp, %rbp
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # calling function : malloc
    # function call member variable : sz
    # TMP:169
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    mul %rbx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:169
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# vector<u8>(vector<u8>&)
L18:
    push %rbp
    mov %rsp, %rbp
    # load variable other
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # load variable other
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # calling function : malloc
    # function call member variable : sz
    # TMP:170
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    mul %rbx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:170
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # for loop start
    # initialize local variable : u64 i
    # i
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 i
L234:
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    je L236
    # load variable other
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
L235:
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    incq (%rcx)
    jmp L234
L236:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# vector<u8>(u64, u8)
L19:
    push %rbp
    mov %rsp, %rbp
    # load variable n
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # load variable n
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # if statement start
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L237
    jmp L238
L237:
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    jmp L238
L238:
    # if statement end
    # calling function : malloc
    # function call member variable : sz
    # TMP:171
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    mul %rbx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:171
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # for loop start
    # initialize local variable : u64 i
    # i
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 i
L239:
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    je L241
    # load variable default
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
L240:
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    incq (%rcx)
    jmp L239
L241:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# vector<u8>(i32, u8)
L20:
    push %rbp
    mov %rsp, %rbp
    # load variable n
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # load variable n
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # if statement start
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L242
    jmp L243
L242:
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    jmp L243
L243:
    # if statement end
    # calling function : malloc
    # function call member variable : sz
    # TMP:172
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : save right
    mov $1, %rax
    pop %rbx    # ExprBinary::emit_asm() : save right
    mul %rbx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:172
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # for loop start
    # initialize local variable : u64 i
    # i
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 i
L244:
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    je L246
    # load variable default
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
L245:
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    incq (%rcx)
    jmp L244
L246:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# ostream()
L24:
    push %rbp
    mov %rsp, %rbp
    # load variable STDOUT
    mov 104(%r15), %rax
    lea 104(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    # accessing member variable fd, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movl (%rax), %eax
    # done accessing member variable fd
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # calling function : malloc
    # function call member variable : sz
    # TMP:173
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $128, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:173
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    # accessing member variable scratch_buf, offset : 4
    lea 4(%rax), %rcx
    lea 4(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable scratch_buf
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# ostream(i32)
L25:
    push %rbp
    mov %rsp, %rbp
    # load variable _fd
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    # accessing member variable fd, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movl (%rax), %eax
    # done accessing member variable fd
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    # calling function : malloc
    # function call member variable : sz
    # TMP:174
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $128, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:174
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    # accessing member variable scratch_buf, offset : 4
    lea 4(%rax), %rcx
    lea 4(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable scratch_buf
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# ostream(ostream&)
L26:
    push %rbp
    mov %rsp, %rbp
    # load variable other
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    # accessing member variable fd, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movl (%rax), %eax
    # done accessing member variable fd
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    # accessing member variable fd, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movl (%rax), %eax
    # done accessing member variable fd
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# string()
L34:
    push %rbp
    mov %rsp, %rbp
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # calling function : malloc
    # function call member variable : sz
    # TMP:175
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:175
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# string(string&)
L35:
    push %rbp
    mov %rsp, %rbp
    # load variable other
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # load variable other
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # calling function : malloc
    # function call member variable : sz
    # TMP:176
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:176
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # for loop start
    # initialize local variable : u64 i
    # i
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 i
L247:
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    je L249
    # load variable other
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
L248:
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    incq (%rcx)
    jmp L247
L249:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# string(u8*)
L36:
    push %rbp
    mov %rsp, %rbp
    # calling function : strlen
    # function call member variable : s
    # TMP:177
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable jstr
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:177
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L54
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # if statement start
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L250
    jmp L251
L250:
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    jmp L251
L251:
    # if statement end
    # calling function : malloc
    # function call member variable : sz
    # TMP:178
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:178
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # for loop start
    # initialize local variable : u64 i
    # i
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 i
L252:
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    je L254
    # load variable jstr
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
L253:
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    incq (%rcx)
    jmp L252
L254:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# string(u64, u8)
L37:
    push %rbp
    mov %rsp, %rbp
    # load variable n
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # load variable n
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # if statement start
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L255
    jmp L256
L255:
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    jmp L256
L256:
    # if statement end
    # calling function : malloc
    # function call member variable : sz
    # TMP:179
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:179
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # for loop start
    # initialize local variable : u64 i
    # i
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 i
L257:
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    je L259
    # load variable default
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
L258:
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    incq (%rcx)
    jmp L257
L259:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# string(i32, u8)
L38:
    push %rbp
    mov %rsp, %rbp
    # load variable n
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # load variable n
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # if statement start
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    sete %al
    movzx %al, %rax
    cmp $0, %rax
    jne L260
    jmp L261
L260:
    mov $1, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    jmp L261
L261:
    # if statement end
    # calling function : malloc
    # function call member variable : sz
    # TMP:180
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:180
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # for loop start
    # initialize local variable : u64 i
    # i
    sub $8, %rsp
    movq $0, -8(%rbp)
    mov $0, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u64 i
L262:
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable sz, offset : 8
    lea 8(%rax), %rcx
    lea 8(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable sz
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setb %al
    movzx %al, %rax
    cmp $0, %rax
    je L264
    # load variable default
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable this
    mov 32(%rbp), %rax
    lea 32(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
L263:
    # load variable i
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    incq (%rcx)
    jmp L262
L264:
    # for loop end
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# istream& >> string&
L67:
    push %rbp
    mov %rsp, %rbp
    # initialize local variable : u8* tok
    # tok
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # calling function : next_token
    push %rax    # FunctionCall::emit_asm() : target struct
    call L7
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable tok
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u8* tok
    # if statement start
    # load variable nullptr
    mov 88(%r15), %rax
    lea 88(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable tok
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setne %al
    movzx %al, %rax
    cmp $0, %rax
    jne L265
    jmp L266
L265:
    # calling constructor : string
    mov $24, %rax
    push %rax    # emit_malloc() : malloc arg
    call L49
    # emit_malloc() : malloc arg
    add $8, %rsp
    # initialize struct string
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory string
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    # TMP:181
    sub $8, %rsp
    movq $0, -32(%rbp)
    # load variable tok
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:181
    mov -32(%rbp), %rax
    lea -32(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L36
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    # expression struct assignment tmp variable
    push %rax    # TMP:182
    # load variable s
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    push %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling destructor : string
    push %rax    # DestructorCall::emit_asm() : target struct
    call L39
    pop %rax    # DestructorCall::emit_asm() : target struct
    pop %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling constructor : string
    # initialize struct string
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory string
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    # TMP:183
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable TMP:182
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    movq %rcx, -40(%rbp)
    call L35
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ExprBinary::emit_asm() : save struct addr during right dealloc
    movq -16(%rbp), %rax
    # calling destructor : string
    push %rax    # DestructorCall::emit_asm() : target struct
    call L39
    pop %rax    # DestructorCall::emit_asm() : target struct
    push %rax    # emit_free() : free addr
    mov $24, %rax
    push %rax    # emit_free() : free sz_bytes
    call L50
    add $16, %rsp
    pop %rax    # ExprBinary::emit_asm() : save struct addr during right dealloc
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    mov %rax, %rcx
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L266
L266:
    # if statement end
    # TMP:184
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    movq %rcx, -16(%rbp)
    mov -16(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp

# istream& >> u64&
L68:
    push %rbp
    mov %rsp, %rbp
    # initialize local variable : u8* tok
    # tok
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # calling function : next_token
    push %rax    # FunctionCall::emit_asm() : target struct
    call L7
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable tok
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u8* tok
    # if statement start
    # load variable nullptr
    mov 88(%r15), %rax
    lea 88(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable tok
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setne %al
    movzx %al, %rax
    cmp $0, %rax
    jne L267
    jmp L268
L267:
    # calling function : stou64
    # function call member variable : s
    # TMP:185
    sub $8, %rsp
    # calling constructor : string
    mov $24, %rax
    push %rax    # emit_malloc() : malloc arg
    call L49
    # emit_malloc() : malloc arg
    add $8, %rsp
    # initialize struct string
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory string
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    call L34
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    movq %rax, -16(%rbp)
    # calling constructor : string
    mov $24, %rax
    push %rax    # emit_malloc() : malloc arg
    call L49
    # emit_malloc() : malloc arg
    add $8, %rsp
    # initialize struct string
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory string
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    # TMP:186
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable tok
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:186
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L36
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    # expression struct assignment tmp variable
    push %rax    # TMP:187
    # load variable TMP:185
    mov -16(%rbp), %rax
    mov -16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling destructor : string
    push %rax    # DestructorCall::emit_asm() : target struct
    call L39
    pop %rax    # DestructorCall::emit_asm() : target struct
    pop %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling constructor : string
    # initialize struct string
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory string
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    # TMP:188
    sub $8, %rsp
    movq $0, -48(%rbp)
    # load variable TMP:187
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    movq %rcx, -48(%rbp)
    call L35
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ExprBinary::emit_asm() : save struct addr during right dealloc
    movq -24(%rbp), %rax
    # calling destructor : string
    push %rax    # DestructorCall::emit_asm() : target struct
    call L39
    pop %rax    # DestructorCall::emit_asm() : target struct
    push %rax    # emit_free() : free addr
    mov $24, %rax
    push %rax    # emit_free() : free sz_bytes
    call L50
    add $16, %rsp
    pop %rax    # ExprBinary::emit_asm() : save struct addr during right dealloc
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    mov %rax, %rcx
    call L61
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    movq -16(%rbp), %rax
    # calling destructor : string
    push %rax    # DestructorCall::emit_asm() : target struct
    call L39
    pop %rax    # DestructorCall::emit_asm() : target struct
    push %rax    # emit_free() : free addr
    mov $24, %rax
    push %rax    # emit_free() : free sz_bytes
    call L50
    add $16, %rsp
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type u64
    mov %rax, %rcx
    movq (%rax), %rax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L268
L268:
    # if statement end
    # TMP:189
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    movq %rcx, -16(%rbp)
    mov -16(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp

# istream& >> i32&
L69:
    push %rbp
    mov %rsp, %rbp
    # initialize local variable : u8* tok
    # tok
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # calling function : next_token
    push %rax    # FunctionCall::emit_asm() : target struct
    call L7
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable tok
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u8* tok
    # if statement start
    # load variable nullptr
    mov 88(%r15), %rax
    lea 88(%r15), %rcx
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable tok
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    pop %rbx    # ExprBinary::emit_asm() : save right
    cmp %rbx, %rax
    setne %al
    movzx %al, %rax
    cmp $0, %rax
    jne L269
    jmp L270
L269:
    # calling function : stoi32
    # function call member variable : s
    # TMP:190
    sub $8, %rsp
    # calling constructor : string
    mov $24, %rax
    push %rax    # emit_malloc() : malloc arg
    call L49
    # emit_malloc() : malloc arg
    add $8, %rsp
    # initialize struct string
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory string
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    call L34
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    movq %rax, -16(%rbp)
    # calling constructor : string
    mov $24, %rax
    push %rax    # emit_malloc() : malloc arg
    call L49
    # emit_malloc() : malloc arg
    add $8, %rsp
    # initialize struct string
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory string
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    # TMP:191
    sub $8, %rsp
    movq $0, -40(%rbp)
    # load variable tok
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:191
    mov -40(%rbp), %rax
    lea -40(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L36
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    # expression struct assignment tmp variable
    push %rax    # TMP:192
    # load variable TMP:190
    mov -16(%rbp), %rax
    mov -16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling destructor : string
    push %rax    # DestructorCall::emit_asm() : target struct
    call L39
    pop %rax    # DestructorCall::emit_asm() : target struct
    pop %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling constructor : string
    # initialize struct string
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory string
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    # TMP:193
    sub $8, %rsp
    movq $0, -48(%rbp)
    # load variable TMP:192
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    movq %rcx, -48(%rbp)
    call L35
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ExprBinary::emit_asm() : save struct addr during right dealloc
    movq -24(%rbp), %rax
    # calling destructor : string
    push %rax    # DestructorCall::emit_asm() : target struct
    call L39
    pop %rax    # DestructorCall::emit_asm() : target struct
    push %rax    # emit_free() : free addr
    mov $24, %rax
    push %rax    # emit_free() : free sz_bytes
    call L50
    add $16, %rsp
    pop %rax    # ExprBinary::emit_asm() : save struct addr during right dealloc
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    mov %rax, %rcx
    call L62
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    movq -16(%rbp), %rax
    # calling destructor : string
    push %rax    # DestructorCall::emit_asm() : target struct
    call L39
    pop %rax    # DestructorCall::emit_asm() : target struct
    push %rax    # emit_free() : free addr
    mov $24, %rax
    push %rax    # emit_free() : free sz_bytes
    call L50
    add $16, %rsp
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type i32
    mov %rax, %rcx
    movl (%rax), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    jmp L270
L270:
    # if statement end
    # TMP:194
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    movq %rcx, -16(%rbp)
    mov -16(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp

# ostream& << u8*
L70:
    push %rbp
    mov %rsp, %rbp
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    # calling function : write_to_fd
    push %rax    # FunctionCall::emit_asm() : target struct
    # function call member variable : str
    # TMP:195
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable s
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:195
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L22
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    # TMP:196
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    movq %rcx, -8(%rbp)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# ostream& << u8
L71:
    push %rbp
    mov %rsp, %rbp
    # initialize local variable : u8* str
    # str
    sub $8, %rsp
    movq $0, -8(%rbp)
    # calling function : malloc
    # function call member variable : sz
    # TMP:197
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov $2, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:197
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L49
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable str
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # done initialize local variable : u8* str
    # load variable c
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable str
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    mov $0, %rax
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    movb $0, %al
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable str
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    mov $1, %rax
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movb %al, (%rbx)
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    # calling function : write_to_fd
    push %rax    # FunctionCall::emit_asm() : target struct
    # function call member variable : str
    # TMP:198
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable str
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:198
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L22
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    # TMP:199
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    movq %rcx, -16(%rbp)
    mov -16(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp

# ostream& << i32
L72:
    push %rbp
    mov %rsp, %rbp
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    # calling function : write_to_fd
    push %rax    # FunctionCall::emit_asm() : target struct
    # function call member variable : str
    # TMP:200
    sub $8, %rsp
    movq $0, -16(%rbp)
    # calling function : to_jstr
    # function call member variable : x
    # TMP:201
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:201
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    call L56
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:200
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L22
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    # TMP:202
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    movq %rcx, -8(%rbp)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# ostream& << u64
L73:
    push %rbp
    mov %rsp, %rbp
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    # calling function : write_to_fd
    push %rax    # FunctionCall::emit_asm() : target struct
    # function call member variable : str
    # TMP:203
    sub $8, %rsp
    movq $0, -16(%rbp)
    # calling function : to_jstr
    # function call member variable : x
    # TMP:204
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:204
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L57
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:203
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L22
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    # TMP:205
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    movq %rcx, -8(%rbp)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# ostream& << f32
L74:
    push %rbp
    mov %rsp, %rbp
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    # calling function : write_to_fd
    push %rax    # FunctionCall::emit_asm() : target struct
    # function call member variable : str
    # TMP:206
    sub $8, %rsp
    movq $0, -16(%rbp)
    # calling function : to_jstr
    # function call member variable : f
    # TMP:207
    sub $8, %rsp
    movq $0, -24(%rbp)
    # load variable x
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:207
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movl %eax, (%rbx)
    call L58
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:206
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L22
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    # TMP:208
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    movq %rcx, -8(%rbp)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# ostream& << string&
L75:
    push %rbp
    mov %rsp, %rbp
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    # calling function : write_to_fd
    push %rax    # FunctionCall::emit_asm() : target struct
    # function call member variable : str
    # TMP:209
    sub $8, %rsp
    # calling constructor : string
    mov $24, %rax
    push %rax    # emit_malloc() : malloc arg
    call L49
    # emit_malloc() : malloc arg
    add $8, %rsp
    # initialize struct string
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory string
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    call L34
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    movq %rax, -16(%rbp)
    # load variable s
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # expression struct assignment tmp variable
    push %rax    # TMP:210
    # load variable TMP:209
    mov -16(%rbp), %rax
    mov -16(%rbp), %rcx
    push %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling destructor : string
    push %rax    # DestructorCall::emit_asm() : target struct
    call L39
    pop %rax    # DestructorCall::emit_asm() : target struct
    pop %rax    # ExprBinary::emit_asm() : save left addr before destruct
    # calling constructor : string
    # initialize struct string
    push %rax    # emit_initialize_struct() :: save original %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    movq $0, (%rax)
    add $8, %rax
    pop %rax    # emit_initialize_struct() :: save original %rax
    # done initialize struct memory string
    push %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # ConstructorCall::emit_asm() : target struct
    # TMP:211
    sub $8, %rsp
    movq $0, -48(%rbp)
    # load variable TMP:210
    mov -24(%rbp), %rax
    lea -24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    movq %rcx, -48(%rbp)
    call L35
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # ConstructorCall::emit_asm() : target struct
    add $8, %rsp
    pop %rax    # ConstructorCall::emit_asm() : target struct return ref %rax
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    mov %rax, %rcx
    call L23
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    movq -16(%rbp), %rax
    # calling destructor : string
    push %rax    # DestructorCall::emit_asm() : target struct
    call L39
    pop %rax    # DestructorCall::emit_asm() : target struct
    push %rax    # emit_free() : free addr
    mov $24, %rax
    push %rax    # emit_free() : free sz_bytes
    call L50
    add $16, %rsp
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $8, %rsp
    # FunctionCall::emit_asm() : target struct
    add $8, %rsp
    # TMP:212
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable stream
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    movq %rcx, -8(%rbp)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# string& [] u64
L76:
    push %rbp
    mov %rsp, %rbp
    # TMP:213
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable a
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ind
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    movq %rcx, -8(%rbp)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# string& [] i32
L77:
    push %rbp
    mov %rsp, %rbp
    # TMP:214
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable a
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ind
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    movsxd %eax, %rax
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    movq %rcx, -8(%rbp)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# vector<u8>& [] u64
L213:
    push %rbp
    mov %rsp, %rbp
    # TMP:215
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable a
    mov 24(%rbp), %rax
    lea 24(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    # load variable ind
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    mov %rax, %rbx
    pop %rcx    # ExprPostfix::emit_asm() : [] %rcx 1
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 1
    push %rax    # ExprPostfix::emit_asm() : [] %rax 2
    lea (%rax, %rbx, 1), %rax
    mov %rax, %rcx
    pop %rax    # ExprPostfix::emit_asm() : [] %rax 2
    movzbl (%rax, %rbx, 1), %eax
    movq %rcx, -8(%rbp)
    mov -8(%rbp), %rax
    add $8, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    pop %rbp
    ret
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp

# ~timespec
L2:
    push %rbp
    mov %rsp, %rbp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# ~istream
L12:
    push %rbp
    mov %rsp, %rbp
    # calling function : free
    # function call member variable : addr
    # TMP:216
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type istream
    mov %rax, %rcx
    # accessing member variable buf, offset : 4
    lea 4(%rax), %rcx
    lea 4(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable buf
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:216
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : sz
    # TMP:217
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov $4096, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:217
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L50
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# ~vector<u8>
L21:
    push %rbp
    mov %rsp, %rbp
    # calling function : free
    # function call member variable : addr
    # TMP:218
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:218
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : sz
    # TMP:219
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov $1, %rax
    push %rax    # ExprBinary::emit_asm() : save right
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type vector<u8>
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    pop %rbx    # ExprBinary::emit_asm() : save right
    mul %rbx
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:219
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L50
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# ~ostream
L27:
    push %rbp
    mov %rsp, %rbp
    # calling function : free
    # function call member variable : addr
    # TMP:220
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type ostream
    mov %rax, %rcx
    # accessing member variable scratch_buf, offset : 4
    lea 4(%rax), %rcx
    lea 4(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable scratch_buf
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:220
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : sz
    # TMP:221
    sub $8, %rsp
    movq $0, -16(%rbp)
    mov $128, %rax
    movsxd %eax, %rax
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:221
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L50
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

# ~string
L39:
    push %rbp
    mov %rsp, %rbp
    # calling function : free
    # function call member variable : addr
    # TMP:222
    sub $8, %rsp
    movq $0, -8(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable arr, offset : 16
    lea 16(%rax), %rcx
    lea 16(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable arr
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:222
    mov -8(%rbp), %rax
    lea -8(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    # function call member variable : sz
    # TMP:223
    sub $8, %rsp
    movq $0, -16(%rbp)
    # load variable this
    mov 16(%rbp), %rax
    lea 16(%rbp), %rcx
    # dereferencing to type string
    mov %rax, %rcx
    # accessing member variable cap, offset : 0
    lea 0(%rax), %rcx
    lea 0(%rax), %rax
    movq (%rax), %rax
    # done accessing member variable cap
    push %rax    # ExprBinary::emit_asm() : = save right
    # load variable TMP:223
    mov -16(%rbp), %rax
    lea -16(%rbp), %rcx
    mov %rcx, %rbx
    pop %rax    # ExprBinary::emit_asm() : = save right
    movq %rax, (%rbx)
    call L50
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $16, %rsp
    push %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    push %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rcx    # emit_cleanup_declaration_stack_layer() : save %rcx
    pop %rax    # emit_cleanup_declaration_stack_layer() : save %rax
    add $0, %rsp
    pop %rbp
    ret

.section .rodata
L145: .string "assert failed"
L95: .string "\n"
L94: .string " "
L93: .string "free failed : "
L90: .string "free failed, trying to dealloc too much memory\n"
L80: .string "0"

