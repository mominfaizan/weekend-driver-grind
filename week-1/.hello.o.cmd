savedcmd_hello.o := gcc -Wp,-MMD,./.hello.o.d -nostdinc -I/home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include -I/home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated -I/home/faizanmomin/weekend-driver-grind/resource/kernel-source/include -I/home/faizanmomin/weekend-driver-grind/resource/kernel-source/include -I/home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi -I/home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/uapi -I/home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi -I/home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/generated/uapi -include /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/compiler-version.h -include /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kconfig.h -include /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/compiler_types.h -D__KERNEL__ -Werror -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -std=gnu11 -fms-extensions -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -mno-sse4a -fcf-protection=branch -fno-jump-tables -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -march=x86-64 -mtune=generic -mno-red-zone -mcmodel=kernel -mstack-protector-guard-reg=gs -mstack-protector-guard-symbol=__ref_stack_chk_guard -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fno-jump-tables -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O2 -fno-allow-store-data-races -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -falign-functions=16 -fno-strict-overflow -fno-stack-check -fconserve-stack -fno-builtin-wcslen -Wall -Wextra -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=2048 -Wno-main -Wno-type-limits -Wvla-larger-than=1 -Wno-pointer-sign -Wcast-function-type -Wno-array-bounds -Wno-stringop-overflow -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-parameter  -DMODULE  -DKBUILD_BASENAME='"hello"' -DKBUILD_MODNAME='"hello"' -D__KBUILD_MODNAME=hello -c -o hello.o hello.c   ; /home/faizanmomin/weekend-driver-grind/resource/kernel-source/tools/objtool/objtool --hacks=jump_label --hacks=noinstr --hacks=skylake --ibt --prefix=16 --orc --retpoline --rethunk --static-call --uaccess  --link  --module hello.o

source_hello.o := hello.c

deps_hello.o := \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_HAS_SANE_FUNCTION_ALIGNMENT) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/LD_DEAD_CODE_DATA_ELIMINATION) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/CC_HAS_ASSUME) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/FORTIFY_SOURCE) \
    $(wildcard include/config/UBSAN_BOUNDS) \
    $(wildcard include/config/CC_HAS_COUNTED_BY_PTR) \
    $(wildcard include/config/CC_HAS_MULTIDIMENSIONAL_NONSTRING) \
    $(wildcard include/config/CFI) \
    $(wildcard include/config/ARCH_USES_CFI_GENERIC_LLVM_PASS) \
    $(wildcard include/config/CC_HAS_BROKEN_COUNTED_BY_REF) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/compiler-context-analysis.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/compiler_attributes.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/compiler-gcc.h \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \
    $(wildcard include/config/CC_HAS_TYPEOF_UNQUAL) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/percpu_types.h \
    $(wildcard include/config/SMP) \
    $(wildcard include/config/CC_HAS_NAMED_AS) \
    $(wildcard include/config/USE_X86_SEG_SUPPORT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/percpu_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/init.h \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/build_bug.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/asm/rwonce.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/rwonce.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/uapi/asm/types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/asm-generic/types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/int-ll64.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/asm-generic/int-ll64.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/bitsperlong.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/bitsperlong.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/asm-generic/bitsperlong.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/posix_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/stddef.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/stddef.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/X86_32) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/posix_types_64.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/asm-generic/posix_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/stringify.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/module.h \
    $(wildcard include/config/MODULES) \
    $(wildcard include/config/SYSFS) \
    $(wildcard include/config/MODULES_TREE_LOOKUP) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/STACKTRACE_BUILD_ID) \
    $(wildcard include/config/ARCH_USES_CFI_TRAPS) \
    $(wildcard include/config/MODULE_SIG) \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/KALLSYMS) \
    $(wildcard include/config/TRACEPOINTS) \
    $(wildcard include/config/TREE_SRCU) \
    $(wildcard include/config/BPF_EVENTS) \
    $(wildcard include/config/DEBUG_INFO_BTF_MODULES) \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/TRACING) \
    $(wildcard include/config/EVENT_TRACING) \
    $(wildcard include/config/DYNAMIC_FTRACE) \
    $(wildcard include/config/KPROBES) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
    $(wildcard include/config/KUNIT) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/MODULE_UNLOAD) \
    $(wildcard include/config/CONSTRUCTORS) \
    $(wildcard include/config/FUNCTION_ERROR_INJECTION) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
    $(wildcard include/config/MITIGATION_RETPOLINE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/list.h \
    $(wildcard include/config/LIST_HARDENED) \
    $(wildcard include/config/DEBUG_LIST) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/container_of.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/const.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/vdso/const.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/const.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/barrier.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/alternative.h \
    $(wildcard include/config/CALL_THUNKS) \
    $(wildcard include/config/MITIGATION_ITS) \
    $(wildcard include/config/MITIGATION_RETHUNK) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/objtool.h \
    $(wildcard include/config/FRAME_POINTER) \
    $(wildcard include/config/NOINSTR_VALIDATION) \
    $(wildcard include/config/MITIGATION_UNRET_ENTRY) \
    $(wildcard include/config/MITIGATION_SRSO) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/objtool_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/annotate.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/asm.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/asm-offsets.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/generated/asm-offsets.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/extable_fixup_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
    $(wildcard include/config/DEBUG_BUGVERBOSE_DETAILED) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/instrumentation.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/bug.h \
    $(wildcard include/config/BUG) \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/once_lite.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/stdarg.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kern_levels.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
    $(wildcard include/config/GENDWARFKSYMS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/CALL_PADDING) \
    $(wildcard include/config/MITIGATION_SLS) \
    $(wildcard include/config/FUNCTION_PADDING_BYTES) \
    $(wildcard include/config/UML) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/ibt.h \
    $(wildcard include/config/X86_KERNEL_IBT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/ratelimit_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/bits.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/vdso/bits.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/bits.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/overflow.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/limits.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/limits.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/vdso/limits.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/param.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/uapi/asm/param.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/asm-generic/param.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/spinlock_types_raw.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/spinlock_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/qspinlock_types.h \
    $(wildcard include/config/NR_CPUS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/qrwlock_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/byteorder.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/byteorder/little_endian.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/byteorder/little_endian.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/swab.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/swab.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/swab.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/byteorder/generic.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/LOCK_STAT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/nops.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/barrier.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/stat.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/stat.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/stat.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/time.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/cache.h \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/kernel.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/sysinfo.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/vdso/cache.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/cache.h \
    $(wildcard include/config/X86_L1_CACHE_SHIFT) \
    $(wildcard include/config/X86_INTERNODE_CACHE_SHIFT) \
    $(wildcard include/config/X86_VSMP) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/math.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/div64.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/div64.h \
    $(wildcard include/config/CC_OPTIMIZE_FOR_PERFORMANCE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/vdso/math64.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/time64.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/vdso/time64.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/time.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/time_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/time32.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/timex.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/timex.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/timex.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/processor.h \
    $(wildcard include/config/X86_VMX_FEATURE_NAMES) \
    $(wildcard include/config/X86_IOPL_IOPERM) \
    $(wildcard include/config/VM86) \
    $(wildcard include/config/X86_USER_SHADOW_STACK) \
    $(wildcard include/config/X86_DEBUG_FPU) \
    $(wildcard include/config/PARAVIRT_XXL) \
    $(wildcard include/config/CPU_SUP_AMD) \
    $(wildcard include/config/XEN) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/MITIGATION_PAGE_TABLE_ISOLATION) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/processor-flags.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/mem_encrypt.h \
    $(wildcard include/config/ARCH_HAS_MEM_ENCRYPT) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/mem_encrypt.h \
    $(wildcard include/config/X86_MEM_ENCRYPT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/cc_platform.h \
    $(wildcard include/config/ARCH_HAS_CC_PLATFORM) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/math_emu.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/ptrace.h \
    $(wildcard include/config/PARAVIRT) \
    $(wildcard include/config/IA32_EMULATION) \
    $(wildcard include/config/X86_DEBUGCTLMSR) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/segment.h \
    $(wildcard include/config/XEN_PV) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/page_types.h \
    $(wildcard include/config/PHYSICAL_START) \
    $(wildcard include/config/PHYSICAL_ALIGN) \
    $(wildcard include/config/DYNAMIC_PHYSICAL_MASK) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/vdso/page.h \
    $(wildcard include/config/PAGE_SHIFT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/page_64_types.h \
    $(wildcard include/config/KASAN) \
    $(wildcard include/config/RANDOMIZE_BASE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/kaslr.h \
    $(wildcard include/config/RANDOMIZE_MEMORY) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/ptrace.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/ptrace-abi.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/paravirt-base.h \
    $(wildcard include/config/PARAVIRT_SPINLOCKS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/proto.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/ldt.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/sigcontext.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/current.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/percpu.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/args.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/percpu.h \
    $(wildcard include/config/DEBUG_PREEMPT) \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/threads.h \
    $(wildcard include/config/BASE_SMALL) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/percpu-defs.h \
    $(wildcard include/config/ARCH_MODULE_NEEDS_WEAK_PER_CPU) \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/cpufeatures.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/cpuid/types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/cpuid/leaf_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/page.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/page_64.h \
    $(wildcard include/config/DEBUG_VIRTUAL) \
    $(wildcard include/config/X86_VSYSCALL_EMULATION) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kmsan-checks.h \
    $(wildcard include/config/KMSAN) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_IRQSOFF) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/bug.h \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/range.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/memory_model.h \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
    $(wildcard include/config/SPARSEMEM) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/pfn.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/getorder.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/bitops.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/typecheck.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/bitops/generic-non-atomic.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/bitops.h \
    $(wildcard include/config/X86_CMOV) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/rmwcc.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/bitops/sched.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/arch_hweight.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/bitops/const_hweight.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/bitops/instrumented-atomic.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/instrumented.h \
    $(wildcard include/config/DEBUG_ATOMIC) \
    $(wildcard include/config/DEBUG_ATOMIC_LARGEST_ALIGN) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/bitops/instrumented-non-atomic.h \
    $(wildcard include/config/KCSAN_ASSUME_PLAIN_WRITES_ATOMIC) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/bitops/instrumented-lock.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/bitops/le.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/X86_INTEL_MEMORY_PROTECTION_KEYS) \
    $(wildcard include/config/X86_PAE) \
    $(wildcard include/config/MEM_SOFT_DIRTY) \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_WP) \
    $(wildcard include/config/PGTABLE_LEVELS) \
    $(wildcard include/config/PROC_FS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/pgtable_64_types.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL_FORCE_MAP) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/sparsemem.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/desc_defs.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/special_insns.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/errno.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/errno.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/uapi/asm/errno.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/asm-generic/errno.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/asm-generic/errno-base.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/irqflags.h \
    $(wildcard include/config/PROVE_LOCKING) \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/PREEMPT_RT) \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/irqflags_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/cleanup.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/err.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/irqflags.h \
    $(wildcard include/config/DEBUG_ENTRY) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/nospec-branch.h \
    $(wildcard include/config/CALL_THUNKS_DEBUG) \
    $(wildcard include/config/MITIGATION_CALL_DEPTH_TRACKING) \
    $(wildcard include/config/MITIGATION_IBPB_ENTRY) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/static_key.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/jump_label.h \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/jump_label.h \
    $(wildcard include/config/HAVE_JUMP_LABEL_HACK) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/msr-index.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/unwind_hints.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/orc_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/GEN-for-each-reg.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/paravirt.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/paravirt_types.h \
    $(wildcard include/config/ZERO_CALL_USED_REGS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/cpumask.h \
    $(wildcard include/config/FORCE_NR_CPUS) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/atomic.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/atomic.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/cmpxchg.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/cmpxchg_64.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/atomic64_64.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/atomic/atomic-arch-fallback.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/atomic/atomic-long.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/atomic/atomic-instrumented.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/bitmap.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/align.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/vdso/align.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/find.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/array_size.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/string.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/string.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/string_64.h \
    $(wildcard include/config/ARCH_HAS_UACCESS_FLUSHCACHE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/bitmap-str.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/cpumask_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/gfp_types.h \
    $(wildcard include/config/KASAN_HW_TAGS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/numa.h \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/HAVE_ARCH_NODE_DEV_GROUP) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/nodemask.h \
    $(wildcard include/config/HIGHMEM) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/minmax.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/nodemask_types.h \
    $(wildcard include/config/NODES_SHIFT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/random.h \
    $(wildcard include/config/VMGENID) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY_BUILD) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_CALL) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_KEY) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
    $(wildcard include/config/MMU) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kstrtox.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sprintf.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/trace_printk.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/instruction_pointer.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/util_macros.h \
    $(wildcard include/config/FOO_SUSPEND) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/wordpart.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/random.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/ioctl.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/uapi/asm/ioctl.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/ioctl.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/asm-generic/ioctl.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/irqnr.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/irqnr.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/frame.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/fpu/types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/vmxfeatures.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/vdso/processor.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/shstk.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/personality.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/personality.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/tsc.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/cpufeature.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/asm/cpufeaturemasks.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/msr.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/cpumask.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/msr.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/shared/msr.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/percpu.h \
    $(wildcard include/config/KMALLOC_PARTITION_CACHES) \
    $(wildcard include/config/PAGE_SIZE_4KB) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/alloc_tag.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING_DEBUG) \
    $(wildcard include/config/MEM_ALLOC_PROFILING) \
    $(wildcard include/config/MEM_ALLOC_PROFILING_ENABLED_BY_DEFAULT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/codetag.h \
    $(wildcard include/config/CODE_TAGGING) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPTION) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
    $(wildcard include/config/PREEMPT_NONE) \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT) \
    $(wildcard include/config/PREEMPT_LAZY) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/preempt.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
    $(wildcard include/config/CSD_LOCK_WAIT_DEBUG) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/smp_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/GENERIC_ENTRY) \
    $(wildcard include/config/ARCH_HAS_PREEMPT_LAZY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/SH) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/restart_block.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/X86_FRED) \
    $(wildcard include/config/COMPAT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/thread_info_tif.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/smp.h \
    $(wildcard include/config/DEBUG_NMI_SELFTEST) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/SCHED_CLASS_EXT) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/CFS_BANDWIDTH) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/TRIVIAL_PREEMPT_RCU) \
    $(wildcard include/config/MEMCG_V1) \
    $(wildcard include/config/LRU_GEN) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/ARCH_HAS_CPU_PASID) \
    $(wildcard include/config/X86_BUS_LOCK_DETECT) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/NO_HZ_FULL) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/DETECT_HUNG_TASK_BLOCKER) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/SCHED_CACHE) \
    $(wildcard include/config/ARCH_HAS_LAZY_MMU_MODE) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/UPROBES) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/VMAP_STACK) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/KSTACK_ERASE) \
    $(wildcard include/config/KSTACK_ERASE_METRICS) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/RETHOOK) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/RV) \
    $(wildcard include/config/RV_PER_TASK_MONITORS) \
    $(wildcard include/config/USER_EVENTS) \
    $(wildcard include/config/UNWIND_USER) \
    $(wildcard include/config/SCHED_PROXY_EXEC) \
    $(wildcard include/config/SCHED_MM_CID) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/sched.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/futex_types.h \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/FUTEX_PRIVATE_HASH) \
    $(wildcard include/config/FUTEX_ROBUST_UNLOCK) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/mutex_types.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_MUTEXES) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/osq_lock.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/spinlock_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rwlock_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/pid_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sem_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/shm.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/shmparam.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kmsan_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/plist_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/hrtimer_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/timerqueue_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rbtree_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/timer_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/seccomp_types.h \
    $(wildcard include/config/SECCOMP) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/refcount_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/resource.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/resource.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/uapi/asm/resource.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/resource.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/asm-generic/resource.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/latencytop.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sched/prio.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sched/types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/signal.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/signal.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/signal.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/asm-generic/signal-defs.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/siginfo.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/asm-generic/siginfo.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/spinlock.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/bottom_half.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/asm/mmiowb.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/spinlock.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/qspinlock.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/paravirt-spinlock.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/qspinlock.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/qrwlock.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/qrwlock.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rwlock.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/INLINE_SPIN_LOCK) \
    $(wildcard include/config/INLINE_SPIN_LOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK_BH) \
    $(wildcard include/config/UNINLINE_SPIN_UNLOCK) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/GENERIC_LOCKBREAK) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/INLINE_READ_LOCK) \
    $(wildcard include/config/INLINE_WRITE_LOCK) \
    $(wildcard include/config/INLINE_READ_LOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_LOCK_BH) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_READ_TRYLOCK) \
    $(wildcard include/config/INLINE_WRITE_TRYLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_BH) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQRESTORE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/syscall_user_dispatch_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/mm_types_task.h \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/tlbbatch.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/netdevice_xmit.h \
    $(wildcard include/config/NET_ACT_MIRRED) \
    $(wildcard include/config/NET_EGRESS) \
    $(wildcard include/config/NF_DUP_NETDEV) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/posix-timers_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rseq_types.h \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/RSEQ_SLICE_EXTENSION) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/irq_work_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/workqueue_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/seqlock_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kcsan.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rv.h \
    $(wildcard include/config/RV_LTL_MONITOR) \
    $(wildcard include/config/RV_HA_MONITOR) \
    $(wildcard include/config/RV_REACTORS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/uidgid_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/tracepoint-defs.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/unwind_deferred_types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/asm/kmap_size.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/generated/rq-offsets.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sched/ext.h \
    $(wildcard include/config/EXT_GROUP_SCHED) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/vdso/time32.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/vdso/time.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/uidgid.h \
    $(wildcard include/config/MULTIUSER) \
    $(wildcard include/config/USER_NS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/highuid.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/buildid.h \
    $(wildcard include/config/VMCORE_INFO) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kmod.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/umh.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/gfp.h \
    $(wildcard include/config/ZONE_DMA) \
    $(wildcard include/config/ZONE_DMA32) \
    $(wildcard include/config/ZONE_DEVICE) \
    $(wildcard include/config/CONTIG_ALLOC) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/mmzone.h \
    $(wildcard include/config/ARCH_FORCE_MAX_ORDER) \
    $(wildcard include/config/PAGE_BLOCK_MAX_ORDER) \
    $(wildcard include/config/HAVE_GIGANTIC_FOLIOS) \
    $(wildcard include/config/HUGETLB_PAGE) \
    $(wildcard include/config/HUGETLB_PAGE_OPTIMIZE_VMEMMAP) \
    $(wildcard include/config/CMA) \
    $(wildcard include/config/MEMORY_ISOLATION) \
    $(wildcard include/config/ZSMALLOC) \
    $(wildcard include/config/UNACCEPTED_MEMORY) \
    $(wildcard include/config/IOMMU_SUPPORT) \
    $(wildcard include/config/SWAP) \
    $(wildcard include/config/TRANSPARENT_HUGEPAGE) \
    $(wildcard include/config/LRU_GEN_STATS) \
    $(wildcard include/config/LRU_GEN_WALKS_MMU) \
    $(wildcard include/config/MEMORY_FAILURE) \
    $(wildcard include/config/PAGE_EXTENSION) \
    $(wildcard include/config/DEFERRED_STRUCT_PAGE_INIT) \
    $(wildcard include/config/HAVE_MEMORYLESS_NODES) \
    $(wildcard include/config/SPARSEMEM_EXTREME) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP_PREINIT) \
    $(wildcard include/config/HAVE_ARCH_PFN_VALID) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/list_nulls.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/wait.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/seqlock.h \
    $(wildcard include/config/CC_IS_GCC) \
    $(wildcard include/config/GCC_VERSION) \
    $(wildcard include/config/UBSAN_ALIGNMENT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/mutex.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/debug_locks.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/pageblock-flags.h \
    $(wildcard include/config/HUGETLB_PAGE_SIZE_VARIABLE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/page-flags-layout.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/generated/bounds.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/mm_types.h \
    $(wildcard include/config/HAVE_ALIGNED_STRUCT_PAGE) \
    $(wildcard include/config/SLAB_OBJ_EXT) \
    $(wildcard include/config/HUGETLB_PMD_PAGE_TABLE_SHARING) \
    $(wildcard include/config/SLAB_FREELIST_HARDENED) \
    $(wildcard include/config/USERFAULTFD) \
    $(wildcard include/config/ANON_VMA_NAME) \
    $(wildcard include/config/PER_VMA_LOCK) \
    $(wildcard include/config/HAVE_ARCH_COMPAT_MMAP_BASES) \
    $(wildcard include/config/MEMBARRIER) \
    $(wildcard include/config/ARCH_HAS_ELF_CORE_EFLAGS) \
    $(wildcard include/config/AIO) \
    $(wildcard include/config/MMU_NOTIFIER) \
    $(wildcard include/config/SPLIT_PMD_PTLOCKS) \
    $(wildcard include/config/IOMMU_MM_DATA) \
    $(wildcard include/config/KSM) \
    $(wildcard include/config/MM_ID) \
    $(wildcard include/config/CORE_DUMP_DEFAULT_ELF_HEADERS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/auxvec.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/auxvec.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/auxvec.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kref.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/refcount.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rbtree.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rcupdate.h \
    $(wildcard include/config/TINY_RCU) \
    $(wildcard include/config/RCU_STRICT_GRACE_PERIOD) \
    $(wildcard include/config/RCU_LAZY) \
    $(wildcard include/config/RCU_STALL_COMMON) \
    $(wildcard include/config/VIRT_XFER_TO_GUEST_WORK) \
    $(wildcard include/config/RCU_NOCB_CPU) \
    $(wildcard include/config/TASKS_RCU_GENERIC) \
    $(wildcard include/config/TASKS_RUDE_RCU) \
    $(wildcard include/config/TREE_RCU) \
    $(wildcard include/config/DEBUG_OBJECTS_RCU_HEAD) \
    $(wildcard include/config/PROVE_RCU) \
    $(wildcard include/config/ARCH_WEAK_RELEASE_ACQUIRE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/context_tracking_irq.h \
    $(wildcard include/config/CONTEXT_TRACKING_IDLE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rcutree.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/maple_tree.h \
    $(wildcard include/config/MAPLE_RCU_DISABLED) \
    $(wildcard include/config/DEBUG_MAPLE_TREE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rwsem.h \
    $(wildcard include/config/RWSEM_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_RWSEMS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/completion.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/swait.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/uprobes.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/timer.h \
    $(wildcard include/config/DEBUG_OBJECTS_TIMERS) \
    $(wildcard include/config/NO_HZ_COMMON) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/ktime.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/jiffies.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/vdso/jiffies.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/generated/timeconst.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/vdso/ktime.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/timekeeping.h \
    $(wildcard include/config/POSIX_AUX_CLOCKS) \
    $(wildcard include/config/GENERIC_CMOS_UPDATE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/clocksource_ids.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/debugobjects.h \
    $(wildcard include/config/DEBUG_OBJECTS) \
    $(wildcard include/config/DEBUG_OBJECTS_FREE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/uprobes.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/notifier.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/srcu.h \
    $(wildcard include/config/TINY_SRCU) \
    $(wildcard include/config/NEED_SRCU_NMI_SAFE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/workqueue.h \
    $(wildcard include/config/DEBUG_OBJECTS_WORK) \
    $(wildcard include/config/FREEZER) \
    $(wildcard include/config/WQ_WATCHDOG) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rcu_segcblist.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/srcutree.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rcu_node_tree.h \
    $(wildcard include/config/RCU_FANOUT) \
    $(wildcard include/config/RCU_FANOUT_LEAF) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/percpu_counter.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/mmu.h \
    $(wildcard include/config/MODIFY_LDT_SYSCALL) \
    $(wildcard include/config/ADDRESS_MASKING) \
    $(wildcard include/config/BROADCAST_TLB_FLUSH) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/page-flags.h \
    $(wildcard include/config/PAGE_IDLE_FLAG) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_2) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_3) \
    $(wildcard include/config/MIGRATION) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/local_lock.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/local_lock_internal.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/zswap.h \
    $(wildcard include/config/ZSWAP) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sizes.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/memory_hotplug.h \
    $(wildcard include/config/ARCH_HAS_ADD_PAGES) \
    $(wildcard include/config/MEMORY_HOTREMOVE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/asm/mmzone.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/mmzone.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/topology.h \
    $(wildcard include/config/USE_PERCPU_NUMA_NODE_ID) \
    $(wildcard include/config/SCHED_SMT) \
    $(wildcard include/config/GENERIC_ARCH_TOPOLOGY) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/arch_topology.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/topology.h \
    $(wildcard include/config/X86_LOCAL_APIC) \
    $(wildcard include/config/SCHED_MC_PRIO) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/mpspec.h \
    $(wildcard include/config/EISA) \
    $(wildcard include/config/X86_MPPARSE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/mpspec_def.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/x86_init.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/apicdef.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/topology.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/cpu_smt.h \
    $(wildcard include/config/HOTPLUG_SMT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sysctl.h \
    $(wildcard include/config/SYSCTL) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/sysctl.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/elf.h \
    $(wildcard include/config/ARCH_HAVE_EXTRA_ELF_NOTES) \
    $(wildcard include/config/ARCH_USE_GNU_PROPERTY) \
    $(wildcard include/config/ARCH_HAVE_ELF_PROT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/elf.h \
    $(wildcard include/config/X86_X32_ABI) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/ia32.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/compat.h \
    $(wildcard include/config/ARCH_HAS_SYSCALL_WRAPPER) \
    $(wildcard include/config/COMPAT_OLD_SIGACTION) \
    $(wildcard include/config/HARDENED_USERCOPY) \
    $(wildcard include/config/ODD_RT_SIGACTION) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sem.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/sem.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/ipc.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rhashtable-types.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/ipc.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/uapi/asm/ipcbuf.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/asm-generic/ipcbuf.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/sembuf.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/socket.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/uapi/asm/socket.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/asm-generic/socket.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/uapi/asm/sockios.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/asm-generic/sockios.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/sockios.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/uio.h \
    $(wildcard include/config/ARCH_HAS_COPY_MC) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/ucopysize.h \
    $(wildcard include/config/HARDENED_USERCOPY_DEFAULT_ON) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/uio.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/socket.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/if.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/libc-compat.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/hdlc/ioctl.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/fs.h \
    $(wildcard include/config/FANOTIFY_ACCESS_PERMISSIONS) \
    $(wildcard include/config/READ_ONLY_THP_FOR_FS) \
    $(wildcard include/config/FS_POSIX_ACL) \
    $(wildcard include/config/CGROUP_WRITEBACK) \
    $(wildcard include/config/IMA) \
    $(wildcard include/config/FILE_LOCKING) \
    $(wildcard include/config/FSNOTIFY) \
    $(wildcard include/config/EPOLL) \
    $(wildcard include/config/FS_DAX) \
    $(wildcard include/config/BLOCK) \
    $(wildcard include/config/UNICODE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/fs/super.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/fs/super_types.h \
    $(wildcard include/config/QUOTA) \
    $(wildcard include/config/FS_ENCRYPTION) \
    $(wildcard include/config/FS_VERITY) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/fs_dirent.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/errseq.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/list_lru.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/shrinker.h \
    $(wildcard include/config/SHRINKER_DEBUG) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/xarray.h \
    $(wildcard include/config/XARRAY_MULTI) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sched/mm.h \
    $(wildcard include/config/MMU_LAZY_TLB_REFCOUNT) \
    $(wildcard include/config/ARCH_HAS_MEMBARRIER_CALLBACKS) \
    $(wildcard include/config/ARCH_HAS_SYNC_CORE_BEFORE_USERMODE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sync_core.h \
    $(wildcard include/config/ARCH_HAS_PREPARE_SYNC_CORE_CMD) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/sync_core.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sched/coredump.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/list_bl.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/bit_spinlock.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/uuid.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/percpu-rwsem.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rcuwait.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sched/signal.h \
    $(wildcard include/config/SCHED_AUTOGROUP) \
    $(wildcard include/config/BSD_PROCESS_ACCT) \
    $(wildcard include/config/TASKSTATS) \
    $(wildcard include/config/STACK_GROWSUP) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rculist.h \
    $(wildcard include/config/PROVE_RCU_LIST) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/signal.h \
    $(wildcard include/config/DYNAMIC_SIGFRAME) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sched/jobctl.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sched/task.h \
    $(wildcard include/config/HAVE_EXIT_THREAD) \
    $(wildcard include/config/ARCH_WANTS_DYNAMIC_TASK_STRUCT) \
    $(wildcard include/config/HAVE_ARCH_THREAD_STRUCT_WHITELIST) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/uaccess.h \
    $(wildcard include/config/ARCH_HAS_SUBPAGE_FAULTS) \
    $(wildcard include/config/ARCH_MEMORY_ORDER_TSO) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/fault-inject-usercopy.h \
    $(wildcard include/config/FAULT_INJECTION_USERCOPY) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/nospec.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/uaccess.h \
    $(wildcard include/config/CC_HAS_ASM_GOTO_OUTPUT) \
    $(wildcard include/config/CC_HAS_ASM_GOTO_TIED_OUTPUT) \
    $(wildcard include/config/X86_INTEL_USERCOPY) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/mmap_lock.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/smap.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/extable.h \
    $(wildcard include/config/BPF_JIT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/tlbflush.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/mmu_notifier.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/interval_tree.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/invpcid.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/pti.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/pgtable.h \
    $(wildcard include/config/DEBUG_WX) \
    $(wildcard include/config/HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD) \
    $(wildcard include/config/ARCH_SUPPORTS_PMD_PFNMAP) \
    $(wildcard include/config/ARCH_SUPPORTS_PUD_PFNMAP) \
    $(wildcard include/config/HAVE_ARCH_SOFT_DIRTY) \
    $(wildcard include/config/ARCH_ENABLE_THP_MIGRATION) \
    $(wildcard include/config/PAGE_TABLE_CHECK) \
    $(wildcard include/config/X86_SGX) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/pkru.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/fpu/api.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/coco.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/pgtable_uffd.h \
    $(wildcard include/config/PTE_MARKER_UFFD_WP) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/page_table_check.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/pgtable_64.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/fixmap.h \
    $(wildcard include/config/PROVIDE_OHCI1394_DMA_INIT) \
    $(wildcard include/config/X86_IO_APIC) \
    $(wildcard include/config/PCI_MMCONFIG) \
    $(wildcard include/config/ACPI_APEI_GHES) \
    $(wildcard include/config/INTEL_TXT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/vsyscall.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/fixmap.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/pgtable-invert.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/uaccess_64.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/access_ok.h \
    $(wildcard include/config/ALTERNATE_USER_ADDRESS_SPACE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/cred.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/capability.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/capability.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/key.h \
    $(wildcard include/config/KEY_NOTIFICATIONS) \
    $(wildcard include/config/NET) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/assoc_array.h \
    $(wildcard include/config/ASSOCIATIVE_ARRAY) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sched/user.h \
    $(wildcard include/config/VFIO_PCI_ZDEV_KVM) \
    $(wildcard include/config/IOMMUFD) \
    $(wildcard include/config/WATCH_QUEUE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/ratelimit.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/pid.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/posix-timers.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/alarmtimer.h \
    $(wildcard include/config/RTC_CLASS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/hrtimer.h \
    $(wildcard include/config/HIGH_RES_TIMERS) \
    $(wildcard include/config/TIME_LOW_RES) \
    $(wildcard include/config/TIMERFD) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/hrtimer_defs.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/timerqueue.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/hrtimer_rearm.h \
    $(wildcard include/config/HRTIMER_REARM_DEFERRED) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rcuref.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rcu_sync.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/quota.h \
    $(wildcard include/config/QUOTA_NETLINK_INTERFACE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/dqblk_xfs.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/dqblk_v1.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/dqblk_v2.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/dqblk_qtree.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/projid.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/quota.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/unicode.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/dcache.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rculist_bl.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/lockref.h \
    $(wildcard include/config/ARCH_USE_CMPXCHG_LOCKREF) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/stringhash.h \
    $(wildcard include/config/DCACHE_WORD_ACCESS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/hash.h \
    $(wildcard include/config/HAVE_ARCH_HASH) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/vfsdebug.h \
    $(wildcard include/config/DEBUG_VFS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/wait_bit.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kdev_t.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/kdev_t.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/path.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/radix-tree.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/semaphore.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/fcntl.h \
    $(wildcard include/config/ARCH_32BIT_OFF_T) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/fcntl.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/uapi/asm/fcntl.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/asm-generic/fcntl.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/openat2.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/migrate_mode.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/delayed_call.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/ioprio.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sched/rt.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/iocontext.h \
    $(wildcard include/config/BLK_ICQ) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/ioprio.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/mount.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/mnt_idmapping.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/slab.h \
    $(wildcard include/config/FAILSLAB) \
    $(wildcard include/config/KFENCE) \
    $(wildcard include/config/SLUB_TINY) \
    $(wildcard include/config/SLUB_DEBUG) \
    $(wildcard include/config/KMALLOC_PARTITION_RANDOM) \
    $(wildcard include/config/KMALLOC_PARTITION_TYPED) \
    $(wildcard include/config/SLAB_BUCKETS) \
    $(wildcard include/config/KVFREE_RCU_BATCHED) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/percpu-refcount.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kasan.h \
    $(wildcard include/config/KASAN_STACK) \
    $(wildcard include/config/KASAN_VMALLOC) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kasan-enabled.h \
    $(wildcard include/config/ARCH_DEFER_KASAN) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kasan-tags.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rw_hint.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/file_ref.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/fs.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/aio_abi.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/unistd.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/unistd.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/uapi/asm/unistd.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/uapi/asm/unistd_64.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/asm/unistd_64_x32.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/generated/asm/unistd_32_ia32.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/compat.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sched/task_stack.h \
    $(wildcard include/config/DEBUG_STACK_USAGE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/magic.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/user32.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/compat.h \
    $(wildcard include/config/COMPAT_FOR_U64_ALIGNMENT) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/syscall_wrapper.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/user.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/user_64.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/fsgsbase.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/vdso.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/elf.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/uapi/linux/elf-em.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kobject.h \
    $(wildcard include/config/UEVENT_HELPER) \
    $(wildcard include/config/DEBUG_KOBJECT_RELEASE) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/sysfs.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kernfs.h \
    $(wildcard include/config/KERNFS) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/idr.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/kobject_ns.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/moduleparam.h \
    $(wildcard include/config/ALPHA) \
    $(wildcard include/config/PPC64) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/rbtree_latch.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/error-injection.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/error-injection.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/linux/dynamic_debug.h \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/arch/x86/include/asm/module.h \
    $(wildcard include/config/UNWINDER_ORC) \
  /home/faizanmomin/weekend-driver-grind/resource/kernel-source/include/asm-generic/module.h \
    $(wildcard include/config/HAVE_MOD_ARCH_SPECIFIC) \

hello.o: $(deps_hello.o)

$(deps_hello.o):

hello.o: $(wildcard /home/faizanmomin/weekend-driver-grind/resource/kernel-source/tools/objtool/objtool)
