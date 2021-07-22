/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;

/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void data_HNN_SPP_2(float *llvm_cbe_V, float *llvm_cbe_U_0, float *llvm_cbe_U_1, float *llvm_cbe_U_2, float *llvm_cbe_I, float *llvm_cbe_T, float llvm_cbe_A, float llvm_cbe_B, float llvm_cbe_C);
void rhoxi(signed int *llvm_cbe_rho, float *llvm_cbe_C_xi);
signed int deltak(signed int llvm_cbe_a, signed int llvm_cbe_b);
void txiyj(signed int llvm_cbe_u3, signed int llvm_cbe_u4, float *llvm_cbe_T);
void ixi(signed int llvm_cbe_u1, signed int llvm_cbe_u2, signed int llvm_cbe_u4, signed int llvm_cbe_u5, float *llvm_cbe_C_xi, signed int *llvm_cbe_rho, signed int llvm_cbe_source, signed int llvm_cbe_destin, float *llvm_cbe_I);
float energy(signed int llvm_cbe_u1, signed int llvm_cbe_u2, signed int llvm_cbe_u3, signed int llvm_cbe_u4, signed int llvm_cbe_u5, float *llvm_cbe_C_xi, float *llvm_cbe_V, signed int *llvm_cbe_rho, signed int llvm_cbe_source, signed int llvm_cbe_destin);
signed int main(signed int ,  char **);
void hnn_fpga(float *, float , float *);


/* Global Variable Definitions and Initialization */
static  char aesl_internal_str[9] = "\nC_xi = ";
static float aesl_internal_main_OC_C_xi[64] = { 0x0p0, 0x1.d1eb86p-1, 0x1.70a3d8p-2, 0x0p0, 0x0p0, 0x0p0, 0x1.333334p0, 0x0p0, 0x1.d1eb86p-1, 0x0p0, 0x0p0, 0x1.8p-2, 0x0p0, 0x0p0, 0x0p0, 0x1.051eb8p0, 0x1.70a3d8p-2, 0x0p0, 0x0p0, 0x1.e147aep-2, 0x1.47ae14p-1, 0x0p0, 0x0p0, 0x0p0, 0x0p0, 0x1.8p-2, 0x1.e147aep-2, 0x0p0, 0x0p0, 0x1p-1, 0x0p0, 0x0p0, 0x0p0, 0x0p0, 0x1.47ae14p-1, 0x0p0, 0x0p0, 0x1.1eb852p-1, 0x1.b33334p-2, 0x0p0, 0x0p0, 0x0p0, 0x0p0, 0x1p-1, 0x1.1eb852p-1, 0x0p0, 0x0p0, 0x1.99999ap-2, 0x1.333334p0, 0x0p0, 0x0p0, 0x0p0, 0x1.b33334p-2, 0x0p0, 0x0p0, 0x1.19999ap0, 0x0p0, 0x1.051eb8p0, 0x0p0, 0x0p0, 0x0p0, 0x1.99999ap-2, 0x1.19999ap0, 0x0p0 };
static  char aesl_internal__OC_str4[30] = "\nIteracion %d: Energia = %f. ";
static  char aesl_internal__OC_str2[5] = "%f, ";
static  char aesl_internal_str2[6] = "\nV = ";
static  char aesl_internal_str3[2] = "]";


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void data_HNN_SPP_2(float *llvm_cbe_V, float *llvm_cbe_U_0, float *llvm_cbe_U_1, float *llvm_cbe_U_2, float *llvm_cbe_I, float *llvm_cbe_T, float llvm_cbe_A, float llvm_cbe_B, float llvm_cbe_C) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge10_count = 0;
  unsigned int llvm_cbe_storemerge10;
  unsigned int llvm_cbe_storemerge10__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  unsigned int llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  unsigned int llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge19_count = 0;
  unsigned int llvm_cbe_storemerge19;
  unsigned int llvm_cbe_storemerge19__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  unsigned int llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge27_count = 0;
  unsigned int llvm_cbe_storemerge27;
  unsigned int llvm_cbe_storemerge27__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  float llvm_cbe_tmp__5;
  float llvm_cbe_tmp__5__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  unsigned int llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  unsigned int llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  unsigned long long llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  float *llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  float llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  unsigned long long llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  float *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  float llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  float llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  float llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  float llvm_cbe_tmp__16;
  float llvm_cbe_tmp__16__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  unsigned int llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  unsigned long long llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  float *llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  float llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  float *llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  float llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  float llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  float llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  float llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  float llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  float *llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  float llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  float llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  float llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  float *llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  unsigned int llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond11_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  unsigned int llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond12_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  float llvm_cbe_tmp__34;
  float llvm_cbe_tmp__34__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  unsigned int llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  unsigned long long llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  float *llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  float llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  unsigned int llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  unsigned long long llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  float *llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  float llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  float llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  float llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  float llvm_cbe_tmp__45;
  float llvm_cbe_tmp__45__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  unsigned int llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  unsigned long long llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  float *llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  float llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  unsigned int llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  unsigned long long llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  float *llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  float llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  float llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  float llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  float llvm_cbe_tmp__56;
  float llvm_cbe_tmp__56__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  unsigned int llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  unsigned long long llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  float *llvm_cbe_tmp__59;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  float llvm_cbe_tmp__60;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  unsigned int llvm_cbe_tmp__61;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  unsigned long long llvm_cbe_tmp__62;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  float *llvm_cbe_tmp__63;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  float llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  float llvm_cbe_tmp__65;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  float llvm_cbe_tmp__66;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  float llvm_cbe_tmp__67;
  float llvm_cbe_tmp__67__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  unsigned int llvm_cbe_tmp__68;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  unsigned long long llvm_cbe_tmp__69;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  float *llvm_cbe_tmp__70;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  float llvm_cbe_tmp__71;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  unsigned int llvm_cbe_tmp__72;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  unsigned long long llvm_cbe_tmp__73;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  float *llvm_cbe_tmp__74;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  float llvm_cbe_tmp__75;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  float llvm_cbe_tmp__76;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  float llvm_cbe_tmp__77;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  float llvm_cbe_tmp__78;
  float llvm_cbe_tmp__78__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
  unsigned int llvm_cbe_tmp__79;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;
  unsigned long long llvm_cbe_tmp__80;
  static  unsigned long long aesl_llvm_cbe_204_count = 0;
  float *llvm_cbe_tmp__81;
  static  unsigned long long aesl_llvm_cbe_205_count = 0;
  float llvm_cbe_tmp__82;
  static  unsigned long long aesl_llvm_cbe_206_count = 0;
  unsigned int llvm_cbe_tmp__83;
  static  unsigned long long aesl_llvm_cbe_207_count = 0;
  unsigned long long llvm_cbe_tmp__84;
  static  unsigned long long aesl_llvm_cbe_208_count = 0;
  float *llvm_cbe_tmp__85;
  static  unsigned long long aesl_llvm_cbe_209_count = 0;
  float llvm_cbe_tmp__86;
  static  unsigned long long aesl_llvm_cbe_210_count = 0;
  float llvm_cbe_tmp__87;
  static  unsigned long long aesl_llvm_cbe_211_count = 0;
  float llvm_cbe_tmp__88;
  static  unsigned long long aesl_llvm_cbe_212_count = 0;
  static  unsigned long long aesl_llvm_cbe_213_count = 0;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  float llvm_cbe_tmp__89;
  float llvm_cbe_tmp__89__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  unsigned int llvm_cbe_tmp__90;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  unsigned long long llvm_cbe_tmp__91;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  float *llvm_cbe_tmp__92;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  float llvm_cbe_tmp__93;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  unsigned int llvm_cbe_tmp__94;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  unsigned long long llvm_cbe_tmp__95;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;
  float *llvm_cbe_tmp__96;
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
  float llvm_cbe_tmp__97;
  static  unsigned long long aesl_llvm_cbe_232_count = 0;
  float llvm_cbe_tmp__98;
  static  unsigned long long aesl_llvm_cbe_233_count = 0;
  float llvm_cbe_tmp__99;
  static  unsigned long long aesl_llvm_cbe_234_count = 0;
  static  unsigned long long aesl_llvm_cbe_235_count = 0;
  static  unsigned long long aesl_llvm_cbe_236_count = 0;
  static  unsigned long long aesl_llvm_cbe_237_count = 0;
  static  unsigned long long aesl_llvm_cbe_238_count = 0;
  static  unsigned long long aesl_llvm_cbe_239_count = 0;
  static  unsigned long long aesl_llvm_cbe_240_count = 0;
  static  unsigned long long aesl_llvm_cbe_241_count = 0;
  static  unsigned long long aesl_llvm_cbe_242_count = 0;
  static  unsigned long long aesl_llvm_cbe_243_count = 0;
  static  unsigned long long aesl_llvm_cbe_244_count = 0;
  static  unsigned long long aesl_llvm_cbe_245_count = 0;
  float llvm_cbe_tmp__100;
  float llvm_cbe_tmp__100__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_246_count = 0;
  unsigned int llvm_cbe_tmp__101;
  static  unsigned long long aesl_llvm_cbe_247_count = 0;
  unsigned long long llvm_cbe_tmp__102;
  static  unsigned long long aesl_llvm_cbe_248_count = 0;
  float *llvm_cbe_tmp__103;
  static  unsigned long long aesl_llvm_cbe_249_count = 0;
  float llvm_cbe_tmp__104;
  static  unsigned long long aesl_llvm_cbe_250_count = 0;
  unsigned int llvm_cbe_tmp__105;
  static  unsigned long long aesl_llvm_cbe_251_count = 0;
  unsigned long long llvm_cbe_tmp__106;
  static  unsigned long long aesl_llvm_cbe_252_count = 0;
  float *llvm_cbe_tmp__107;
  static  unsigned long long aesl_llvm_cbe_253_count = 0;
  float llvm_cbe_tmp__108;
  static  unsigned long long aesl_llvm_cbe_254_count = 0;
  float llvm_cbe_tmp__109;
  static  unsigned long long aesl_llvm_cbe_255_count = 0;
  float llvm_cbe_tmp__110;
  static  unsigned long long aesl_llvm_cbe_256_count = 0;
  static  unsigned long long aesl_llvm_cbe_257_count = 0;
  static  unsigned long long aesl_llvm_cbe_258_count = 0;
  static  unsigned long long aesl_llvm_cbe_259_count = 0;
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;
  unsigned int llvm_cbe_tmp__111;
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @data_HNN_SPP_2\n");
  llvm_cbe_storemerge10__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader8;

  do {     /* Syntactic loop '.preheader8' to make GCC happy */
llvm_cbe__2e_preheader8:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge10 = phi i32 [ 0, %%0 ], [ %%37, %%36  for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_storemerge10_count);
  llvm_cbe_storemerge10 = (unsigned int )llvm_cbe_storemerge10__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge10 = 0x%X",llvm_cbe_storemerge10);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__33);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = shl i32 %%storemerge10, 9, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_35_count);
  llvm_cbe_tmp__1 = (unsigned int )llvm_cbe_storemerge10 << 9u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = shl i32 %%storemerge10, 3, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_36_count);
  llvm_cbe_tmp__2 = (unsigned int )llvm_cbe_storemerge10 << 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
  llvm_cbe_storemerge19__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader5;

llvm_cbe_tmp__112:
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = add nsw i32 %%storemerge10, 1, !dbg !11 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_102_count);
  llvm_cbe_tmp__33 = (unsigned int )((unsigned int )(llvm_cbe_storemerge10&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__33&4294967295ull)));
  if (((llvm_cbe_tmp__33&4294967295U) == (8u&4294967295U))) {
    goto llvm_cbe_tmp__113;
  } else {
    llvm_cbe_storemerge10__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__33;   /* for PHI node */
    goto llvm_cbe__2e_preheader8;
  }

  do {     /* Syntactic loop '.preheader5' to make GCC happy */
llvm_cbe__2e_preheader5:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge19 = phi i32 [ 0, %%.preheader8 ], [ %%35, %%.thread19  for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_storemerge19_count);
  llvm_cbe_storemerge19 = (unsigned int )llvm_cbe_storemerge19__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge19 = 0x%X",llvm_cbe_storemerge19);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__32);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = shl i32 %%storemerge19, 6, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_43_count);
  llvm_cbe_tmp__3 = (unsigned int )llvm_cbe_storemerge19 << 6u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = add i32 %%3, %%1, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__4 = (unsigned int )((unsigned int )(llvm_cbe_tmp__3&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__1&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__4&4294967295ull)));
  llvm_cbe_storemerge27__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__5__PHI_TEMPORARY = (float )0x0p0;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

llvm_cbe__2e_thread19:
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = phi float [ %%121, %%.thread18 ], [ %%109, %%.thread17  for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_75_count);
  llvm_cbe_tmp__16 = (float )llvm_cbe_tmp__16__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__16);
printf("\n = %f",llvm_cbe_tmp__110);
printf("\n = %f",llvm_cbe_tmp__99);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = add nsw i32 %%storemerge19, %%2, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_76_count);
  llvm_cbe_tmp__17 = (unsigned int )((unsigned int )(llvm_cbe_storemerge19&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__2&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__17&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = sext i32 %%20 to i64, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_77_count);
  llvm_cbe_tmp__18 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__18);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds float* %%U_1, i64 %%21, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_78_count);
  llvm_cbe_tmp__19 = (float *)(&llvm_cbe_U_1[(((signed long long )llvm_cbe_tmp__18))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__18));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = load float* %%22, align 4, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_79_count);
  llvm_cbe_tmp__20 = (float )*llvm_cbe_tmp__19;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__20, *(int*)(&llvm_cbe_tmp__20));
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds float* %%U_2, i64 %%21, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_80_count);
  llvm_cbe_tmp__21 = (float *)(&llvm_cbe_U_2[(((signed long long )llvm_cbe_tmp__18))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__18));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = load float* %%24, align 4, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__22 = (float )*llvm_cbe_tmp__21;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__22, *(int*)(&llvm_cbe_tmp__22));
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = fmul float %%25, %%A, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_82_count);
  llvm_cbe_tmp__23 = (float )((float )(llvm_cbe_tmp__22 * llvm_cbe_A));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__23, *(int*)(&llvm_cbe_tmp__23));
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = fsub float %%23, %%26, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_83_count);
  llvm_cbe_tmp__24 = (float )((float )(llvm_cbe_tmp__20 - llvm_cbe_tmp__23));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__24, *(int*)(&llvm_cbe_tmp__24));
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = fmul float %%19, %%B, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_84_count);
  llvm_cbe_tmp__25 = (float )((float )(llvm_cbe_tmp__16 * llvm_cbe_B));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__25, *(int*)(&llvm_cbe_tmp__25));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = fadd float %%27, %%28, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_85_count);
  llvm_cbe_tmp__26 = (float )((float )(llvm_cbe_tmp__24 + llvm_cbe_tmp__25));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__26, *(int*)(&llvm_cbe_tmp__26));
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = getelementptr inbounds float* %%I, i64 %%21, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_86_count);
  llvm_cbe_tmp__27 = (float *)(&llvm_cbe_I[(((signed long long )llvm_cbe_tmp__18))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__18));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = load float* %%30, align 4, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_87_count);
  llvm_cbe_tmp__28 = (float )*llvm_cbe_tmp__27;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__28, *(int*)(&llvm_cbe_tmp__28));
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = fmul float %%31, %%C, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_88_count);
  llvm_cbe_tmp__29 = (float )((float )(llvm_cbe_tmp__28 * llvm_cbe_C));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__29, *(int*)(&llvm_cbe_tmp__29));
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = fadd float %%29, %%32, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_89_count);
  llvm_cbe_tmp__30 = (float )((float )(llvm_cbe_tmp__26 + llvm_cbe_tmp__29));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__30, *(int*)(&llvm_cbe_tmp__30));
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = getelementptr inbounds float* %%U_0, i64 %%21, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_90_count);
  llvm_cbe_tmp__31 = (float *)(&llvm_cbe_U_0[(((signed long long )llvm_cbe_tmp__18))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__18));
}
if (AESL_DEBUG_TRACE)
printf("\n  store float %%33, float* %%34, align 4, !dbg !9 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_91_count);
  *llvm_cbe_tmp__31 = llvm_cbe_tmp__30;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__30);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = add nsw i32 %%storemerge19, 1, !dbg !11 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_92_count);
  llvm_cbe_tmp__32 = (unsigned int )((unsigned int )(llvm_cbe_storemerge19&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__32&4294967295ull)));
  if (((llvm_cbe_tmp__32&4294967295U) == (8u&4294967295U))) {
    goto llvm_cbe_tmp__112;
  } else {
    llvm_cbe_storemerge19__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__32;   /* for PHI node */
    goto llvm_cbe__2e_preheader5;
  }

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge27 = phi i32 [ 0, %%.preheader5 ], [ %%122, %%.thread18  for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_storemerge27_count);
  llvm_cbe_storemerge27 = (unsigned int )llvm_cbe_storemerge27__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge27 = 0x%X",llvm_cbe_storemerge27);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__111);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = phi float [ 0.000000e+00, %%.preheader5 ], [ %%121, %%.thread18  for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_46_count);
  llvm_cbe_tmp__5 = (float )llvm_cbe_tmp__5__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__5);
printf("\n = %f",0x0p0);
printf("\n = %f",llvm_cbe_tmp__110);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = shl nsw i32 %%storemerge27, 3, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_52_count);
  llvm_cbe_tmp__6 = (unsigned int )llvm_cbe_storemerge27 << 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = add i32 %%4, %%6, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_53_count);
  llvm_cbe_tmp__7 = (unsigned int )((unsigned int )(llvm_cbe_tmp__4&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__6&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__7&4294967295ull)));
  if (((llvm_cbe_storemerge27&4294967295U) == (0u&4294967295U))) {
    llvm_cbe_tmp__34__PHI_TEMPORARY = (float )llvm_cbe_tmp__5;   /* for PHI node */
    goto llvm_cbe__2e_thread;
  } else {
    goto llvm_cbe_tmp__114;
  }

llvm_cbe__2e_thread18:
if (AESL_DEBUG_TRACE)
printf("\n  %%111 = phi float [ %%109, %%.thread17 ], [ %%97, %%.thread16  for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_245_count);
  llvm_cbe_tmp__100 = (float )llvm_cbe_tmp__100__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__100);
printf("\n = %f",llvm_cbe_tmp__99);
printf("\n = %f",llvm_cbe_tmp__88);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%112 = or i32 %%7, 7, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_246_count);
  llvm_cbe_tmp__101 = (unsigned int )llvm_cbe_tmp__7 | 7u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__101);
if (AESL_DEBUG_TRACE)
printf("\n  %%113 = sext i32 %%112 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_247_count);
  llvm_cbe_tmp__102 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__101);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__102);
if (AESL_DEBUG_TRACE)
printf("\n  %%114 = getelementptr inbounds float* %%T, i64 %%113, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_248_count);
  llvm_cbe_tmp__103 = (float *)(&llvm_cbe_T[(((signed long long )llvm_cbe_tmp__102))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__102));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%115 = load float* %%114, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_249_count);
  llvm_cbe_tmp__104 = (float )*llvm_cbe_tmp__103;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__104, *(int*)(&llvm_cbe_tmp__104));
if (AESL_DEBUG_TRACE)
printf("\n  %%116 = or i32 %%6, 7, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_250_count);
  llvm_cbe_tmp__105 = (unsigned int )llvm_cbe_tmp__6 | 7u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__105);
if (AESL_DEBUG_TRACE)
printf("\n  %%117 = sext i32 %%116 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_251_count);
  llvm_cbe_tmp__106 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__105);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__106);
if (AESL_DEBUG_TRACE)
printf("\n  %%118 = getelementptr inbounds float* %%V, i64 %%117, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_252_count);
  llvm_cbe_tmp__107 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__106))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__106));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%119 = load float* %%118, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_253_count);
  llvm_cbe_tmp__108 = (float )*llvm_cbe_tmp__107;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__108, *(int*)(&llvm_cbe_tmp__108));
if (AESL_DEBUG_TRACE)
printf("\n  %%120 = fmul float %%115, %%119, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_254_count);
  llvm_cbe_tmp__109 = (float )((float )(llvm_cbe_tmp__104 * llvm_cbe_tmp__108));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__109, *(int*)(&llvm_cbe_tmp__109));
if (AESL_DEBUG_TRACE)
printf("\n  %%121 = fadd float %%111, %%120, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_255_count);
  llvm_cbe_tmp__110 = (float )((float )(llvm_cbe_tmp__100 + llvm_cbe_tmp__109));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__110, *(int*)(&llvm_cbe_tmp__110));
if (AESL_DEBUG_TRACE)
printf("\n  %%122 = add nsw i32 %%storemerge27, 1, !dbg !12 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_265_count);
  llvm_cbe_tmp__111 = (unsigned int )((unsigned int )(llvm_cbe_storemerge27&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__111&4294967295ull)));
  if (((llvm_cbe_tmp__111&4294967295U) == (8u&4294967295U))) {
    llvm_cbe_tmp__16__PHI_TEMPORARY = (float )llvm_cbe_tmp__110;   /* for PHI node */
    goto llvm_cbe__2e_thread19;
  } else {
    llvm_cbe_storemerge27__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__111;   /* for PHI node */
    llvm_cbe_tmp__5__PHI_TEMPORARY = (float )llvm_cbe_tmp__110;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

llvm_cbe__2e_thread16:
if (AESL_DEBUG_TRACE)
printf("\n  %%87 = phi float [ %%85, %%.thread15 ], [ %%73, %%.thread14  for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_201_count);
  llvm_cbe_tmp__78 = (float )llvm_cbe_tmp__78__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__78);
printf("\n = %f",llvm_cbe_tmp__77);
printf("\n = %f",llvm_cbe_tmp__66);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%88 = or i32 %%7, 5, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_202_count);
  llvm_cbe_tmp__79 = (unsigned int )llvm_cbe_tmp__7 | 5u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__79);
if (AESL_DEBUG_TRACE)
printf("\n  %%89 = sext i32 %%88 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_203_count);
  llvm_cbe_tmp__80 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__79);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__80);
if (AESL_DEBUG_TRACE)
printf("\n  %%90 = getelementptr inbounds float* %%T, i64 %%89, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_204_count);
  llvm_cbe_tmp__81 = (float *)(&llvm_cbe_T[(((signed long long )llvm_cbe_tmp__80))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__80));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%91 = load float* %%90, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_205_count);
  llvm_cbe_tmp__82 = (float )*llvm_cbe_tmp__81;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__82, *(int*)(&llvm_cbe_tmp__82));
if (AESL_DEBUG_TRACE)
printf("\n  %%92 = or i32 %%6, 5, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_206_count);
  llvm_cbe_tmp__83 = (unsigned int )llvm_cbe_tmp__6 | 5u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__83);
if (AESL_DEBUG_TRACE)
printf("\n  %%93 = sext i32 %%92 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_207_count);
  llvm_cbe_tmp__84 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__83);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__84);
if (AESL_DEBUG_TRACE)
printf("\n  %%94 = getelementptr inbounds float* %%V, i64 %%93, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_208_count);
  llvm_cbe_tmp__85 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__84))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__84));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%95 = load float* %%94, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_209_count);
  llvm_cbe_tmp__86 = (float )*llvm_cbe_tmp__85;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__86, *(int*)(&llvm_cbe_tmp__86));
if (AESL_DEBUG_TRACE)
printf("\n  %%96 = fmul float %%91, %%95, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_210_count);
  llvm_cbe_tmp__87 = (float )((float )(llvm_cbe_tmp__82 * llvm_cbe_tmp__86));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__87, *(int*)(&llvm_cbe_tmp__87));
if (AESL_DEBUG_TRACE)
printf("\n  %%97 = fadd float %%87, %%96, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_211_count);
  llvm_cbe_tmp__88 = (float )((float )(llvm_cbe_tmp__78 + llvm_cbe_tmp__87));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__88, *(int*)(&llvm_cbe_tmp__88));
  if (((llvm_cbe_storemerge27&4294967295U) == (6u&4294967295U))) {
    llvm_cbe_tmp__100__PHI_TEMPORARY = (float )llvm_cbe_tmp__88;   /* for PHI node */
    goto llvm_cbe__2e_thread18;
  } else {
    llvm_cbe_tmp__89__PHI_TEMPORARY = (float )llvm_cbe_tmp__88;   /* for PHI node */
    goto llvm_cbe__2e_thread17;
  }

llvm_cbe__2e_thread14:
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = phi float [ %%61, %%.thread13 ], [ %%49, %%.thread  for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_157_count);
  llvm_cbe_tmp__56 = (float )llvm_cbe_tmp__56__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__56);
printf("\n = %f",llvm_cbe_tmp__55);
printf("\n = %f",llvm_cbe_tmp__44);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = or i32 %%7, 3, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_158_count);
  llvm_cbe_tmp__57 = (unsigned int )llvm_cbe_tmp__7 | 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__57);
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = sext i32 %%64 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_159_count);
  llvm_cbe_tmp__58 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__57);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__58);
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = getelementptr inbounds float* %%T, i64 %%65, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_160_count);
  llvm_cbe_tmp__59 = (float *)(&llvm_cbe_T[(((signed long long )llvm_cbe_tmp__58))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__58));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = load float* %%66, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_161_count);
  llvm_cbe_tmp__60 = (float )*llvm_cbe_tmp__59;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__60, *(int*)(&llvm_cbe_tmp__60));
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = or i32 %%6, 3, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_162_count);
  llvm_cbe_tmp__61 = (unsigned int )llvm_cbe_tmp__6 | 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__61);
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = sext i32 %%68 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_163_count);
  llvm_cbe_tmp__62 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__61);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__62);
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = getelementptr inbounds float* %%V, i64 %%69, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_164_count);
  llvm_cbe_tmp__63 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__62))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__62));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = load float* %%70, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_165_count);
  llvm_cbe_tmp__64 = (float )*llvm_cbe_tmp__63;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__64, *(int*)(&llvm_cbe_tmp__64));
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = fmul float %%67, %%71, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_166_count);
  llvm_cbe_tmp__65 = (float )((float )(llvm_cbe_tmp__60 * llvm_cbe_tmp__64));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__65, *(int*)(&llvm_cbe_tmp__65));
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = fadd float %%63, %%72, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_167_count);
  llvm_cbe_tmp__66 = (float )((float )(llvm_cbe_tmp__56 + llvm_cbe_tmp__65));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__66, *(int*)(&llvm_cbe_tmp__66));
  if (((llvm_cbe_storemerge27&4294967295U) == (4u&4294967295U))) {
    llvm_cbe_tmp__78__PHI_TEMPORARY = (float )llvm_cbe_tmp__66;   /* for PHI node */
    goto llvm_cbe__2e_thread16;
  } else {
    llvm_cbe_tmp__67__PHI_TEMPORARY = (float )llvm_cbe_tmp__66;   /* for PHI node */
    goto llvm_cbe__2e_thread15;
  }

llvm_cbe__2e_thread:
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = phi float [ %%17, %%9 ], [ %%5, %%.preheader  for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_113_count);
  llvm_cbe_tmp__34 = (float )llvm_cbe_tmp__34__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__34);
printf("\n = %f",llvm_cbe_tmp__15);
printf("\n = %f",llvm_cbe_tmp__5);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = or i32 %%7, 1, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_114_count);
  llvm_cbe_tmp__35 = (unsigned int )llvm_cbe_tmp__7 | 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__35);
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = sext i32 %%40 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_115_count);
  llvm_cbe_tmp__36 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__35);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__36);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = getelementptr inbounds float* %%T, i64 %%41, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_116_count);
  llvm_cbe_tmp__37 = (float *)(&llvm_cbe_T[(((signed long long )llvm_cbe_tmp__36))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__36));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = load float* %%42, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_117_count);
  llvm_cbe_tmp__38 = (float )*llvm_cbe_tmp__37;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__38, *(int*)(&llvm_cbe_tmp__38));
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = or i32 %%6, 1, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_118_count);
  llvm_cbe_tmp__39 = (unsigned int )llvm_cbe_tmp__6 | 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__39);
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = sext i32 %%44 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_119_count);
  llvm_cbe_tmp__40 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__39);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__40);
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = getelementptr inbounds float* %%V, i64 %%45, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_120_count);
  llvm_cbe_tmp__41 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__40))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__40));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = load float* %%46, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_121_count);
  llvm_cbe_tmp__42 = (float )*llvm_cbe_tmp__41;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__42, *(int*)(&llvm_cbe_tmp__42));
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = fmul float %%43, %%47, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_122_count);
  llvm_cbe_tmp__43 = (float )((float )(llvm_cbe_tmp__38 * llvm_cbe_tmp__42));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__43, *(int*)(&llvm_cbe_tmp__43));
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = fadd float %%39, %%48, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_123_count);
  llvm_cbe_tmp__44 = (float )((float )(llvm_cbe_tmp__34 + llvm_cbe_tmp__43));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__44, *(int*)(&llvm_cbe_tmp__44));
  if (((llvm_cbe_storemerge27&4294967295U) == (2u&4294967295U))) {
    llvm_cbe_tmp__56__PHI_TEMPORARY = (float )llvm_cbe_tmp__44;   /* for PHI node */
    goto llvm_cbe__2e_thread14;
  } else {
    llvm_cbe_tmp__45__PHI_TEMPORARY = (float )llvm_cbe_tmp__44;   /* for PHI node */
    goto llvm_cbe__2e_thread13;
  }

llvm_cbe_tmp__114:
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = sext i32 %%7 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_56_count);
  llvm_cbe_tmp__8 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds float* %%T, i64 %%10, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_57_count);
  llvm_cbe_tmp__9 = (float *)(&llvm_cbe_T[(((signed long long )llvm_cbe_tmp__8))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__8));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = load float* %%11, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_58_count);
  llvm_cbe_tmp__10 = (float )*llvm_cbe_tmp__9;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__10, *(int*)(&llvm_cbe_tmp__10));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = sext i32 %%6 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_59_count);
  llvm_cbe_tmp__11 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds float* %%V, i64 %%13, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_60_count);
  llvm_cbe_tmp__12 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__11))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__11));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load float* %%14, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_61_count);
  llvm_cbe_tmp__13 = (float )*llvm_cbe_tmp__12;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__13, *(int*)(&llvm_cbe_tmp__13));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = fmul float %%12, %%15, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_62_count);
  llvm_cbe_tmp__14 = (float )((float )(llvm_cbe_tmp__10 * llvm_cbe_tmp__13));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__14, *(int*)(&llvm_cbe_tmp__14));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = fadd float %%5, %%16, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_63_count);
  llvm_cbe_tmp__15 = (float )((float )(llvm_cbe_tmp__5 + llvm_cbe_tmp__14));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__15, *(int*)(&llvm_cbe_tmp__15));
  if (((llvm_cbe_storemerge27&4294967295U) == (1u&4294967295U))) {
    llvm_cbe_tmp__45__PHI_TEMPORARY = (float )llvm_cbe_tmp__15;   /* for PHI node */
    goto llvm_cbe__2e_thread13;
  } else {
    llvm_cbe_tmp__34__PHI_TEMPORARY = (float )llvm_cbe_tmp__15;   /* for PHI node */
    goto llvm_cbe__2e_thread;
  }

llvm_cbe__2e_thread13:
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = phi float [ %%49, %%.thread ], [ %%17, %%9  for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_135_count);
  llvm_cbe_tmp__45 = (float )llvm_cbe_tmp__45__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__45);
printf("\n = %f",llvm_cbe_tmp__44);
printf("\n = %f",llvm_cbe_tmp__15);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = or i32 %%7, 2, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_136_count);
  llvm_cbe_tmp__46 = (unsigned int )llvm_cbe_tmp__7 | 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__46);
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = sext i32 %%52 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_137_count);
  llvm_cbe_tmp__47 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__46);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__47);
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = getelementptr inbounds float* %%T, i64 %%53, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_138_count);
  llvm_cbe_tmp__48 = (float *)(&llvm_cbe_T[(((signed long long )llvm_cbe_tmp__47))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__47));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = load float* %%54, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_139_count);
  llvm_cbe_tmp__49 = (float )*llvm_cbe_tmp__48;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__49, *(int*)(&llvm_cbe_tmp__49));
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = or i32 %%6, 2, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_140_count);
  llvm_cbe_tmp__50 = (unsigned int )llvm_cbe_tmp__6 | 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__50);
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = sext i32 %%56 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_141_count);
  llvm_cbe_tmp__51 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__50);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__51);
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = getelementptr inbounds float* %%V, i64 %%57, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_142_count);
  llvm_cbe_tmp__52 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__51))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__51));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = load float* %%58, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_143_count);
  llvm_cbe_tmp__53 = (float )*llvm_cbe_tmp__52;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__53, *(int*)(&llvm_cbe_tmp__53));
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = fmul float %%55, %%59, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_144_count);
  llvm_cbe_tmp__54 = (float )((float )(llvm_cbe_tmp__49 * llvm_cbe_tmp__53));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__54, *(int*)(&llvm_cbe_tmp__54));
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = fadd float %%51, %%60, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_145_count);
  llvm_cbe_tmp__55 = (float )((float )(llvm_cbe_tmp__45 + llvm_cbe_tmp__54));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__55, *(int*)(&llvm_cbe_tmp__55));
  if (((llvm_cbe_storemerge27&4294967295U) == (3u&4294967295U))) {
    llvm_cbe_tmp__67__PHI_TEMPORARY = (float )llvm_cbe_tmp__55;   /* for PHI node */
    goto llvm_cbe__2e_thread15;
  } else {
    llvm_cbe_tmp__56__PHI_TEMPORARY = (float )llvm_cbe_tmp__55;   /* for PHI node */
    goto llvm_cbe__2e_thread14;
  }

llvm_cbe__2e_thread15:
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = phi float [ %%73, %%.thread14 ], [ %%61, %%.thread13  for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_179_count);
  llvm_cbe_tmp__67 = (float )llvm_cbe_tmp__67__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__67);
printf("\n = %f",llvm_cbe_tmp__66);
printf("\n = %f",llvm_cbe_tmp__55);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%76 = or i32 %%7, 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_180_count);
  llvm_cbe_tmp__68 = (unsigned int )llvm_cbe_tmp__7 | 4u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__68);
if (AESL_DEBUG_TRACE)
printf("\n  %%77 = sext i32 %%76 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_181_count);
  llvm_cbe_tmp__69 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__68);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__69);
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = getelementptr inbounds float* %%T, i64 %%77, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_182_count);
  llvm_cbe_tmp__70 = (float *)(&llvm_cbe_T[(((signed long long )llvm_cbe_tmp__69))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__69));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%79 = load float* %%78, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_183_count);
  llvm_cbe_tmp__71 = (float )*llvm_cbe_tmp__70;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__71, *(int*)(&llvm_cbe_tmp__71));
if (AESL_DEBUG_TRACE)
printf("\n  %%80 = or i32 %%6, 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_184_count);
  llvm_cbe_tmp__72 = (unsigned int )llvm_cbe_tmp__6 | 4u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__72);
if (AESL_DEBUG_TRACE)
printf("\n  %%81 = sext i32 %%80 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_185_count);
  llvm_cbe_tmp__73 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__72);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__73);
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = getelementptr inbounds float* %%V, i64 %%81, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_186_count);
  llvm_cbe_tmp__74 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__73))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__73));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = load float* %%82, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_187_count);
  llvm_cbe_tmp__75 = (float )*llvm_cbe_tmp__74;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__75, *(int*)(&llvm_cbe_tmp__75));
if (AESL_DEBUG_TRACE)
printf("\n  %%84 = fmul float %%79, %%83, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_188_count);
  llvm_cbe_tmp__76 = (float )((float )(llvm_cbe_tmp__71 * llvm_cbe_tmp__75));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__76, *(int*)(&llvm_cbe_tmp__76));
if (AESL_DEBUG_TRACE)
printf("\n  %%85 = fadd float %%75, %%84, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_189_count);
  llvm_cbe_tmp__77 = (float )((float )(llvm_cbe_tmp__67 + llvm_cbe_tmp__76));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__77, *(int*)(&llvm_cbe_tmp__77));
  if (((llvm_cbe_storemerge27&4294967295U) == (5u&4294967295U))) {
    llvm_cbe_tmp__89__PHI_TEMPORARY = (float )llvm_cbe_tmp__77;   /* for PHI node */
    goto llvm_cbe__2e_thread17;
  } else {
    llvm_cbe_tmp__78__PHI_TEMPORARY = (float )llvm_cbe_tmp__77;   /* for PHI node */
    goto llvm_cbe__2e_thread16;
  }

llvm_cbe__2e_thread17:
if (AESL_DEBUG_TRACE)
printf("\n  %%99 = phi float [ %%97, %%.thread16 ], [ %%85, %%.thread15  for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_223_count);
  llvm_cbe_tmp__89 = (float )llvm_cbe_tmp__89__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__89);
printf("\n = %f",llvm_cbe_tmp__88);
printf("\n = %f",llvm_cbe_tmp__77);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%100 = or i32 %%7, 6, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_224_count);
  llvm_cbe_tmp__90 = (unsigned int )llvm_cbe_tmp__7 | 6u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__90);
if (AESL_DEBUG_TRACE)
printf("\n  %%101 = sext i32 %%100 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_225_count);
  llvm_cbe_tmp__91 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__90);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__91);
if (AESL_DEBUG_TRACE)
printf("\n  %%102 = getelementptr inbounds float* %%T, i64 %%101, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_226_count);
  llvm_cbe_tmp__92 = (float *)(&llvm_cbe_T[(((signed long long )llvm_cbe_tmp__91))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__91));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%103 = load float* %%102, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_227_count);
  llvm_cbe_tmp__93 = (float )*llvm_cbe_tmp__92;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__93, *(int*)(&llvm_cbe_tmp__93));
if (AESL_DEBUG_TRACE)
printf("\n  %%104 = or i32 %%6, 6, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_228_count);
  llvm_cbe_tmp__94 = (unsigned int )llvm_cbe_tmp__6 | 6u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__94);
if (AESL_DEBUG_TRACE)
printf("\n  %%105 = sext i32 %%104 to i64, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_229_count);
  llvm_cbe_tmp__95 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__94);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__95);
if (AESL_DEBUG_TRACE)
printf("\n  %%106 = getelementptr inbounds float* %%V, i64 %%105, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_230_count);
  llvm_cbe_tmp__96 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__95))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__95));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%107 = load float* %%106, align 4, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_231_count);
  llvm_cbe_tmp__97 = (float )*llvm_cbe_tmp__96;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__97, *(int*)(&llvm_cbe_tmp__97));
if (AESL_DEBUG_TRACE)
printf("\n  %%108 = fmul float %%103, %%107, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_232_count);
  llvm_cbe_tmp__98 = (float )((float )(llvm_cbe_tmp__93 * llvm_cbe_tmp__97));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__98, *(int*)(&llvm_cbe_tmp__98));
if (AESL_DEBUG_TRACE)
printf("\n  %%109 = fadd float %%99, %%108, !dbg !8 for 0x%I64xth hint within @data_HNN_SPP_2  --> \n", ++aesl_llvm_cbe_233_count);
  llvm_cbe_tmp__99 = (float )((float )(llvm_cbe_tmp__89 + llvm_cbe_tmp__98));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__99, *(int*)(&llvm_cbe_tmp__99));
  if (((llvm_cbe_storemerge27&4294967295U) == (7u&4294967295U))) {
    llvm_cbe_tmp__16__PHI_TEMPORARY = (float )llvm_cbe_tmp__99;   /* for PHI node */
    goto llvm_cbe__2e_thread19;
  } else {
    llvm_cbe_tmp__100__PHI_TEMPORARY = (float )llvm_cbe_tmp__99;   /* for PHI node */
    goto llvm_cbe__2e_thread18;
  }

  } while (1); /* end of syntactic loop '.preheader' */
  } while (1); /* end of syntactic loop '.preheader5' */
  } while (1); /* end of syntactic loop '.preheader8' */
llvm_cbe_tmp__113:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @data_HNN_SPP_2}\n");
  return;
}


void rhoxi(signed int *llvm_cbe_rho, float *llvm_cbe_C_xi) {
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge3_count = 0;
  unsigned int llvm_cbe_storemerge3;
  unsigned int llvm_cbe_storemerge3__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  unsigned int llvm_cbe_tmp__115;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
  unsigned long long llvm_cbe_tmp__116;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  float *llvm_cbe_tmp__117;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  float llvm_cbe_tmp__118;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;
  signed int *llvm_cbe_tmp__119;
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;
  static  unsigned long long aesl_llvm_cbe_305_count = 0;
  signed int *llvm_cbe_tmp__120;
  static  unsigned long long aesl_llvm_cbe_306_count = 0;
  static  unsigned long long aesl_llvm_cbe_307_count = 0;
  static  unsigned long long aesl_llvm_cbe_308_count = 0;
  static  unsigned long long aesl_llvm_cbe_309_count = 0;
  static  unsigned long long aesl_llvm_cbe_310_count = 0;
  static  unsigned long long aesl_llvm_cbe_311_count = 0;
  static  unsigned long long aesl_llvm_cbe_312_count = 0;
  static  unsigned long long aesl_llvm_cbe_313_count = 0;
  static  unsigned long long aesl_llvm_cbe_314_count = 0;
  unsigned int llvm_cbe_tmp__121;
  static  unsigned long long aesl_llvm_cbe_315_count = 0;
  unsigned long long llvm_cbe_tmp__122;
  static  unsigned long long aesl_llvm_cbe_316_count = 0;
  float *llvm_cbe_tmp__123;
  static  unsigned long long aesl_llvm_cbe_317_count = 0;
  float llvm_cbe_tmp__124;
  static  unsigned long long aesl_llvm_cbe_318_count = 0;
  static  unsigned long long aesl_llvm_cbe_319_count = 0;
  static  unsigned long long aesl_llvm_cbe_320_count = 0;
  static  unsigned long long aesl_llvm_cbe_321_count = 0;
  signed int *llvm_cbe_tmp__125;
  static  unsigned long long aesl_llvm_cbe_322_count = 0;
  static  unsigned long long aesl_llvm_cbe_323_count = 0;
  static  unsigned long long aesl_llvm_cbe_324_count = 0;
  signed int *llvm_cbe_tmp__126;
  static  unsigned long long aesl_llvm_cbe_325_count = 0;
  static  unsigned long long aesl_llvm_cbe_326_count = 0;
  static  unsigned long long aesl_llvm_cbe_327_count = 0;
  static  unsigned long long aesl_llvm_cbe_328_count = 0;
  static  unsigned long long aesl_llvm_cbe_329_count = 0;
  static  unsigned long long aesl_llvm_cbe_330_count = 0;
  static  unsigned long long aesl_llvm_cbe_331_count = 0;
  static  unsigned long long aesl_llvm_cbe_332_count = 0;
  static  unsigned long long aesl_llvm_cbe_333_count = 0;
  unsigned int llvm_cbe_tmp__127;
  static  unsigned long long aesl_llvm_cbe_334_count = 0;
  unsigned long long llvm_cbe_tmp__128;
  static  unsigned long long aesl_llvm_cbe_335_count = 0;
  float *llvm_cbe_tmp__129;
  static  unsigned long long aesl_llvm_cbe_336_count = 0;
  float llvm_cbe_tmp__130;
  static  unsigned long long aesl_llvm_cbe_337_count = 0;
  static  unsigned long long aesl_llvm_cbe_338_count = 0;
  static  unsigned long long aesl_llvm_cbe_339_count = 0;
  signed int *llvm_cbe_tmp__131;
  static  unsigned long long aesl_llvm_cbe_340_count = 0;
  static  unsigned long long aesl_llvm_cbe_341_count = 0;
  static  unsigned long long aesl_llvm_cbe_342_count = 0;
  signed int *llvm_cbe_tmp__132;
  static  unsigned long long aesl_llvm_cbe_343_count = 0;
  static  unsigned long long aesl_llvm_cbe_344_count = 0;
  static  unsigned long long aesl_llvm_cbe_345_count = 0;
  static  unsigned long long aesl_llvm_cbe_346_count = 0;
  static  unsigned long long aesl_llvm_cbe_347_count = 0;
  static  unsigned long long aesl_llvm_cbe_348_count = 0;
  static  unsigned long long aesl_llvm_cbe_349_count = 0;
  static  unsigned long long aesl_llvm_cbe_350_count = 0;
  static  unsigned long long aesl_llvm_cbe_351_count = 0;
  unsigned int llvm_cbe_tmp__133;
  static  unsigned long long aesl_llvm_cbe_352_count = 0;
  unsigned long long llvm_cbe_tmp__134;
  static  unsigned long long aesl_llvm_cbe_353_count = 0;
  float *llvm_cbe_tmp__135;
  static  unsigned long long aesl_llvm_cbe_354_count = 0;
  float llvm_cbe_tmp__136;
  static  unsigned long long aesl_llvm_cbe_355_count = 0;
  static  unsigned long long aesl_llvm_cbe_356_count = 0;
  static  unsigned long long aesl_llvm_cbe_357_count = 0;
  signed int *llvm_cbe_tmp__137;
  static  unsigned long long aesl_llvm_cbe_358_count = 0;
  static  unsigned long long aesl_llvm_cbe_359_count = 0;
  static  unsigned long long aesl_llvm_cbe_360_count = 0;
  signed int *llvm_cbe_tmp__138;
  static  unsigned long long aesl_llvm_cbe_361_count = 0;
  static  unsigned long long aesl_llvm_cbe_362_count = 0;
  static  unsigned long long aesl_llvm_cbe_363_count = 0;
  static  unsigned long long aesl_llvm_cbe_364_count = 0;
  static  unsigned long long aesl_llvm_cbe_365_count = 0;
  static  unsigned long long aesl_llvm_cbe_366_count = 0;
  static  unsigned long long aesl_llvm_cbe_367_count = 0;
  static  unsigned long long aesl_llvm_cbe_368_count = 0;
  static  unsigned long long aesl_llvm_cbe_369_count = 0;
  unsigned int llvm_cbe_tmp__139;
  static  unsigned long long aesl_llvm_cbe_370_count = 0;
  unsigned long long llvm_cbe_tmp__140;
  static  unsigned long long aesl_llvm_cbe_371_count = 0;
  float *llvm_cbe_tmp__141;
  static  unsigned long long aesl_llvm_cbe_372_count = 0;
  float llvm_cbe_tmp__142;
  static  unsigned long long aesl_llvm_cbe_373_count = 0;
  static  unsigned long long aesl_llvm_cbe_374_count = 0;
  static  unsigned long long aesl_llvm_cbe_375_count = 0;
  signed int *llvm_cbe_tmp__143;
  static  unsigned long long aesl_llvm_cbe_376_count = 0;
  static  unsigned long long aesl_llvm_cbe_377_count = 0;
  static  unsigned long long aesl_llvm_cbe_378_count = 0;
  signed int *llvm_cbe_tmp__144;
  static  unsigned long long aesl_llvm_cbe_379_count = 0;
  static  unsigned long long aesl_llvm_cbe_380_count = 0;
  static  unsigned long long aesl_llvm_cbe_381_count = 0;
  static  unsigned long long aesl_llvm_cbe_382_count = 0;
  static  unsigned long long aesl_llvm_cbe_383_count = 0;
  static  unsigned long long aesl_llvm_cbe_384_count = 0;
  static  unsigned long long aesl_llvm_cbe_385_count = 0;
  static  unsigned long long aesl_llvm_cbe_386_count = 0;
  static  unsigned long long aesl_llvm_cbe_387_count = 0;
  unsigned int llvm_cbe_tmp__145;
  static  unsigned long long aesl_llvm_cbe_388_count = 0;
  unsigned long long llvm_cbe_tmp__146;
  static  unsigned long long aesl_llvm_cbe_389_count = 0;
  float *llvm_cbe_tmp__147;
  static  unsigned long long aesl_llvm_cbe_390_count = 0;
  float llvm_cbe_tmp__148;
  static  unsigned long long aesl_llvm_cbe_391_count = 0;
  static  unsigned long long aesl_llvm_cbe_392_count = 0;
  static  unsigned long long aesl_llvm_cbe_393_count = 0;
  signed int *llvm_cbe_tmp__149;
  static  unsigned long long aesl_llvm_cbe_394_count = 0;
  static  unsigned long long aesl_llvm_cbe_395_count = 0;
  static  unsigned long long aesl_llvm_cbe_396_count = 0;
  signed int *llvm_cbe_tmp__150;
  static  unsigned long long aesl_llvm_cbe_397_count = 0;
  static  unsigned long long aesl_llvm_cbe_398_count = 0;
  static  unsigned long long aesl_llvm_cbe_399_count = 0;
  static  unsigned long long aesl_llvm_cbe_400_count = 0;
  static  unsigned long long aesl_llvm_cbe_401_count = 0;
  static  unsigned long long aesl_llvm_cbe_402_count = 0;
  static  unsigned long long aesl_llvm_cbe_403_count = 0;
  static  unsigned long long aesl_llvm_cbe_404_count = 0;
  static  unsigned long long aesl_llvm_cbe_405_count = 0;
  unsigned int llvm_cbe_tmp__151;
  static  unsigned long long aesl_llvm_cbe_406_count = 0;
  unsigned long long llvm_cbe_tmp__152;
  static  unsigned long long aesl_llvm_cbe_407_count = 0;
  float *llvm_cbe_tmp__153;
  static  unsigned long long aesl_llvm_cbe_408_count = 0;
  float llvm_cbe_tmp__154;
  static  unsigned long long aesl_llvm_cbe_409_count = 0;
  static  unsigned long long aesl_llvm_cbe_410_count = 0;
  static  unsigned long long aesl_llvm_cbe_411_count = 0;
  signed int *llvm_cbe_tmp__155;
  static  unsigned long long aesl_llvm_cbe_412_count = 0;
  static  unsigned long long aesl_llvm_cbe_413_count = 0;
  static  unsigned long long aesl_llvm_cbe_414_count = 0;
  signed int *llvm_cbe_tmp__156;
  static  unsigned long long aesl_llvm_cbe_415_count = 0;
  static  unsigned long long aesl_llvm_cbe_416_count = 0;
  static  unsigned long long aesl_llvm_cbe_417_count = 0;
  static  unsigned long long aesl_llvm_cbe_418_count = 0;
  static  unsigned long long aesl_llvm_cbe_419_count = 0;
  static  unsigned long long aesl_llvm_cbe_420_count = 0;
  static  unsigned long long aesl_llvm_cbe_421_count = 0;
  static  unsigned long long aesl_llvm_cbe_422_count = 0;
  static  unsigned long long aesl_llvm_cbe_423_count = 0;
  unsigned int llvm_cbe_tmp__157;
  static  unsigned long long aesl_llvm_cbe_424_count = 0;
  unsigned long long llvm_cbe_tmp__158;
  static  unsigned long long aesl_llvm_cbe_425_count = 0;
  float *llvm_cbe_tmp__159;
  static  unsigned long long aesl_llvm_cbe_426_count = 0;
  float llvm_cbe_tmp__160;
  static  unsigned long long aesl_llvm_cbe_427_count = 0;
  static  unsigned long long aesl_llvm_cbe_428_count = 0;
  static  unsigned long long aesl_llvm_cbe_429_count = 0;
  signed int *llvm_cbe_tmp__161;
  static  unsigned long long aesl_llvm_cbe_430_count = 0;
  static  unsigned long long aesl_llvm_cbe_431_count = 0;
  static  unsigned long long aesl_llvm_cbe_432_count = 0;
  signed int *llvm_cbe_tmp__162;
  static  unsigned long long aesl_llvm_cbe_433_count = 0;
  static  unsigned long long aesl_llvm_cbe_434_count = 0;
  static  unsigned long long aesl_llvm_cbe_435_count = 0;
  static  unsigned long long aesl_llvm_cbe_436_count = 0;
  static  unsigned long long aesl_llvm_cbe_437_count = 0;
  static  unsigned long long aesl_llvm_cbe_438_count = 0;
  static  unsigned long long aesl_llvm_cbe_439_count = 0;
  static  unsigned long long aesl_llvm_cbe_440_count = 0;
  static  unsigned long long aesl_llvm_cbe_441_count = 0;
  unsigned int llvm_cbe_tmp__163;
  static  unsigned long long aesl_llvm_cbe_442_count = 0;
  static  unsigned long long aesl_llvm_cbe_443_count = 0;
  static  unsigned long long aesl_llvm_cbe_444_count = 0;
  static  unsigned long long aesl_llvm_cbe_445_count = 0;
  static  unsigned long long aesl_llvm_cbe_446_count = 0;
  static  unsigned long long aesl_llvm_cbe_447_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_448_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @rhoxi\n");
  llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge3 = phi i32 [ 0, %%0 ], [ %%82, %%81  for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_storemerge3_count);
  llvm_cbe_storemerge3 = (unsigned int )llvm_cbe_storemerge3__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__163);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = shl i32 %%storemerge3, 3, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_296_count);
  llvm_cbe_tmp__115 = (unsigned int )llvm_cbe_storemerge3 << 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__115);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = sext i32 %%1 to i64, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_297_count);
  llvm_cbe_tmp__116 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__115);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__116);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds float* %%C_xi, i64 %%2, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_298_count);
  llvm_cbe_tmp__117 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__116))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__116));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load float* %%3, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_299_count);
  llvm_cbe_tmp__118 = (float )*llvm_cbe_tmp__117;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__118, *(int*)(&llvm_cbe_tmp__118));
  if ((llvm_fcmp_oeq(llvm_cbe_tmp__118, 0x0p0))) {
    goto llvm_cbe_tmp__164;
  } else {
    goto llvm_cbe_tmp__165;
  }

llvm_cbe_tmp__166:
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = add nsw i32 %%storemerge3, 1, !dbg !10 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_441_count);
  llvm_cbe_tmp__163 = (unsigned int )((unsigned int )(llvm_cbe_storemerge3&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__163&4294967295ull)));
  if (((llvm_cbe_tmp__163&4294967295U) == (8u&4294967295U))) {
    goto llvm_cbe_tmp__167;
  } else {
    llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__163;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

llvm_cbe_tmp__168:
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = getelementptr inbounds i32* %%rho, i64 %%73, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_429_count);
  llvm_cbe_tmp__161 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__158))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__158));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%78, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_430_count);
  *llvm_cbe_tmp__161 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
  goto llvm_cbe_tmp__166;

llvm_cbe_tmp__169:
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = or i32 %%1, 7, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_423_count);
  llvm_cbe_tmp__157 = (unsigned int )llvm_cbe_tmp__115 | 7u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__157);
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = sext i32 %%72 to i64, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_424_count);
  llvm_cbe_tmp__158 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__157);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__158);
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = getelementptr inbounds float* %%C_xi, i64 %%73, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_425_count);
  llvm_cbe_tmp__159 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__158))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__158));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = load float* %%74, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_426_count);
  llvm_cbe_tmp__160 = (float )*llvm_cbe_tmp__159;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__160, *(int*)(&llvm_cbe_tmp__160));
  if ((llvm_fcmp_oeq(llvm_cbe_tmp__160, 0x0p0))) {
    goto llvm_cbe_tmp__170;
  } else {
    goto llvm_cbe_tmp__168;
  }

llvm_cbe_tmp__171:
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = getelementptr inbounds i32* %%rho, i64 %%63, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_411_count);
  llvm_cbe_tmp__155 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__152))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__152));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%68, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_412_count);
  *llvm_cbe_tmp__155 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
  goto llvm_cbe_tmp__169;

llvm_cbe_tmp__172:
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = or i32 %%1, 6, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_405_count);
  llvm_cbe_tmp__151 = (unsigned int )llvm_cbe_tmp__115 | 6u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__151);
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = sext i32 %%62 to i64, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_406_count);
  llvm_cbe_tmp__152 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__151);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__152);
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = getelementptr inbounds float* %%C_xi, i64 %%63, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_407_count);
  llvm_cbe_tmp__153 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__152))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__152));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = load float* %%64, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_408_count);
  llvm_cbe_tmp__154 = (float )*llvm_cbe_tmp__153;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__154, *(int*)(&llvm_cbe_tmp__154));
  if ((llvm_fcmp_oeq(llvm_cbe_tmp__154, 0x0p0))) {
    goto llvm_cbe_tmp__173;
  } else {
    goto llvm_cbe_tmp__171;
  }

llvm_cbe_tmp__174:
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = getelementptr inbounds i32* %%rho, i64 %%53, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_393_count);
  llvm_cbe_tmp__149 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__146))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__146));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%58, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_394_count);
  *llvm_cbe_tmp__149 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
  goto llvm_cbe_tmp__172;

llvm_cbe_tmp__175:
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = or i32 %%1, 5, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_387_count);
  llvm_cbe_tmp__145 = (unsigned int )llvm_cbe_tmp__115 | 5u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__145);
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = sext i32 %%52 to i64, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_388_count);
  llvm_cbe_tmp__146 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__145);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__146);
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = getelementptr inbounds float* %%C_xi, i64 %%53, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_389_count);
  llvm_cbe_tmp__147 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__146))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__146));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = load float* %%54, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_390_count);
  llvm_cbe_tmp__148 = (float )*llvm_cbe_tmp__147;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__148, *(int*)(&llvm_cbe_tmp__148));
  if ((llvm_fcmp_oeq(llvm_cbe_tmp__148, 0x0p0))) {
    goto llvm_cbe_tmp__176;
  } else {
    goto llvm_cbe_tmp__174;
  }

llvm_cbe_tmp__177:
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = getelementptr inbounds i32* %%rho, i64 %%43, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_375_count);
  llvm_cbe_tmp__143 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__140))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__140));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%48, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_376_count);
  *llvm_cbe_tmp__143 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
  goto llvm_cbe_tmp__175;

llvm_cbe_tmp__178:
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = or i32 %%1, 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_369_count);
  llvm_cbe_tmp__139 = (unsigned int )llvm_cbe_tmp__115 | 4u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__139);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = sext i32 %%42 to i64, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_370_count);
  llvm_cbe_tmp__140 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__139);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__140);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = getelementptr inbounds float* %%C_xi, i64 %%43, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_371_count);
  llvm_cbe_tmp__141 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__140))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__140));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = load float* %%44, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_372_count);
  llvm_cbe_tmp__142 = (float )*llvm_cbe_tmp__141;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__142, *(int*)(&llvm_cbe_tmp__142));
  if ((llvm_fcmp_oeq(llvm_cbe_tmp__142, 0x0p0))) {
    goto llvm_cbe_tmp__179;
  } else {
    goto llvm_cbe_tmp__177;
  }

llvm_cbe_tmp__180:
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = getelementptr inbounds i32* %%rho, i64 %%33, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_357_count);
  llvm_cbe_tmp__137 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__134))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__134));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%38, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_358_count);
  *llvm_cbe_tmp__137 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
  goto llvm_cbe_tmp__178;

llvm_cbe_tmp__181:
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = or i32 %%1, 3, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_351_count);
  llvm_cbe_tmp__133 = (unsigned int )llvm_cbe_tmp__115 | 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__133);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = sext i32 %%32 to i64, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_352_count);
  llvm_cbe_tmp__134 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__133);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__134);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = getelementptr inbounds float* %%C_xi, i64 %%33, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_353_count);
  llvm_cbe_tmp__135 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__134))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__134));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = load float* %%34, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_354_count);
  llvm_cbe_tmp__136 = (float )*llvm_cbe_tmp__135;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__136, *(int*)(&llvm_cbe_tmp__136));
  if ((llvm_fcmp_oeq(llvm_cbe_tmp__136, 0x0p0))) {
    goto llvm_cbe_tmp__182;
  } else {
    goto llvm_cbe_tmp__180;
  }

llvm_cbe_tmp__183:
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = getelementptr inbounds i32* %%rho, i64 %%23, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_339_count);
  llvm_cbe_tmp__131 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__128))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__128));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%28, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_340_count);
  *llvm_cbe_tmp__131 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
  goto llvm_cbe_tmp__181;

llvm_cbe_tmp__184:
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = or i32 %%1, 2, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_333_count);
  llvm_cbe_tmp__127 = (unsigned int )llvm_cbe_tmp__115 | 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__127);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = sext i32 %%22 to i64, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_334_count);
  llvm_cbe_tmp__128 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__127);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__128);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds float* %%C_xi, i64 %%23, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_335_count);
  llvm_cbe_tmp__129 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__128))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__128));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = load float* %%24, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_336_count);
  llvm_cbe_tmp__130 = (float )*llvm_cbe_tmp__129;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__130, *(int*)(&llvm_cbe_tmp__130));
  if ((llvm_fcmp_oeq(llvm_cbe_tmp__130, 0x0p0))) {
    goto llvm_cbe_tmp__185;
  } else {
    goto llvm_cbe_tmp__183;
  }

llvm_cbe_tmp__186:
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = getelementptr inbounds i32* %%rho, i64 %%12, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_321_count);
  llvm_cbe_tmp__125 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__122))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__122));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%18, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_322_count);
  *llvm_cbe_tmp__125 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
  goto llvm_cbe_tmp__184;

llvm_cbe_tmp__187:
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = or i32 %%1, 1, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_314_count);
  llvm_cbe_tmp__121 = (unsigned int )llvm_cbe_tmp__115 | 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__121);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = sext i32 %%11 to i64, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_315_count);
  llvm_cbe_tmp__122 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__121);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__122);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds float* %%C_xi, i64 %%12, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_316_count);
  llvm_cbe_tmp__123 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__122))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__122));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load float* %%13, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_317_count);
  llvm_cbe_tmp__124 = (float )*llvm_cbe_tmp__123;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__124, *(int*)(&llvm_cbe_tmp__124));
  if ((llvm_fcmp_oeq(llvm_cbe_tmp__124, 0x0p0))) {
    goto llvm_cbe_tmp__188;
  } else {
    goto llvm_cbe_tmp__186;
  }

llvm_cbe_tmp__164:
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds i32* %%rho, i64 %%2, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_302_count);
  llvm_cbe_tmp__119 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__116))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__116));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%7, align 4, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_303_count);
  *llvm_cbe_tmp__119 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  goto llvm_cbe_tmp__187;

llvm_cbe_tmp__165:
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds i32* %%rho, i64 %%2, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_305_count);
  llvm_cbe_tmp__120 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__116))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__116));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 0, i32* %%9, align 4, !dbg !9 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_306_count);
  *llvm_cbe_tmp__120 = 0u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0u);
  goto llvm_cbe_tmp__187;

llvm_cbe_tmp__188:
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds i32* %%rho, i64 %%12, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_324_count);
  llvm_cbe_tmp__126 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__122))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__122));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%20, align 4, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_325_count);
  *llvm_cbe_tmp__126 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  goto llvm_cbe_tmp__184;

llvm_cbe_tmp__185:
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = getelementptr inbounds i32* %%rho, i64 %%23, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_342_count);
  llvm_cbe_tmp__132 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__128))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__128));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%30, align 4, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_343_count);
  *llvm_cbe_tmp__132 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  goto llvm_cbe_tmp__181;

llvm_cbe_tmp__182:
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = getelementptr inbounds i32* %%rho, i64 %%33, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_360_count);
  llvm_cbe_tmp__138 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__134))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__134));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%40, align 4, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_361_count);
  *llvm_cbe_tmp__138 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  goto llvm_cbe_tmp__178;

llvm_cbe_tmp__179:
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = getelementptr inbounds i32* %%rho, i64 %%43, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_378_count);
  llvm_cbe_tmp__144 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__140))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__140));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%50, align 4, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_379_count);
  *llvm_cbe_tmp__144 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  goto llvm_cbe_tmp__175;

llvm_cbe_tmp__176:
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = getelementptr inbounds i32* %%rho, i64 %%53, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_396_count);
  llvm_cbe_tmp__150 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__146))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__146));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%60, align 4, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_397_count);
  *llvm_cbe_tmp__150 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  goto llvm_cbe_tmp__172;

llvm_cbe_tmp__173:
if (AESL_DEBUG_TRACE)
printf("\n  %%70 = getelementptr inbounds i32* %%rho, i64 %%63, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_414_count);
  llvm_cbe_tmp__156 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__152))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__152));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%70, align 4, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_415_count);
  *llvm_cbe_tmp__156 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  goto llvm_cbe_tmp__169;

llvm_cbe_tmp__170:
if (AESL_DEBUG_TRACE)
printf("\n  %%80 = getelementptr inbounds i32* %%rho, i64 %%73, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_432_count);
  llvm_cbe_tmp__162 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__158))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__158));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 1, i32* %%80, align 4, !dbg !8 for 0x%I64xth hint within @rhoxi  --> \n", ++aesl_llvm_cbe_433_count);
  *llvm_cbe_tmp__162 = 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1u);
  goto llvm_cbe_tmp__166;

  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe_tmp__167:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @rhoxi}\n");
  return;
}


signed int deltak(signed int llvm_cbe_a, signed int llvm_cbe_b) {
  static  unsigned long long aesl_llvm_cbe_449_count = 0;
  static  unsigned long long aesl_llvm_cbe_450_count = 0;
  static  unsigned long long aesl_llvm_cbe_451_count = 0;
  static  unsigned long long aesl_llvm_cbe_452_count = 0;
  static  unsigned long long aesl_llvm_cbe_453_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge_count = 0;
  unsigned int llvm_cbe_storemerge;
  static  unsigned long long aesl_llvm_cbe_454_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @deltak\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge = zext i1 %%1 to i32, !dbg !8 for 0x%I64xth hint within @deltak  --> \n", ++aesl_llvm_cbe_storemerge_count);
  llvm_cbe_storemerge = (unsigned int )((unsigned int )(bool )((llvm_cbe_a&4294967295U) == (llvm_cbe_b&4294967295U))&1U);
if (AESL_DEBUG_TRACE)
printf("\nstoremerge = 0x%X\n", llvm_cbe_storemerge);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @deltak}\n");
  return llvm_cbe_storemerge;
}


void txiyj(signed int llvm_cbe_u3, signed int llvm_cbe_u4, float *llvm_cbe_T) {
  static  unsigned long long aesl_llvm_cbe_455_count = 0;
  static  unsigned long long aesl_llvm_cbe_456_count = 0;
  static  unsigned long long aesl_llvm_cbe_457_count = 0;
  static  unsigned long long aesl_llvm_cbe_458_count = 0;
  static  unsigned long long aesl_llvm_cbe_459_count = 0;
  static  unsigned long long aesl_llvm_cbe_460_count = 0;
  static  unsigned long long aesl_llvm_cbe_461_count = 0;
  static  unsigned long long aesl_llvm_cbe_462_count = 0;
  static  unsigned long long aesl_llvm_cbe_463_count = 0;
  static  unsigned long long aesl_llvm_cbe_464_count = 0;
  static  unsigned long long aesl_llvm_cbe_465_count = 0;
  static  unsigned long long aesl_llvm_cbe_466_count = 0;
  static  unsigned long long aesl_llvm_cbe_467_count = 0;
  static  unsigned long long aesl_llvm_cbe_468_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge10_count = 0;
  unsigned int llvm_cbe_storemerge10;
  unsigned int llvm_cbe_storemerge10__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_469_count = 0;
  static  unsigned long long aesl_llvm_cbe_470_count = 0;
  static  unsigned long long aesl_llvm_cbe_471_count = 0;
  static  unsigned long long aesl_llvm_cbe_472_count = 0;
  static  unsigned long long aesl_llvm_cbe_473_count = 0;
  static  unsigned long long aesl_llvm_cbe_474_count = 0;
  static  unsigned long long aesl_llvm_cbe_475_count = 0;
  unsigned int llvm_cbe_tmp__189;
  static  unsigned long long aesl_llvm_cbe_476_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge19_count = 0;
  unsigned int llvm_cbe_storemerge19;
  unsigned int llvm_cbe_storemerge19__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_477_count = 0;
  static  unsigned long long aesl_llvm_cbe_478_count = 0;
  static  unsigned long long aesl_llvm_cbe_479_count = 0;
  static  unsigned long long aesl_llvm_cbe_480_count = 0;
  static  unsigned long long aesl_llvm_cbe_481_count = 0;
  static  unsigned long long aesl_llvm_cbe_482_count = 0;
  static  unsigned long long aesl_llvm_cbe_483_count = 0;
  unsigned int llvm_cbe_tmp__190;
  static  unsigned long long aesl_llvm_cbe_484_count = 0;
  unsigned int llvm_cbe_tmp__191;
  static  unsigned long long aesl_llvm_cbe_485_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge27_count = 0;
  unsigned int llvm_cbe_storemerge27;
  unsigned int llvm_cbe_storemerge27__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_486_count = 0;
  static  unsigned long long aesl_llvm_cbe_487_count = 0;
  static  unsigned long long aesl_llvm_cbe_488_count = 0;
  static  unsigned long long aesl_llvm_cbe_489_count = 0;
  static  unsigned long long aesl_llvm_cbe_490_count = 0;
  static  unsigned long long aesl_llvm_cbe_491_count = 0;
  static  unsigned long long aesl_llvm_cbe_492_count = 0;
  unsigned int llvm_cbe_tmp__192;
  static  unsigned long long aesl_llvm_cbe_493_count = 0;
  unsigned int llvm_cbe_tmp__193;
  static  unsigned long long aesl_llvm_cbe_494_count = 0;
  unsigned int llvm_cbe_tmp__194;
  static  unsigned long long aesl_llvm_cbe_495_count = 0;
  unsigned int llvm_cbe_tmp__195;
  static  unsigned long long aesl_llvm_cbe_496_count = 0;
  unsigned int llvm_cbe_tmp__196;
  static  unsigned long long aesl_llvm_cbe_497_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge35_count = 0;
  unsigned int llvm_cbe_storemerge35;
  unsigned int llvm_cbe_storemerge35__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_498_count = 0;
  unsigned int llvm_cbe_tmp__197;
  static  unsigned long long aesl_llvm_cbe_499_count = 0;
  unsigned int llvm_cbe_tmp__198;
  static  unsigned long long aesl_llvm_cbe_500_count = 0;
  unsigned int llvm_cbe_tmp__199;
  static  unsigned long long aesl_llvm_cbe_501_count = 0;
  unsigned int llvm_cbe_tmp__200;
  static  unsigned long long aesl_llvm_cbe_502_count = 0;
  unsigned int llvm_cbe_tmp__201;
  static  unsigned long long aesl_llvm_cbe_503_count = 0;
  unsigned int llvm_cbe_tmp__202;
  static  unsigned long long aesl_llvm_cbe_504_count = 0;
  unsigned int llvm_cbe_tmp__203;
  static  unsigned long long aesl_llvm_cbe_505_count = 0;
  unsigned int llvm_cbe_tmp__204;
  static  unsigned long long aesl_llvm_cbe_506_count = 0;
  float llvm_cbe_tmp__205;
  static  unsigned long long aesl_llvm_cbe_507_count = 0;
  unsigned int llvm_cbe_tmp__206;
  static  unsigned long long aesl_llvm_cbe_508_count = 0;
  unsigned long long llvm_cbe_tmp__207;
  static  unsigned long long aesl_llvm_cbe_509_count = 0;
  float *llvm_cbe_tmp__208;
  static  unsigned long long aesl_llvm_cbe_510_count = 0;
  static  unsigned long long aesl_llvm_cbe_511_count = 0;
  unsigned int llvm_cbe_tmp__209;
  static  unsigned long long aesl_llvm_cbe_512_count = 0;
  static  unsigned long long aesl_llvm_cbe_513_count = 0;
  static  unsigned long long aesl_llvm_cbe_514_count = 0;
  static  unsigned long long aesl_llvm_cbe_515_count = 0;
  static  unsigned long long aesl_llvm_cbe_516_count = 0;
  static  unsigned long long aesl_llvm_cbe_517_count = 0;
  static  unsigned long long aesl_llvm_cbe_518_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_519_count = 0;
  static  unsigned long long aesl_llvm_cbe_520_count = 0;
  unsigned int llvm_cbe_tmp__210;
  static  unsigned long long aesl_llvm_cbe_521_count = 0;
  static  unsigned long long aesl_llvm_cbe_522_count = 0;
  static  unsigned long long aesl_llvm_cbe_523_count = 0;
  static  unsigned long long aesl_llvm_cbe_524_count = 0;
  static  unsigned long long aesl_llvm_cbe_525_count = 0;
  static  unsigned long long aesl_llvm_cbe_526_count = 0;
  static  unsigned long long aesl_llvm_cbe_527_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond11_count = 0;
  static  unsigned long long aesl_llvm_cbe_528_count = 0;
  static  unsigned long long aesl_llvm_cbe_529_count = 0;
  unsigned int llvm_cbe_tmp__211;
  static  unsigned long long aesl_llvm_cbe_530_count = 0;
  static  unsigned long long aesl_llvm_cbe_531_count = 0;
  static  unsigned long long aesl_llvm_cbe_532_count = 0;
  static  unsigned long long aesl_llvm_cbe_533_count = 0;
  static  unsigned long long aesl_llvm_cbe_534_count = 0;
  static  unsigned long long aesl_llvm_cbe_535_count = 0;
  static  unsigned long long aesl_llvm_cbe_536_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond12_count = 0;
  static  unsigned long long aesl_llvm_cbe_537_count = 0;
  static  unsigned long long aesl_llvm_cbe_538_count = 0;
  unsigned int llvm_cbe_tmp__212;
  static  unsigned long long aesl_llvm_cbe_539_count = 0;
  static  unsigned long long aesl_llvm_cbe_540_count = 0;
  static  unsigned long long aesl_llvm_cbe_541_count = 0;
  static  unsigned long long aesl_llvm_cbe_542_count = 0;
  static  unsigned long long aesl_llvm_cbe_543_count = 0;
  static  unsigned long long aesl_llvm_cbe_544_count = 0;
  static  unsigned long long aesl_llvm_cbe_545_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond13_count = 0;
  static  unsigned long long aesl_llvm_cbe_546_count = 0;
  static  unsigned long long aesl_llvm_cbe_547_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @txiyj\n");
  llvm_cbe_storemerge10__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader8;

  do {     /* Syntactic loop '.preheader8' to make GCC happy */
llvm_cbe__2e_preheader8:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge10 = phi i32 [ 0, %%0 ], [ %%28, %%27  for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_storemerge10_count);
  llvm_cbe_storemerge10 = (unsigned int )llvm_cbe_storemerge10__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge10 = 0x%X",llvm_cbe_storemerge10);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__212);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = shl i32 %%storemerge10, 9, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_475_count);
  llvm_cbe_tmp__189 = (unsigned int )llvm_cbe_storemerge10 << 9u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__189);
  llvm_cbe_storemerge19__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader6;

llvm_cbe_tmp__213:
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = add nsw i32 %%storemerge10, 1, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_538_count);
  llvm_cbe_tmp__212 = (unsigned int )((unsigned int )(llvm_cbe_storemerge10&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__212&4294967295ull)));
  if (((llvm_cbe_tmp__212&4294967295U) == (8u&4294967295U))) {
    goto llvm_cbe_tmp__214;
  } else {
    llvm_cbe_storemerge10__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__212;   /* for PHI node */
    goto llvm_cbe__2e_preheader8;
  }

  do {     /* Syntactic loop '.preheader6' to make GCC happy */
llvm_cbe__2e_preheader6:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge19 = phi i32 [ 0, %%.preheader8 ], [ %%26, %%25  for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_storemerge19_count);
  llvm_cbe_storemerge19 = (unsigned int )llvm_cbe_storemerge19__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge19 = 0x%X",llvm_cbe_storemerge19);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__211);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = shl i32 %%storemerge19, 6, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_483_count);
  llvm_cbe_tmp__190 = (unsigned int )llvm_cbe_storemerge19 << 6u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__190);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = add i32 %%2, %%1, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_484_count);
  llvm_cbe_tmp__191 = (unsigned int )((unsigned int )(llvm_cbe_tmp__190&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__189&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__191&4294967295ull)));
  llvm_cbe_storemerge27__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

llvm_cbe_tmp__215:
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = add nsw i32 %%storemerge19, 1, !dbg !11 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_529_count);
  llvm_cbe_tmp__211 = (unsigned int )((unsigned int )(llvm_cbe_storemerge19&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__211&4294967295ull)));
  if (((llvm_cbe_tmp__211&4294967295U) == (8u&4294967295U))) {
    goto llvm_cbe_tmp__213;
  } else {
    llvm_cbe_storemerge19__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__211;   /* for PHI node */
    goto llvm_cbe__2e_preheader6;
  }

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge27 = phi i32 [ 0, %%.preheader6 ], [ %%24, %%23  for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_storemerge27_count);
  llvm_cbe_storemerge27 = (unsigned int )llvm_cbe_storemerge27__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge27 = 0x%X",llvm_cbe_storemerge27);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__210);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = tail call i32 @deltak(i32 %%storemerge10, i32 %%storemerge27), !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_492_count);
  llvm_cbe_tmp__192 = (unsigned int ) /*tail*/ deltak(llvm_cbe_storemerge10, llvm_cbe_storemerge27);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge10 = 0x%X",llvm_cbe_storemerge10);
printf("\nArgument storemerge27 = 0x%X",llvm_cbe_storemerge27);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__192);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = mul i32 %%4, %%u4, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_493_count);
  llvm_cbe_tmp__193 = (unsigned int )((unsigned int )(llvm_cbe_tmp__192&4294967295ull)) * ((unsigned int )(llvm_cbe_u4&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__193&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = tail call i32 @deltak(i32 %%storemerge19, i32 %%storemerge27), !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_494_count);
  llvm_cbe_tmp__194 = (unsigned int ) /*tail*/ deltak(llvm_cbe_storemerge19, llvm_cbe_storemerge27);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge19 = 0x%X",llvm_cbe_storemerge19);
printf("\nArgument storemerge27 = 0x%X",llvm_cbe_storemerge27);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__194);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = shl i32 %%storemerge27, 3, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_495_count);
  llvm_cbe_tmp__195 = (unsigned int )llvm_cbe_storemerge27 << 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__195);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = add i32 %%3, %%7, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_496_count);
  llvm_cbe_tmp__196 = (unsigned int )((unsigned int )(llvm_cbe_tmp__191&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__195&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__196&4294967295ull)));
  llvm_cbe_storemerge35__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__216;

llvm_cbe_tmp__217:
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = add nsw i32 %%storemerge27, 1, !dbg !11 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_520_count);
  llvm_cbe_tmp__210 = (unsigned int )((unsigned int )(llvm_cbe_storemerge27&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__210&4294967295ull)));
  if (((llvm_cbe_tmp__210&4294967295U) == (8u&4294967295U))) {
    goto llvm_cbe_tmp__215;
  } else {
    llvm_cbe_storemerge27__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__210;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__216:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge35 = phi i32 [ 0, %%.preheader ], [ %%22, %%9  for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_storemerge35_count);
  llvm_cbe_storemerge35 = (unsigned int )llvm_cbe_storemerge35__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge35 = 0x%X",llvm_cbe_storemerge35);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__209);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = tail call i32 @deltak(i32 %%storemerge19, i32 %%storemerge35), !dbg !8 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_498_count);
  llvm_cbe_tmp__197 = (unsigned int ) /*tail*/ deltak(llvm_cbe_storemerge19, llvm_cbe_storemerge35);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge19 = 0x%X",llvm_cbe_storemerge19);
printf("\nArgument storemerge35 = 0x%X",llvm_cbe_storemerge35);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__197);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = mul i32 %%5, %%10, !dbg !8 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_499_count);
  llvm_cbe_tmp__198 = (unsigned int )((unsigned int )(llvm_cbe_tmp__193&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__197&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__198&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = tail call i32 @deltak(i32 %%storemerge35, i32 %%storemerge10), !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_500_count);
  llvm_cbe_tmp__199 = (unsigned int ) /*tail*/ deltak(llvm_cbe_storemerge35, llvm_cbe_storemerge10);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge35 = 0x%X",llvm_cbe_storemerge35);
printf("\nArgument storemerge10 = 0x%X",llvm_cbe_storemerge10);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__199);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = add i32 %%10, %%4, !dbg !11 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_501_count);
  llvm_cbe_tmp__200 = (unsigned int )((unsigned int )(llvm_cbe_tmp__197&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__192&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__200&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = sub i32 %%13, %%12, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_502_count);
  llvm_cbe_tmp__201 = (unsigned int )((unsigned int )(llvm_cbe_tmp__200&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__199&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__201&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = sub i32 %%14, %%6, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_503_count);
  llvm_cbe_tmp__202 = (unsigned int )((unsigned int )(llvm_cbe_tmp__201&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__194&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__202&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = mul nsw i32 %%15, %%u3, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_504_count);
  llvm_cbe_tmp__203 = (unsigned int )((unsigned int )(llvm_cbe_tmp__202&4294967295ull)) * ((unsigned int )(llvm_cbe_u3&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__203&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = sub nsw i32 %%11, %%16, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_505_count);
  llvm_cbe_tmp__204 = (unsigned int )((unsigned int )(llvm_cbe_tmp__198&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__203&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__204&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = sitofp i32 %%17 to float, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_506_count);
  llvm_cbe_tmp__205 = (float )((float )(signed int )llvm_cbe_tmp__204);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__205, *(int*)(&llvm_cbe_tmp__205));
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = add i32 %%8, %%storemerge35, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_507_count);
  llvm_cbe_tmp__206 = (unsigned int )((unsigned int )(llvm_cbe_tmp__196&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge35&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__206&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = sext i32 %%19 to i64, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_508_count);
  llvm_cbe_tmp__207 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__206);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__207);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = getelementptr inbounds float* %%T, i64 %%20, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_509_count);
  llvm_cbe_tmp__208 = (float *)(&llvm_cbe_T[(((signed long long )llvm_cbe_tmp__207))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__207));
}
if (AESL_DEBUG_TRACE)
printf("\n  store float %%18, float* %%21, align 4, !dbg !10 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_510_count);
  *llvm_cbe_tmp__208 = llvm_cbe_tmp__205;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__205);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = add nsw i32 %%storemerge35, 1, !dbg !11 for 0x%I64xth hint within @txiyj  --> \n", ++aesl_llvm_cbe_511_count);
  llvm_cbe_tmp__209 = (unsigned int )((unsigned int )(llvm_cbe_storemerge35&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__209&4294967295ull)));
  if (((llvm_cbe_tmp__209&4294967295U) == (8u&4294967295U))) {
    goto llvm_cbe_tmp__217;
  } else {
    llvm_cbe_storemerge35__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__209;   /* for PHI node */
    goto llvm_cbe_tmp__216;
  }

  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '.preheader' */
  } while (1); /* end of syntactic loop '.preheader6' */
  } while (1); /* end of syntactic loop '.preheader8' */
llvm_cbe_tmp__214:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @txiyj}\n");
  return;
}


void ixi(signed int llvm_cbe_u1, signed int llvm_cbe_u2, signed int llvm_cbe_u4, signed int llvm_cbe_u5, float *llvm_cbe_C_xi, signed int *llvm_cbe_rho, signed int llvm_cbe_source, signed int llvm_cbe_destin, float *llvm_cbe_I) {
  static  unsigned long long aesl_llvm_cbe_548_count = 0;
  static  unsigned long long aesl_llvm_cbe_549_count = 0;
  static  unsigned long long aesl_llvm_cbe_550_count = 0;
  static  unsigned long long aesl_llvm_cbe_551_count = 0;
  static  unsigned long long aesl_llvm_cbe_552_count = 0;
  static  unsigned long long aesl_llvm_cbe_553_count = 0;
  static  unsigned long long aesl_llvm_cbe_554_count = 0;
  static  unsigned long long aesl_llvm_cbe_555_count = 0;
  static  unsigned long long aesl_llvm_cbe_556_count = 0;
  static  unsigned long long aesl_llvm_cbe_557_count = 0;
  static  unsigned long long aesl_llvm_cbe_558_count = 0;
  static  unsigned long long aesl_llvm_cbe_559_count = 0;
  static  unsigned long long aesl_llvm_cbe_560_count = 0;
  static  unsigned long long aesl_llvm_cbe_561_count = 0;
  static  unsigned long long aesl_llvm_cbe_562_count = 0;
  static  unsigned long long aesl_llvm_cbe_563_count = 0;
  static  unsigned long long aesl_llvm_cbe_564_count = 0;
  static  unsigned long long aesl_llvm_cbe_565_count = 0;
  static  unsigned long long aesl_llvm_cbe_566_count = 0;
  static  unsigned long long aesl_llvm_cbe_567_count = 0;
  static  unsigned long long aesl_llvm_cbe_568_count = 0;
  static  unsigned long long aesl_llvm_cbe_569_count = 0;
  static  unsigned long long aesl_llvm_cbe_570_count = 0;
  static  unsigned long long aesl_llvm_cbe_571_count = 0;
  static  unsigned long long aesl_llvm_cbe_572_count = 0;
  static  unsigned long long aesl_llvm_cbe_573_count = 0;
  static  unsigned long long aesl_llvm_cbe_574_count = 0;
  static  unsigned long long aesl_llvm_cbe_575_count = 0;
  static  unsigned long long aesl_llvm_cbe_576_count = 0;
  static  unsigned long long aesl_llvm_cbe_577_count = 0;
  static  unsigned long long aesl_llvm_cbe_578_count = 0;
  static  unsigned long long aesl_llvm_cbe_579_count = 0;
  static  unsigned long long aesl_llvm_cbe_580_count = 0;
  static  unsigned long long aesl_llvm_cbe_581_count = 0;
  static  unsigned long long aesl_llvm_cbe_582_count = 0;
  unsigned int llvm_cbe_tmp__218;
  static  unsigned long long aesl_llvm_cbe_583_count = 0;
  float llvm_cbe_tmp__219;
  static  unsigned long long aesl_llvm_cbe_584_count = 0;
  unsigned int llvm_cbe_tmp__220;
  static  unsigned long long aesl_llvm_cbe_585_count = 0;
  unsigned int llvm_cbe_tmp__221;
  static  unsigned long long aesl_llvm_cbe_586_count = 0;
  float llvm_cbe_tmp__222;
  static  unsigned long long aesl_llvm_cbe_587_count = 0;
  unsigned int llvm_cbe_tmp__223;
  static  unsigned long long aesl_llvm_cbe_588_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge3_count = 0;
  unsigned int llvm_cbe_storemerge3;
  unsigned int llvm_cbe_storemerge3__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_589_count = 0;
  static  unsigned long long aesl_llvm_cbe_590_count = 0;
  static  unsigned long long aesl_llvm_cbe_591_count = 0;
  static  unsigned long long aesl_llvm_cbe_592_count = 0;
  static  unsigned long long aesl_llvm_cbe_593_count = 0;
  static  unsigned long long aesl_llvm_cbe_594_count = 0;
  static  unsigned long long aesl_llvm_cbe_595_count = 0;
  static  unsigned long long aesl_llvm_cbe_596_count = 0;
  static  unsigned long long aesl_llvm_cbe_597_count = 0;
  static  unsigned long long aesl_llvm_cbe_598_count = 0;
  static  unsigned long long aesl_llvm_cbe_599_count = 0;
  unsigned int llvm_cbe_tmp__224;
  static  unsigned long long aesl_llvm_cbe_600_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge12_count = 0;
  unsigned int llvm_cbe_storemerge12;
  unsigned int llvm_cbe_storemerge12__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_601_count = 0;
  static  unsigned long long aesl_llvm_cbe_602_count = 0;
  static  unsigned long long aesl_llvm_cbe_603_count = 0;
  unsigned int llvm_cbe_tmp__225;
  static  unsigned long long aesl_llvm_cbe_604_count = 0;
  unsigned long long llvm_cbe_tmp__226;
  static  unsigned long long aesl_llvm_cbe_605_count = 0;
  float *llvm_cbe_tmp__227;
  static  unsigned long long aesl_llvm_cbe_606_count = 0;
  float llvm_cbe_tmp__228;
  static  unsigned long long aesl_llvm_cbe_607_count = 0;
  float llvm_cbe_tmp__229;
  static  unsigned long long aesl_llvm_cbe_608_count = 0;
  unsigned int llvm_cbe_tmp__230;
  static  unsigned long long aesl_llvm_cbe_609_count = 0;
  unsigned int llvm_cbe_tmp__231;
  static  unsigned long long aesl_llvm_cbe_610_count = 0;
  unsigned int llvm_cbe_tmp__232;
  static  unsigned long long aesl_llvm_cbe_611_count = 0;
  unsigned int llvm_cbe_tmp__233;
  static  unsigned long long aesl_llvm_cbe_612_count = 0;
  float llvm_cbe_tmp__234;
  static  unsigned long long aesl_llvm_cbe_613_count = 0;
  float llvm_cbe_tmp__235;
  static  unsigned long long aesl_llvm_cbe_614_count = 0;
  signed int *llvm_cbe_tmp__236;
  static  unsigned long long aesl_llvm_cbe_615_count = 0;
  unsigned int llvm_cbe_tmp__237;
  static  unsigned long long aesl_llvm_cbe_616_count = 0;
  unsigned int llvm_cbe_tmp__238;
  static  unsigned long long aesl_llvm_cbe_617_count = 0;
  unsigned int llvm_cbe_tmp__239;
  static  unsigned long long aesl_llvm_cbe_618_count = 0;
  float llvm_cbe_tmp__240;
  static  unsigned long long aesl_llvm_cbe_619_count = 0;
  float llvm_cbe_tmp__241;
  static  unsigned long long aesl_llvm_cbe_620_count = 0;
  float llvm_cbe_tmp__242;
  static  unsigned long long aesl_llvm_cbe_621_count = 0;
  unsigned int llvm_cbe_tmp__243;
  static  unsigned long long aesl_llvm_cbe_622_count = 0;
  float llvm_cbe_tmp__244;
  static  unsigned long long aesl_llvm_cbe_623_count = 0;
  float llvm_cbe_tmp__245;
  static  unsigned long long aesl_llvm_cbe_624_count = 0;
  float *llvm_cbe_tmp__246;
  static  unsigned long long aesl_llvm_cbe_625_count = 0;
  static  unsigned long long aesl_llvm_cbe_626_count = 0;
  static  unsigned long long aesl_llvm_cbe_627_count = 0;
  unsigned int llvm_cbe_tmp__247;
  static  unsigned long long aesl_llvm_cbe_628_count = 0;
  unsigned long long llvm_cbe_tmp__248;
  static  unsigned long long aesl_llvm_cbe_629_count = 0;
  float *llvm_cbe_tmp__249;
  static  unsigned long long aesl_llvm_cbe_630_count = 0;
  static  unsigned long long aesl_llvm_cbe_631_count = 0;
  static  unsigned long long aesl_llvm_cbe_632_count = 0;
  unsigned int llvm_cbe_tmp__250;
  static  unsigned long long aesl_llvm_cbe_633_count = 0;
  static  unsigned long long aesl_llvm_cbe_634_count = 0;
  static  unsigned long long aesl_llvm_cbe_635_count = 0;
  static  unsigned long long aesl_llvm_cbe_636_count = 0;
  static  unsigned long long aesl_llvm_cbe_637_count = 0;
  static  unsigned long long aesl_llvm_cbe_638_count = 0;
  static  unsigned long long aesl_llvm_cbe_639_count = 0;
  static  unsigned long long aesl_llvm_cbe_640_count = 0;
  static  unsigned long long aesl_llvm_cbe_641_count = 0;
  static  unsigned long long aesl_llvm_cbe_642_count = 0;
  static  unsigned long long aesl_llvm_cbe_643_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_644_count = 0;
  static  unsigned long long aesl_llvm_cbe_645_count = 0;
  unsigned int llvm_cbe_tmp__251;
  static  unsigned long long aesl_llvm_cbe_646_count = 0;
  static  unsigned long long aesl_llvm_cbe_647_count = 0;
  static  unsigned long long aesl_llvm_cbe_648_count = 0;
  static  unsigned long long aesl_llvm_cbe_649_count = 0;
  static  unsigned long long aesl_llvm_cbe_650_count = 0;
  static  unsigned long long aesl_llvm_cbe_651_count = 0;
  static  unsigned long long aesl_llvm_cbe_652_count = 0;
  static  unsigned long long aesl_llvm_cbe_653_count = 0;
  static  unsigned long long aesl_llvm_cbe_654_count = 0;
  static  unsigned long long aesl_llvm_cbe_655_count = 0;
  static  unsigned long long aesl_llvm_cbe_656_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond4_count = 0;
  static  unsigned long long aesl_llvm_cbe_657_count = 0;
  static  unsigned long long aesl_llvm_cbe_658_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @ixi\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = sdiv i32 %%u1, -2, !dbg !8 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_582_count);
  llvm_cbe_tmp__218 = (unsigned int )((signed int )(((signed int )llvm_cbe_u1) / ((signed int )4294967294u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__218));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = sitofp i32 %%1 to float, !dbg !8 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_583_count);
  llvm_cbe_tmp__219 = (float )((float )(signed int )llvm_cbe_tmp__218);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__219, *(int*)(&llvm_cbe_tmp__219));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = sdiv i32 %%u2, 2, !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_584_count);
  llvm_cbe_tmp__220 = (unsigned int )((signed int )(((signed int )llvm_cbe_u2) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__220));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = sdiv i32 %%u4, 2, !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_585_count);
  llvm_cbe_tmp__221 = (unsigned int )((signed int )(((signed int )llvm_cbe_u4) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__221));
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sitofp i32 %%4 to float, !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_586_count);
  llvm_cbe_tmp__222 = (float )((float )(signed int )llvm_cbe_tmp__221);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__222, *(int*)(&llvm_cbe_tmp__222));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = sdiv i32 %%u5, 2, !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_587_count);
  llvm_cbe_tmp__223 = (unsigned int )((signed int )(((signed int )llvm_cbe_u5) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__223));
  llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge3 = phi i32 [ 0, %%0 ], [ %%40, %%39  for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_storemerge3_count);
  llvm_cbe_storemerge3 = (unsigned int )llvm_cbe_storemerge3__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__251);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = shl i32 %%storemerge3, 3, !dbg !11 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_599_count);
  llvm_cbe_tmp__224 = (unsigned int )llvm_cbe_storemerge3 << 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__224);
  llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__252;

llvm_cbe_tmp__253:
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = add nsw i32 %%storemerge3, 1, !dbg !12 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_645_count);
  llvm_cbe_tmp__251 = (unsigned int )((unsigned int )(llvm_cbe_storemerge3&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__251&4294967295ull)));
  if (((llvm_cbe_tmp__251&4294967295U) == (8u&4294967295U))) {
    goto llvm_cbe_tmp__254;
  } else {
    llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__251;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__252:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge12 = phi i32 [ 0, %%.preheader ], [ %%38, %%37  for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_storemerge12_count);
  llvm_cbe_storemerge12 = (unsigned int )llvm_cbe_storemerge12__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge12 = 0x%X",llvm_cbe_storemerge12);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__250);
}
  if (((llvm_cbe_storemerge3&4294967295U) == (llvm_cbe_storemerge12&4294967295U))) {
    goto llvm_cbe_tmp__255;
  } else {
    goto llvm_cbe_tmp__256;
  }

llvm_cbe_tmp__257:
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = add nsw i32 %%storemerge12, 1, !dbg !12 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_632_count);
  llvm_cbe_tmp__250 = (unsigned int )((unsigned int )(llvm_cbe_storemerge12&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__250&4294967295ull)));
  if (((llvm_cbe_tmp__250&4294967295U) == (8u&4294967295U))) {
    goto llvm_cbe_tmp__253;
  } else {
    llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__250;   /* for PHI node */
    goto llvm_cbe_tmp__252;
  }

llvm_cbe_tmp__256:
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = add nsw i32 %%storemerge12, %%7, !dbg !8 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_603_count);
  llvm_cbe_tmp__225 = (unsigned int )((unsigned int )(llvm_cbe_storemerge12&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__224&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__225&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = sext i32 %%11 to i64, !dbg !8 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_604_count);
  llvm_cbe_tmp__226 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__225);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__226);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds float* %%C_xi, i64 %%12, !dbg !8 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_605_count);
  llvm_cbe_tmp__227 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__226))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__226));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load float* %%13, align 4, !dbg !8 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_606_count);
  llvm_cbe_tmp__228 = (float )*llvm_cbe_tmp__227;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__228, *(int*)(&llvm_cbe_tmp__228));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = fmul float %%2, %%14, !dbg !8 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_607_count);
  llvm_cbe_tmp__229 = (float )((float )(llvm_cbe_tmp__219 * llvm_cbe_tmp__228));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__229, *(int*)(&llvm_cbe_tmp__229));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = tail call i32 @deltak(i32 %%storemerge3, i32 %%destin), !dbg !11 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_608_count);
  llvm_cbe_tmp__230 = (unsigned int ) /*tail*/ deltak(llvm_cbe_storemerge3, llvm_cbe_destin);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\nArgument destin = 0x%X",llvm_cbe_destin);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__230);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = tail call i32 @deltak(i32 %%storemerge12, i32 %%source), !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_609_count);
  llvm_cbe_tmp__231 = (unsigned int ) /*tail*/ deltak(llvm_cbe_storemerge12, llvm_cbe_source);
if (AESL_DEBUG_TRACE) {
printf("\nArgument storemerge12 = 0x%X",llvm_cbe_storemerge12);
printf("\nArgument source = 0x%X",llvm_cbe_source);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__231);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = mul nsw i32 %%17, %%16, !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_610_count);
  llvm_cbe_tmp__232 = (unsigned int )((unsigned int )(llvm_cbe_tmp__231&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__230&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__232&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = sub nsw i32 1, %%18, !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_611_count);
  llvm_cbe_tmp__233 = (unsigned int )((unsigned int )(1u&4294967295ull)) - ((unsigned int )(llvm_cbe_tmp__232&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__233&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = sitofp i32 %%19 to float, !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_612_count);
  llvm_cbe_tmp__234 = (float )((float )(signed int )llvm_cbe_tmp__233);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__234, *(int*)(&llvm_cbe_tmp__234));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = fmul float %%15, %%20, !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_613_count);
  llvm_cbe_tmp__235 = (float )((float )(llvm_cbe_tmp__229 * llvm_cbe_tmp__234));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__235, *(int*)(&llvm_cbe_tmp__235));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds i32* %%rho, i64 %%12, !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_614_count);
  llvm_cbe_tmp__236 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__226))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__226));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = load i32* %%22, align 4, !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_615_count);
  llvm_cbe_tmp__237 = (unsigned int )*llvm_cbe_tmp__236;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__237);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = mul i32 %%19, %%3, !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_616_count);
  llvm_cbe_tmp__238 = (unsigned int )((unsigned int )(llvm_cbe_tmp__233&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__220&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__238&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = mul i32 %%24, %%23, !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_617_count);
  llvm_cbe_tmp__239 = (unsigned int )((unsigned int )(llvm_cbe_tmp__238&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__237&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__239&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = sitofp i32 %%25 to float, !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_618_count);
  llvm_cbe_tmp__240 = (float )((float )(signed int )llvm_cbe_tmp__239);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__240, *(int*)(&llvm_cbe_tmp__240));
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = fsub float %%21, %%26, !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_619_count);
  llvm_cbe_tmp__241 = (float )((float )(llvm_cbe_tmp__235 - llvm_cbe_tmp__240));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__241, *(int*)(&llvm_cbe_tmp__241));
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = fsub float %%27, %%5, !dbg !9 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_620_count);
  llvm_cbe_tmp__242 = (float )((float )(llvm_cbe_tmp__241 - llvm_cbe_tmp__222));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__242, *(int*)(&llvm_cbe_tmp__242));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = mul i32 %%18, %%6, !dbg !10 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_621_count);
  llvm_cbe_tmp__243 = (unsigned int )((unsigned int )(llvm_cbe_tmp__232&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__223&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__243&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = sitofp i32 %%29 to float, !dbg !10 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_622_count);
  llvm_cbe_tmp__244 = (float )((float )(signed int )llvm_cbe_tmp__243);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__244, *(int*)(&llvm_cbe_tmp__244));
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = fadd float %%28, %%30, !dbg !10 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_623_count);
  llvm_cbe_tmp__245 = (float )((float )(llvm_cbe_tmp__242 + llvm_cbe_tmp__244));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__245, *(int*)(&llvm_cbe_tmp__245));
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = getelementptr inbounds float* %%I, i64 %%12, !dbg !10 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_624_count);
  llvm_cbe_tmp__246 = (float *)(&llvm_cbe_I[(((signed long long )llvm_cbe_tmp__226))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__226));
}
if (AESL_DEBUG_TRACE)
printf("\n  store float %%31, float* %%32, align 4, !dbg !10 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_625_count);
  *llvm_cbe_tmp__246 = llvm_cbe_tmp__245;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__245);
  goto llvm_cbe_tmp__257;

llvm_cbe_tmp__255:
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = add nsw i32 %%storemerge3, %%7, !dbg !11 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_627_count);
  llvm_cbe_tmp__247 = (unsigned int )((unsigned int )(llvm_cbe_storemerge3&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__224&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__247&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = sext i32 %%34 to i64, !dbg !11 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_628_count);
  llvm_cbe_tmp__248 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__247);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__248);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = getelementptr inbounds float* %%I, i64 %%35, !dbg !11 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_629_count);
  llvm_cbe_tmp__249 = (float *)(&llvm_cbe_I[(((signed long long )llvm_cbe_tmp__248))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__248));
}
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* %%36, align 4, !dbg !11 for 0x%I64xth hint within @ixi  --> \n", ++aesl_llvm_cbe_630_count);
  *llvm_cbe_tmp__249 = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
  goto llvm_cbe_tmp__257;

  } while (1); /* end of syntactic loop '' */
  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe_tmp__254:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @ixi}\n");
  return;
}


float energy(signed int llvm_cbe_u1, signed int llvm_cbe_u2, signed int llvm_cbe_u3, signed int llvm_cbe_u4, signed int llvm_cbe_u5, float *llvm_cbe_C_xi, float *llvm_cbe_V, signed int *llvm_cbe_rho, signed int llvm_cbe_source, signed int llvm_cbe_destin) {
  static  unsigned long long aesl_llvm_cbe_659_count = 0;
  static  unsigned long long aesl_llvm_cbe_660_count = 0;
  static  unsigned long long aesl_llvm_cbe_661_count = 0;
  static  unsigned long long aesl_llvm_cbe_662_count = 0;
  static  unsigned long long aesl_llvm_cbe_663_count = 0;
  static  unsigned long long aesl_llvm_cbe_664_count = 0;
  static  unsigned long long aesl_llvm_cbe_665_count = 0;
  static  unsigned long long aesl_llvm_cbe_666_count = 0;
  static  unsigned long long aesl_llvm_cbe_667_count = 0;
  static  unsigned long long aesl_llvm_cbe_668_count = 0;
  static  unsigned long long aesl_llvm_cbe_669_count = 0;
  static  unsigned long long aesl_llvm_cbe_670_count = 0;
  static  unsigned long long aesl_llvm_cbe_671_count = 0;
  static  unsigned long long aesl_llvm_cbe_672_count = 0;
  static  unsigned long long aesl_llvm_cbe_673_count = 0;
  static  unsigned long long aesl_llvm_cbe_674_count = 0;
  static  unsigned long long aesl_llvm_cbe_675_count = 0;
  static  unsigned long long aesl_llvm_cbe_676_count = 0;
  static  unsigned long long aesl_llvm_cbe_677_count = 0;
  static  unsigned long long aesl_llvm_cbe_678_count = 0;
  static  unsigned long long aesl_llvm_cbe_679_count = 0;
  static  unsigned long long aesl_llvm_cbe_680_count = 0;
  static  unsigned long long aesl_llvm_cbe_681_count = 0;
  static  unsigned long long aesl_llvm_cbe_682_count = 0;
  static  unsigned long long aesl_llvm_cbe_683_count = 0;
  static  unsigned long long aesl_llvm_cbe_684_count = 0;
  static  unsigned long long aesl_llvm_cbe_685_count = 0;
  static  unsigned long long aesl_llvm_cbe_686_count = 0;
  static  unsigned long long aesl_llvm_cbe_687_count = 0;
  static  unsigned long long aesl_llvm_cbe_688_count = 0;
  static  unsigned long long aesl_llvm_cbe_689_count = 0;
  static  unsigned long long aesl_llvm_cbe_690_count = 0;
  static  unsigned long long aesl_llvm_cbe_691_count = 0;
  static  unsigned long long aesl_llvm_cbe_692_count = 0;
  static  unsigned long long aesl_llvm_cbe_693_count = 0;
  static  unsigned long long aesl_llvm_cbe_694_count = 0;
  static  unsigned long long aesl_llvm_cbe_695_count = 0;
  static  unsigned long long aesl_llvm_cbe_696_count = 0;
  static  unsigned long long aesl_llvm_cbe_697_count = 0;
  static  unsigned long long aesl_llvm_cbe_698_count = 0;
  static  unsigned long long aesl_llvm_cbe_699_count = 0;
  static  unsigned long long aesl_llvm_cbe_700_count = 0;
  static  unsigned long long aesl_llvm_cbe_701_count = 0;
  static  unsigned long long aesl_llvm_cbe_702_count = 0;
  static  unsigned long long aesl_llvm_cbe_703_count = 0;
  static  unsigned long long aesl_llvm_cbe_704_count = 0;
  static  unsigned long long aesl_llvm_cbe_705_count = 0;
  static  unsigned long long aesl_llvm_cbe_706_count = 0;
  static  unsigned long long aesl_llvm_cbe_707_count = 0;
  static  unsigned long long aesl_llvm_cbe_708_count = 0;
  static  unsigned long long aesl_llvm_cbe_709_count = 0;
  static  unsigned long long aesl_llvm_cbe_710_count = 0;
  static  unsigned long long aesl_llvm_cbe_711_count = 0;
  static  unsigned long long aesl_llvm_cbe_712_count = 0;
  static  unsigned long long aesl_llvm_cbe_713_count = 0;
  static  unsigned long long aesl_llvm_cbe_714_count = 0;
  static  unsigned long long aesl_llvm_cbe_715_count = 0;
  unsigned int llvm_cbe_tmp__258;
  static  unsigned long long aesl_llvm_cbe_716_count = 0;
  float llvm_cbe_tmp__259;
  static  unsigned long long aesl_llvm_cbe_717_count = 0;
  unsigned int llvm_cbe_tmp__260;
  static  unsigned long long aesl_llvm_cbe_718_count = 0;
  float llvm_cbe_tmp__261;
  static  unsigned long long aesl_llvm_cbe_719_count = 0;
  unsigned int llvm_cbe_tmp__262;
  static  unsigned long long aesl_llvm_cbe_720_count = 0;
  float llvm_cbe_tmp__263;
  static  unsigned long long aesl_llvm_cbe_721_count = 0;
  unsigned int llvm_cbe_tmp__264;
  static  unsigned long long aesl_llvm_cbe_722_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge11_count = 0;
  unsigned int llvm_cbe_storemerge11;
  unsigned int llvm_cbe_storemerge11__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_723_count = 0;
  float llvm_cbe_tmp__265;
  float llvm_cbe_tmp__265__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_724_count = 0;
  float llvm_cbe_tmp__266;
  float llvm_cbe_tmp__266__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_725_count = 0;
  float llvm_cbe_tmp__267;
  float llvm_cbe_tmp__267__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_726_count = 0;
  float llvm_cbe_tmp__268;
  float llvm_cbe_tmp__268__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_727_count = 0;
  static  unsigned long long aesl_llvm_cbe_728_count = 0;
  static  unsigned long long aesl_llvm_cbe_729_count = 0;
  static  unsigned long long aesl_llvm_cbe_730_count = 0;
  static  unsigned long long aesl_llvm_cbe_731_count = 0;
  static  unsigned long long aesl_llvm_cbe_732_count = 0;
  static  unsigned long long aesl_llvm_cbe_733_count = 0;
  static  unsigned long long aesl_llvm_cbe_734_count = 0;
  static  unsigned long long aesl_llvm_cbe_735_count = 0;
  static  unsigned long long aesl_llvm_cbe_736_count = 0;
  static  unsigned long long aesl_llvm_cbe_737_count = 0;
  static  unsigned long long aesl_llvm_cbe_738_count = 0;
  static  unsigned long long aesl_llvm_cbe_739_count = 0;
  static  unsigned long long aesl_llvm_cbe_740_count = 0;
  unsigned int llvm_cbe_tmp__269;
  static  unsigned long long aesl_llvm_cbe_741_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge16_2e_us_count = 0;
  unsigned int llvm_cbe_storemerge16_2e_us;
  unsigned int llvm_cbe_storemerge16_2e_us__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_742_count = 0;
  float llvm_cbe_tmp__270;
  float llvm_cbe_tmp__270__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_743_count = 0;
  float llvm_cbe_tmp__271;
  float llvm_cbe_tmp__271__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_744_count = 0;
  float llvm_cbe_tmp__272;
  float llvm_cbe_tmp__272__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_745_count = 0;
  float llvm_cbe_tmp__273;
  float llvm_cbe_tmp__273__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_746_count = 0;
  float llvm_cbe_tmp__274;
  float llvm_cbe_tmp__274__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_747_count = 0;
  static  unsigned long long aesl_llvm_cbe_748_count = 0;
  static  unsigned long long aesl_llvm_cbe_749_count = 0;
  float llvm_cbe_tmp__275;
  float llvm_cbe_tmp__275__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_750_count = 0;
  float llvm_cbe_tmp__276;
  float llvm_cbe_tmp__276__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_751_count = 0;
  float llvm_cbe_tmp__277;
  float llvm_cbe_tmp__277__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_752_count = 0;
  float llvm_cbe_tmp__278;
  float llvm_cbe_tmp__278__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_753_count = 0;
  float llvm_cbe_tmp__279;
  float llvm_cbe_tmp__279__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_754_count = 0;
  unsigned int llvm_cbe_tmp__280;
  static  unsigned long long aesl_llvm_cbe_755_count = 0;
  static  unsigned long long aesl_llvm_cbe_756_count = 0;
  static  unsigned long long aesl_llvm_cbe_757_count = 0;
  static  unsigned long long aesl_llvm_cbe_758_count = 0;
  static  unsigned long long aesl_llvm_cbe_759_count = 0;
  static  unsigned long long aesl_llvm_cbe_760_count = 0;
  static  unsigned long long aesl_llvm_cbe_761_count = 0;
  static  unsigned long long aesl_llvm_cbe_762_count = 0;
  static  unsigned long long aesl_llvm_cbe_763_count = 0;
  static  unsigned long long aesl_llvm_cbe_764_count = 0;
  static  unsigned long long aesl_llvm_cbe_765_count = 0;
  static  unsigned long long aesl_llvm_cbe_766_count = 0;
  static  unsigned long long aesl_llvm_cbe_767_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_768_count = 0;
  static  unsigned long long aesl_llvm_cbe_769_count = 0;
  float llvm_cbe_tmp__281;
  float llvm_cbe_tmp__281__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_770_count = 0;
  float llvm_cbe_tmp__282;
  float llvm_cbe_tmp__282__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_771_count = 0;
  unsigned int llvm_cbe_tmp__283;
  static  unsigned long long aesl_llvm_cbe_772_count = 0;
  unsigned long long llvm_cbe_tmp__284;
  static  unsigned long long aesl_llvm_cbe_773_count = 0;
  float *llvm_cbe_tmp__285;
  static  unsigned long long aesl_llvm_cbe_774_count = 0;
  float llvm_cbe_tmp__286;
  static  unsigned long long aesl_llvm_cbe_775_count = 0;
  float llvm_cbe_tmp__287;
  static  unsigned long long aesl_llvm_cbe_776_count = 0;
  float llvm_cbe_tmp__288;
  static  unsigned long long aesl_llvm_cbe_777_count = 0;
  static  unsigned long long aesl_llvm_cbe_778_count = 0;
  static  unsigned long long aesl_llvm_cbe_779_count = 0;
  static  unsigned long long aesl_llvm_cbe_780_count = 0;
  unsigned int llvm_cbe_tmp__289;
  static  unsigned long long aesl_llvm_cbe_781_count = 0;
  unsigned int llvm_cbe_tmp__290;
  static  unsigned long long aesl_llvm_cbe_782_count = 0;
  unsigned long long llvm_cbe_tmp__291;
  static  unsigned long long aesl_llvm_cbe_783_count = 0;
  float *llvm_cbe_tmp__292;
  static  unsigned long long aesl_llvm_cbe_784_count = 0;
  float llvm_cbe_tmp__293;
  static  unsigned long long aesl_llvm_cbe_785_count = 0;
  float llvm_cbe_tmp__294;
  static  unsigned long long aesl_llvm_cbe_786_count = 0;
  float llvm_cbe_tmp__295;
  static  unsigned long long aesl_llvm_cbe_787_count = 0;
  static  unsigned long long aesl_llvm_cbe_788_count = 0;
  static  unsigned long long aesl_llvm_cbe_789_count = 0;
  static  unsigned long long aesl_llvm_cbe_790_count = 0;
  float llvm_cbe_tmp__296;
  static  unsigned long long aesl_llvm_cbe_791_count = 0;
  float llvm_cbe_tmp__297;
  static  unsigned long long aesl_llvm_cbe_792_count = 0;
  float llvm_cbe_tmp__298;
  static  unsigned long long aesl_llvm_cbe_793_count = 0;
  float llvm_cbe_tmp__299;
  static  unsigned long long aesl_llvm_cbe_794_count = 0;
  static  unsigned long long aesl_llvm_cbe_795_count = 0;
  static  unsigned long long aesl_llvm_cbe_796_count = 0;
  static  unsigned long long aesl_llvm_cbe_797_count = 0;
  static  unsigned long long aesl_llvm_cbe_798_count = 0;
  unsigned int llvm_cbe_tmp__300;
  static  unsigned long long aesl_llvm_cbe_799_count = 0;
  unsigned long long llvm_cbe_tmp__301;
  static  unsigned long long aesl_llvm_cbe_800_count = 0;
  float *llvm_cbe_tmp__302;
  static  unsigned long long aesl_llvm_cbe_801_count = 0;
  float llvm_cbe_tmp__303;
  static  unsigned long long aesl_llvm_cbe_802_count = 0;
  float llvm_cbe_tmp__304;
  static  unsigned long long aesl_llvm_cbe_803_count = 0;
  float *llvm_cbe_tmp__305;
  static  unsigned long long aesl_llvm_cbe_804_count = 0;
  float llvm_cbe_tmp__306;
  static  unsigned long long aesl_llvm_cbe_805_count = 0;
  float llvm_cbe_tmp__307;
  static  unsigned long long aesl_llvm_cbe_806_count = 0;
  float llvm_cbe_tmp__308;
  static  unsigned long long aesl_llvm_cbe_807_count = 0;
  static  unsigned long long aesl_llvm_cbe_808_count = 0;
  static  unsigned long long aesl_llvm_cbe_809_count = 0;
  static  unsigned long long aesl_llvm_cbe_810_count = 0;
  signed int *llvm_cbe_tmp__309;
  static  unsigned long long aesl_llvm_cbe_811_count = 0;
  unsigned int llvm_cbe_tmp__310;
  static  unsigned long long aesl_llvm_cbe_812_count = 0;
  unsigned int llvm_cbe_tmp__311;
  static  unsigned long long aesl_llvm_cbe_813_count = 0;
  float llvm_cbe_tmp__312;
  static  unsigned long long aesl_llvm_cbe_814_count = 0;
  float llvm_cbe_tmp__313;
  static  unsigned long long aesl_llvm_cbe_815_count = 0;
  float llvm_cbe_tmp__314;
  static  unsigned long long aesl_llvm_cbe_816_count = 0;
  static  unsigned long long aesl_llvm_cbe_817_count = 0;
  static  unsigned long long aesl_llvm_cbe_818_count = 0;
  static  unsigned long long aesl_llvm_cbe_819_count = 0;
  static  unsigned long long aesl_llvm_cbe_820_count = 0;
  static  unsigned long long aesl_llvm_cbe_821_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge16_count = 0;
  unsigned int llvm_cbe_storemerge16;
  unsigned int llvm_cbe_storemerge16__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_822_count = 0;
  float llvm_cbe_tmp__315;
  float llvm_cbe_tmp__315__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_823_count = 0;
  float llvm_cbe_tmp__316;
  float llvm_cbe_tmp__316__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_824_count = 0;
  float llvm_cbe_tmp__317;
  float llvm_cbe_tmp__317__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_825_count = 0;
  float llvm_cbe_tmp__318;
  float llvm_cbe_tmp__318__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_826_count = 0;
  float llvm_cbe_tmp__319;
  float llvm_cbe_tmp__319__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_827_count = 0;
  static  unsigned long long aesl_llvm_cbe_828_count = 0;
  static  unsigned long long aesl_llvm_cbe_829_count = 0;
  unsigned int llvm_cbe_tmp__320;
  static  unsigned long long aesl_llvm_cbe_830_count = 0;
  unsigned long long llvm_cbe_tmp__321;
  static  unsigned long long aesl_llvm_cbe_831_count = 0;
  float *llvm_cbe_tmp__322;
  static  unsigned long long aesl_llvm_cbe_832_count = 0;
  float llvm_cbe_tmp__323;
  static  unsigned long long aesl_llvm_cbe_833_count = 0;
  float llvm_cbe_tmp__324;
  static  unsigned long long aesl_llvm_cbe_834_count = 0;
  float *llvm_cbe_tmp__325;
  static  unsigned long long aesl_llvm_cbe_835_count = 0;
  float llvm_cbe_tmp__326;
  static  unsigned long long aesl_llvm_cbe_836_count = 0;
  float llvm_cbe_tmp__327;
  static  unsigned long long aesl_llvm_cbe_837_count = 0;
  float llvm_cbe_tmp__328;
  static  unsigned long long aesl_llvm_cbe_838_count = 0;
  static  unsigned long long aesl_llvm_cbe_839_count = 0;
  static  unsigned long long aesl_llvm_cbe_840_count = 0;
  static  unsigned long long aesl_llvm_cbe_841_count = 0;
  signed int *llvm_cbe_tmp__329;
  static  unsigned long long aesl_llvm_cbe_842_count = 0;
  unsigned int llvm_cbe_tmp__330;
  static  unsigned long long aesl_llvm_cbe_843_count = 0;
  unsigned int llvm_cbe_tmp__331;
  static  unsigned long long aesl_llvm_cbe_844_count = 0;
  float llvm_cbe_tmp__332;
  static  unsigned long long aesl_llvm_cbe_845_count = 0;
  float llvm_cbe_tmp__333;
  static  unsigned long long aesl_llvm_cbe_846_count = 0;
  float llvm_cbe_tmp__334;
  static  unsigned long long aesl_llvm_cbe_847_count = 0;
  static  unsigned long long aesl_llvm_cbe_848_count = 0;
  static  unsigned long long aesl_llvm_cbe_849_count = 0;
  static  unsigned long long aesl_llvm_cbe_850_count = 0;
  unsigned int llvm_cbe_tmp__335;
  static  unsigned long long aesl_llvm_cbe_851_count = 0;
  unsigned long long llvm_cbe_tmp__336;
  static  unsigned long long aesl_llvm_cbe_852_count = 0;
  float *llvm_cbe_tmp__337;
  static  unsigned long long aesl_llvm_cbe_853_count = 0;
  float llvm_cbe_tmp__338;
  static  unsigned long long aesl_llvm_cbe_854_count = 0;
  float llvm_cbe_tmp__339;
  static  unsigned long long aesl_llvm_cbe_855_count = 0;
  float llvm_cbe_tmp__340;
  static  unsigned long long aesl_llvm_cbe_856_count = 0;
  static  unsigned long long aesl_llvm_cbe_857_count = 0;
  static  unsigned long long aesl_llvm_cbe_858_count = 0;
  static  unsigned long long aesl_llvm_cbe_859_count = 0;
  unsigned int llvm_cbe_tmp__341;
  static  unsigned long long aesl_llvm_cbe_860_count = 0;
  unsigned int llvm_cbe_tmp__342;
  static  unsigned long long aesl_llvm_cbe_861_count = 0;
  unsigned long long llvm_cbe_tmp__343;
  static  unsigned long long aesl_llvm_cbe_862_count = 0;
  float *llvm_cbe_tmp__344;
  static  unsigned long long aesl_llvm_cbe_863_count = 0;
  float llvm_cbe_tmp__345;
  static  unsigned long long aesl_llvm_cbe_864_count = 0;
  float llvm_cbe_tmp__346;
  static  unsigned long long aesl_llvm_cbe_865_count = 0;
  float llvm_cbe_tmp__347;
  static  unsigned long long aesl_llvm_cbe_866_count = 0;
  static  unsigned long long aesl_llvm_cbe_867_count = 0;
  static  unsigned long long aesl_llvm_cbe_868_count = 0;
  static  unsigned long long aesl_llvm_cbe_869_count = 0;
  float llvm_cbe_tmp__348;
  static  unsigned long long aesl_llvm_cbe_870_count = 0;
  float llvm_cbe_tmp__349;
  static  unsigned long long aesl_llvm_cbe_871_count = 0;
  float llvm_cbe_tmp__350;
  static  unsigned long long aesl_llvm_cbe_872_count = 0;
  float llvm_cbe_tmp__351;
  static  unsigned long long aesl_llvm_cbe_873_count = 0;
  static  unsigned long long aesl_llvm_cbe_874_count = 0;
  static  unsigned long long aesl_llvm_cbe_875_count = 0;
  static  unsigned long long aesl_llvm_cbe_876_count = 0;
  static  unsigned long long aesl_llvm_cbe_877_count = 0;
  float llvm_cbe_tmp__352;
  float llvm_cbe_tmp__352__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_878_count = 0;
  float llvm_cbe_tmp__353;
  float llvm_cbe_tmp__353__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_879_count = 0;
  float llvm_cbe_tmp__354;
  float llvm_cbe_tmp__354__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_880_count = 0;
  float llvm_cbe_tmp__355;
  float llvm_cbe_tmp__355__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_881_count = 0;
  float llvm_cbe_tmp__356;
  float llvm_cbe_tmp__356__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_882_count = 0;
  unsigned int llvm_cbe_tmp__357;
  static  unsigned long long aesl_llvm_cbe_883_count = 0;
  static  unsigned long long aesl_llvm_cbe_884_count = 0;
  static  unsigned long long aesl_llvm_cbe_885_count = 0;
  static  unsigned long long aesl_llvm_cbe_886_count = 0;
  static  unsigned long long aesl_llvm_cbe_887_count = 0;
  static  unsigned long long aesl_llvm_cbe_888_count = 0;
  static  unsigned long long aesl_llvm_cbe_889_count = 0;
  static  unsigned long long aesl_llvm_cbe_890_count = 0;
  static  unsigned long long aesl_llvm_cbe_891_count = 0;
  static  unsigned long long aesl_llvm_cbe_892_count = 0;
  static  unsigned long long aesl_llvm_cbe_893_count = 0;
  static  unsigned long long aesl_llvm_cbe_894_count = 0;
  static  unsigned long long aesl_llvm_cbe_895_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond23_count = 0;
  static  unsigned long long aesl_llvm_cbe_896_count = 0;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa5_count = 0;
  float llvm_cbe__2e_lcssa5;
  float llvm_cbe__2e_lcssa5__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa4_count = 0;
  float llvm_cbe__2e_lcssa4;
  float llvm_cbe__2e_lcssa4__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa3_count = 0;
  float llvm_cbe__2e_lcssa3;
  float llvm_cbe__2e_lcssa3__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa2_count = 0;
  float llvm_cbe__2e_lcssa2;
  float llvm_cbe__2e_lcssa2__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe__2e_lcssa_count = 0;
  float llvm_cbe__2e_lcssa;
  float llvm_cbe__2e_lcssa__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_897_count = 0;
  float llvm_cbe_tmp__358;
  static  unsigned long long aesl_llvm_cbe_pow2_count = 0;
  float llvm_cbe_pow2;
  static  unsigned long long aesl_llvm_cbe_898_count = 0;
  float llvm_cbe_tmp__359;
  static  unsigned long long aesl_llvm_cbe_899_count = 0;
  static  unsigned long long aesl_llvm_cbe_900_count = 0;
  static  unsigned long long aesl_llvm_cbe_901_count = 0;
  static  unsigned long long aesl_llvm_cbe_902_count = 0;
  unsigned int llvm_cbe_tmp__360;
  static  unsigned long long aesl_llvm_cbe_903_count = 0;
  static  unsigned long long aesl_llvm_cbe_904_count = 0;
  static  unsigned long long aesl_llvm_cbe_905_count = 0;
  static  unsigned long long aesl_llvm_cbe_906_count = 0;
  static  unsigned long long aesl_llvm_cbe_907_count = 0;
  static  unsigned long long aesl_llvm_cbe_908_count = 0;
  static  unsigned long long aesl_llvm_cbe_909_count = 0;
  static  unsigned long long aesl_llvm_cbe_910_count = 0;
  static  unsigned long long aesl_llvm_cbe_911_count = 0;
  static  unsigned long long aesl_llvm_cbe_912_count = 0;
  static  unsigned long long aesl_llvm_cbe_913_count = 0;
  static  unsigned long long aesl_llvm_cbe_914_count = 0;
  static  unsigned long long aesl_llvm_cbe_915_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond25_count = 0;
  static  unsigned long long aesl_llvm_cbe_916_count = 0;
  static  unsigned long long aesl_llvm_cbe_917_count = 0;
  unsigned int llvm_cbe_tmp__361;
  static  unsigned long long aesl_llvm_cbe_918_count = 0;
  float llvm_cbe_tmp__362;
  static  unsigned long long aesl_llvm_cbe_919_count = 0;
  unsigned int llvm_cbe_tmp__363;
  static  unsigned long long aesl_llvm_cbe_920_count = 0;
  unsigned int llvm_cbe_tmp__364;
  static  unsigned long long aesl_llvm_cbe_921_count = 0;
  unsigned long long llvm_cbe_tmp__365;
  static  unsigned long long aesl_llvm_cbe_922_count = 0;
  float *llvm_cbe_tmp__366;
  static  unsigned long long aesl_llvm_cbe_923_count = 0;
  float llvm_cbe_tmp__367;
  static  unsigned long long aesl_llvm_cbe_924_count = 0;
  float llvm_cbe_tmp__368;
  static  unsigned long long aesl_llvm_cbe_925_count = 0;
  float llvm_cbe_tmp__369;
  static  unsigned long long aesl_llvm_cbe_926_count = 0;
  static  unsigned long long aesl_llvm_cbe_927_count = 0;
  static  unsigned long long aesl_llvm_cbe_928_count = 0;
  float llvm_cbe_tmp__370;
  static  unsigned long long aesl_llvm_cbe_929_count = 0;
  float llvm_cbe_tmp__371;
  static  unsigned long long aesl_llvm_cbe_930_count = 0;
  float llvm_cbe_tmp__372;
  static  unsigned long long aesl_llvm_cbe_931_count = 0;
  float llvm_cbe_tmp__373;
  static  unsigned long long aesl_llvm_cbe_932_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @energy\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = sdiv i32 %%u3, 2, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_715_count);
  llvm_cbe_tmp__258 = (unsigned int )((signed int )(((signed int )llvm_cbe_u3) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__258));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = sitofp i32 %%1 to float, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_716_count);
  llvm_cbe_tmp__259 = (float )((float )(signed int )llvm_cbe_tmp__258);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__259, *(int*)(&llvm_cbe_tmp__259));
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = sdiv i32 %%u4, 2, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_717_count);
  llvm_cbe_tmp__260 = (unsigned int )((signed int )(((signed int )llvm_cbe_u4) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__260));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = sitofp i32 %%3 to float, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_718_count);
  llvm_cbe_tmp__261 = (float )((float )(signed int )llvm_cbe_tmp__260);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__261, *(int*)(&llvm_cbe_tmp__261));
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sdiv i32 %%u1, 2, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_719_count);
  llvm_cbe_tmp__262 = (unsigned int )((signed int )(((signed int )llvm_cbe_u1) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__262));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = sitofp i32 %%5 to float, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_720_count);
  llvm_cbe_tmp__263 = (float )((float )(signed int )llvm_cbe_tmp__262);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__263, *(int*)(&llvm_cbe_tmp__263));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = sdiv i32 %%u2, 2, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_721_count);
  llvm_cbe_tmp__264 = (unsigned int )((signed int )(((signed int )llvm_cbe_u2) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__264));
  llvm_cbe_storemerge11__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__265__PHI_TEMPORARY = (float )0x0p0;   /* for PHI node */
  llvm_cbe_tmp__266__PHI_TEMPORARY = (float )0x0p0;   /* for PHI node */
  llvm_cbe_tmp__267__PHI_TEMPORARY = (float )0x0p0;   /* for PHI node */
  llvm_cbe_tmp__268__PHI_TEMPORARY = (float )0x0p0;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge11 = phi i32 [ 0, %%0 ], [ %%113, %%.us-lcssa.us  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_storemerge11_count);
  llvm_cbe_storemerge11 = (unsigned int )llvm_cbe_storemerge11__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge11 = 0x%X",llvm_cbe_storemerge11);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__360);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = phi float [ 0.000000e+00, %%0 ], [ %%.lcssa5, %%.us-lcssa.us  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_723_count);
  llvm_cbe_tmp__265 = (float )llvm_cbe_tmp__265__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__265);
printf("\n = %f",0x0p0);
printf("\n.lcssa5 = %f",llvm_cbe__2e_lcssa5);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = phi float [ 0.000000e+00, %%0 ], [ %%.lcssa4, %%.us-lcssa.us  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_724_count);
  llvm_cbe_tmp__266 = (float )llvm_cbe_tmp__266__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__266);
printf("\n = %f",0x0p0);
printf("\n.lcssa4 = %f",llvm_cbe__2e_lcssa4);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = phi float [ 0.000000e+00, %%0 ], [ %%112, %%.us-lcssa.us  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_725_count);
  llvm_cbe_tmp__267 = (float )llvm_cbe_tmp__267__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__267);
printf("\n = %f",0x0p0);
printf("\n = %f",llvm_cbe_tmp__359);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = phi float [ 0.000000e+00, %%0 ], [ %%.lcssa3, %%.us-lcssa.us  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_726_count);
  llvm_cbe_tmp__268 = (float )llvm_cbe_tmp__268__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__268);
printf("\n = %f",0x0p0);
printf("\n.lcssa3 = %f",llvm_cbe__2e_lcssa3);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = shl i32 %%storemerge11, 3, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_740_count);
  llvm_cbe_tmp__269 = (unsigned int )llvm_cbe_storemerge11 << 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__269);
  if (((llvm_cbe_storemerge11&4294967295U) == (llvm_cbe_destin&4294967295U))) {
    llvm_cbe_storemerge16_2e_us__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    llvm_cbe_tmp__270__PHI_TEMPORARY = (float )llvm_cbe_tmp__265;   /* for PHI node */
    llvm_cbe_tmp__271__PHI_TEMPORARY = (float )llvm_cbe_tmp__266;   /* for PHI node */
    llvm_cbe_tmp__272__PHI_TEMPORARY = (float )llvm_cbe_tmp__268;   /* for PHI node */
    llvm_cbe_tmp__273__PHI_TEMPORARY = (float )0x0p0;   /* for PHI node */
    llvm_cbe_tmp__274__PHI_TEMPORARY = (float )0x0p0;   /* for PHI node */
    goto llvm_cbe__2e_preheader_2e_split_2e_us;
  } else {
    llvm_cbe_storemerge16__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    llvm_cbe_tmp__315__PHI_TEMPORARY = (float )llvm_cbe_tmp__265;   /* for PHI node */
    llvm_cbe_tmp__316__PHI_TEMPORARY = (float )llvm_cbe_tmp__266;   /* for PHI node */
    llvm_cbe_tmp__317__PHI_TEMPORARY = (float )llvm_cbe_tmp__268;   /* for PHI node */
    llvm_cbe_tmp__318__PHI_TEMPORARY = (float )0x0p0;   /* for PHI node */
    llvm_cbe_tmp__319__PHI_TEMPORARY = (float )0x0p0;   /* for PHI node */
    goto llvm_cbe__2e_preheader_2e__2e_preheader_2e_split_crit_edge;
  }

llvm_cbe__2e_us_2d_lcssa_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa5 = phi float [ %%25, %%20 ], [ %%109, %%104  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe__2e_lcssa5_count);
  llvm_cbe__2e_lcssa5 = (float )llvm_cbe__2e_lcssa5__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa5 = %f",llvm_cbe__2e_lcssa5);
printf("\n = %f",llvm_cbe_tmp__279);
printf("\n = %f",llvm_cbe_tmp__356);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa4 = phi float [ %%24, %%20 ], [ %%108, %%104  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe__2e_lcssa4_count);
  llvm_cbe__2e_lcssa4 = (float )llvm_cbe__2e_lcssa4__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa4 = %f",llvm_cbe__2e_lcssa4);
printf("\n = %f",llvm_cbe_tmp__278);
printf("\n = %f",llvm_cbe_tmp__355);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa3 = phi float [ %%23, %%20 ], [ %%107, %%104  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe__2e_lcssa3_count);
  llvm_cbe__2e_lcssa3 = (float )llvm_cbe__2e_lcssa3__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa3 = %f",llvm_cbe__2e_lcssa3);
printf("\n = %f",llvm_cbe_tmp__277);
printf("\n = %f",llvm_cbe_tmp__354);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa2 = phi float [ %%22, %%20 ], [ %%106, %%104  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe__2e_lcssa2_count);
  llvm_cbe__2e_lcssa2 = (float )llvm_cbe__2e_lcssa2__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa2 = %f",llvm_cbe__2e_lcssa2);
printf("\n = %f",llvm_cbe_tmp__276);
printf("\n = %f",llvm_cbe_tmp__353);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%.lcssa = phi float [ %%21, %%20 ], [ %%105, %%104  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe__2e_lcssa_count);
  llvm_cbe__2e_lcssa = (float )llvm_cbe__2e_lcssa__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n.lcssa = %f",llvm_cbe__2e_lcssa);
printf("\n = %f",llvm_cbe_tmp__275);
printf("\n = %f",llvm_cbe_tmp__352);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%111 = fsub float %%.lcssa2, %%.lcssa, !dbg !12 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_897_count);
  llvm_cbe_tmp__358 = (float )((float )(llvm_cbe__2e_lcssa2 - llvm_cbe__2e_lcssa));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__358, *(int*)(&llvm_cbe_tmp__358));
if (AESL_DEBUG_TRACE)
printf("\n  %%pow2 = fmul float %%111, %%111, !dbg !12 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_pow2_count);
  llvm_cbe_pow2 = (float )((float )(llvm_cbe_tmp__358 * llvm_cbe_tmp__358));
if (AESL_DEBUG_TRACE)
printf("\npow2 = %f,  0x%x\n", llvm_cbe_pow2, *(int*)(&llvm_cbe_pow2));
if (AESL_DEBUG_TRACE)
printf("\n  %%112 = fadd float %%10, %%pow2, !dbg !12 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_898_count);
  llvm_cbe_tmp__359 = (float )((float )(llvm_cbe_tmp__267 + llvm_cbe_pow2));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__359, *(int*)(&llvm_cbe_tmp__359));
if (AESL_DEBUG_TRACE)
printf("\n  %%113 = add nsw i32 %%storemerge11, 1, !dbg !13 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_902_count);
  llvm_cbe_tmp__360 = (unsigned int )((unsigned int )(llvm_cbe_storemerge11&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__360&4294967295ull)));
  if (((llvm_cbe_tmp__360&4294967295U) == (8u&4294967295U))) {
    goto llvm_cbe_tmp__374;
  } else {
    llvm_cbe_storemerge11__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__360;   /* for PHI node */
    llvm_cbe_tmp__265__PHI_TEMPORARY = (float )llvm_cbe__2e_lcssa5;   /* for PHI node */
    llvm_cbe_tmp__266__PHI_TEMPORARY = (float )llvm_cbe__2e_lcssa4;   /* for PHI node */
    llvm_cbe_tmp__267__PHI_TEMPORARY = (float )llvm_cbe_tmp__359;   /* for PHI node */
    llvm_cbe_tmp__268__PHI_TEMPORARY = (float )llvm_cbe__2e_lcssa3;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  do {     /* Syntactic loop '.preheader.split.us' to make GCC happy */
llvm_cbe__2e_preheader_2e_split_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge16.us = phi i32 [ %%26, %%20 ], [ 0, %%.preheader  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_storemerge16_2e_us_count);
  llvm_cbe_storemerge16_2e_us = (unsigned int )llvm_cbe_storemerge16_2e_us__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge16.us = 0x%X",llvm_cbe_storemerge16_2e_us);
printf("\n = 0x%X",llvm_cbe_tmp__280);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = phi float [ %%25, %%20 ], [ %%8, %%.preheader  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_742_count);
  llvm_cbe_tmp__270 = (float )llvm_cbe_tmp__270__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__270);
printf("\n = %f",llvm_cbe_tmp__279);
printf("\n = %f",llvm_cbe_tmp__265);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = phi float [ %%24, %%20 ], [ %%9, %%.preheader  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_743_count);
  llvm_cbe_tmp__271 = (float )llvm_cbe_tmp__271__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__271);
printf("\n = %f",llvm_cbe_tmp__278);
printf("\n = %f",llvm_cbe_tmp__266);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = phi float [ %%23, %%20 ], [ %%11, %%.preheader  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_744_count);
  llvm_cbe_tmp__272 = (float )llvm_cbe_tmp__272__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__272);
printf("\n = %f",llvm_cbe_tmp__277);
printf("\n = %f",llvm_cbe_tmp__268);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = phi float [ %%22, %%20 ], [ 0.000000e+00, %%.preheader  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_745_count);
  llvm_cbe_tmp__273 = (float )llvm_cbe_tmp__273__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__273);
printf("\n = %f",llvm_cbe_tmp__276);
printf("\n = %f",0x0p0);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = phi float [ %%21, %%20 ], [ 0.000000e+00, %%.preheader  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_746_count);
  llvm_cbe_tmp__274 = (float )llvm_cbe_tmp__274__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__274);
printf("\n = %f",llvm_cbe_tmp__275);
printf("\n = %f",0x0p0);
}
  if (((llvm_cbe_storemerge16_2e_us&4294967295U) == (llvm_cbe_destin&4294967295U))) {
    llvm_cbe_tmp__275__PHI_TEMPORARY = (float )llvm_cbe_tmp__274;   /* for PHI node */
    llvm_cbe_tmp__276__PHI_TEMPORARY = (float )llvm_cbe_tmp__273;   /* for PHI node */
    llvm_cbe_tmp__277__PHI_TEMPORARY = (float )llvm_cbe_tmp__272;   /* for PHI node */
    llvm_cbe_tmp__278__PHI_TEMPORARY = (float )llvm_cbe_tmp__271;   /* for PHI node */
    llvm_cbe_tmp__279__PHI_TEMPORARY = (float )llvm_cbe_tmp__270;   /* for PHI node */
    goto llvm_cbe_tmp__375;
  } else {
    goto llvm_cbe_tmp__376;
  }

llvm_cbe_tmp__375:
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = phi float [ %%42, %%27 ], [ %%18, %%.preheader.split.us  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_749_count);
  llvm_cbe_tmp__275 = (float )llvm_cbe_tmp__275__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__275);
printf("\n = %f",llvm_cbe_tmp__295);
printf("\n = %f",llvm_cbe_tmp__274);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = phi float [ %%35, %%27 ], [ %%17, %%.preheader.split.us  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_750_count);
  llvm_cbe_tmp__276 = (float )llvm_cbe_tmp__276__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__276);
printf("\n = %f",llvm_cbe_tmp__288);
printf("\n = %f",llvm_cbe_tmp__273);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = phi float [ %%46, %%27 ], [ %%16, %%.preheader.split.us  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_751_count);
  llvm_cbe_tmp__277 = (float )llvm_cbe_tmp__277__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__277);
printf("\n = %f",llvm_cbe_tmp__299);
printf("\n = %f",llvm_cbe_tmp__272);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = phi float [ %%28, %%27 ], [ %%15, %%.preheader.split.us  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_752_count);
  llvm_cbe_tmp__278 = (float )llvm_cbe_tmp__278__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__278);
printf("\n = %f",llvm_cbe_tmp__281);
printf("\n = %f",llvm_cbe_tmp__271);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = phi float [ %%29, %%27 ], [ %%14, %%.preheader.split.us  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_753_count);
  llvm_cbe_tmp__279 = (float )llvm_cbe_tmp__279__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__279);
printf("\n = %f",llvm_cbe_tmp__282);
printf("\n = %f",llvm_cbe_tmp__270);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = add nsw i32 %%storemerge16.us, 1, !dbg !13 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_754_count);
  llvm_cbe_tmp__280 = (unsigned int )((unsigned int )(llvm_cbe_storemerge16_2e_us&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__280&4294967295ull)));
  if (((llvm_cbe_tmp__280&4294967295U) == (8u&4294967295U))) {
    llvm_cbe__2e_lcssa5__PHI_TEMPORARY = (float )llvm_cbe_tmp__279;   /* for PHI node */
    llvm_cbe__2e_lcssa4__PHI_TEMPORARY = (float )llvm_cbe_tmp__278;   /* for PHI node */
    llvm_cbe__2e_lcssa3__PHI_TEMPORARY = (float )llvm_cbe_tmp__277;   /* for PHI node */
    llvm_cbe__2e_lcssa2__PHI_TEMPORARY = (float )llvm_cbe_tmp__276;   /* for PHI node */
    llvm_cbe__2e_lcssa__PHI_TEMPORARY = (float )llvm_cbe_tmp__275;   /* for PHI node */
    goto llvm_cbe__2e_us_2d_lcssa_2e_us;
  } else {
    llvm_cbe_storemerge16_2e_us__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__280;   /* for PHI node */
    llvm_cbe_tmp__270__PHI_TEMPORARY = (float )llvm_cbe_tmp__279;   /* for PHI node */
    llvm_cbe_tmp__271__PHI_TEMPORARY = (float )llvm_cbe_tmp__278;   /* for PHI node */
    llvm_cbe_tmp__272__PHI_TEMPORARY = (float )llvm_cbe_tmp__277;   /* for PHI node */
    llvm_cbe_tmp__273__PHI_TEMPORARY = (float )llvm_cbe_tmp__276;   /* for PHI node */
    llvm_cbe_tmp__274__PHI_TEMPORARY = (float )llvm_cbe_tmp__275;   /* for PHI node */
    goto llvm_cbe__2e_preheader_2e_split_2e_us;
  }

llvm_cbe_tmp__377:
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = phi float [ %%62, %%47 ], [ %%15, %%63  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_769_count);
  llvm_cbe_tmp__281 = (float )llvm_cbe_tmp__281__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__281);
printf("\n = %f",llvm_cbe_tmp__314);
printf("\n = %f",llvm_cbe_tmp__271);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = phi float [ %%56, %%47 ], [ %%14, %%63  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_770_count);
  llvm_cbe_tmp__282 = (float )llvm_cbe_tmp__282__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__282);
printf("\n = %f",llvm_cbe_tmp__308);
printf("\n = %f",llvm_cbe_tmp__270);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = add nsw i32 %%storemerge16.us, %%13, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_771_count);
  llvm_cbe_tmp__283 = (unsigned int )((unsigned int )(llvm_cbe_storemerge16_2e_us&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__269&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__283&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = sext i32 %%30 to i64, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_772_count);
  llvm_cbe_tmp__284 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__283);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__284);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = getelementptr inbounds float* %%V, i64 %%31, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_773_count);
  llvm_cbe_tmp__285 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__284))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__284));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = load float* %%32, align 4, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_774_count);
  llvm_cbe_tmp__286 = (float )*llvm_cbe_tmp__285;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__286, *(int*)(&llvm_cbe_tmp__286));
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = fmul float %%2, %%33, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_775_count);
  llvm_cbe_tmp__287 = (float )((float )(llvm_cbe_tmp__259 * llvm_cbe_tmp__286));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__287, *(int*)(&llvm_cbe_tmp__287));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = fadd float %%17, %%34, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_776_count);
  llvm_cbe_tmp__288 = (float )((float )(llvm_cbe_tmp__273 + llvm_cbe_tmp__287));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__288, *(int*)(&llvm_cbe_tmp__288));
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = shl i32 %%storemerge16.us, 3, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_780_count);
  llvm_cbe_tmp__289 = (unsigned int )llvm_cbe_storemerge16_2e_us << 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__289);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = add nsw i32 %%36, %%destin, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_781_count);
  llvm_cbe_tmp__290 = (unsigned int )((unsigned int )(llvm_cbe_tmp__289&4294967295ull)) + ((unsigned int )(llvm_cbe_destin&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__290&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = sext i32 %%37 to i64, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_782_count);
  llvm_cbe_tmp__291 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__290);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__291);
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = getelementptr inbounds float* %%V, i64 %%38, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_783_count);
  llvm_cbe_tmp__292 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__291))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__291));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = load float* %%39, align 4, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_784_count);
  llvm_cbe_tmp__293 = (float )*llvm_cbe_tmp__292;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__293, *(int*)(&llvm_cbe_tmp__293));
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = fmul float %%2, %%40, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_785_count);
  llvm_cbe_tmp__294 = (float )((float )(llvm_cbe_tmp__259 * llvm_cbe_tmp__293));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__294, *(int*)(&llvm_cbe_tmp__294));
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = fadd float %%18, %%41, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_786_count);
  llvm_cbe_tmp__295 = (float )((float )(llvm_cbe_tmp__274 + llvm_cbe_tmp__294));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__295, *(int*)(&llvm_cbe_tmp__295));
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = fmul float %%4, %%33, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_790_count);
  llvm_cbe_tmp__296 = (float )((float )(llvm_cbe_tmp__261 * llvm_cbe_tmp__286));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__296, *(int*)(&llvm_cbe_tmp__296));
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = fsub float 1.000000e+00, %%33, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_791_count);
  llvm_cbe_tmp__297 = (float )((float )(0x1p0 - llvm_cbe_tmp__286));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__297, *(int*)(&llvm_cbe_tmp__297));
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = fmul float %%43, %%44, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_792_count);
  llvm_cbe_tmp__298 = (float )((float )(llvm_cbe_tmp__296 * llvm_cbe_tmp__297));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__298, *(int*)(&llvm_cbe_tmp__298));
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = fadd float %%16, %%45, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_793_count);
  llvm_cbe_tmp__299 = (float )((float )(llvm_cbe_tmp__272 + llvm_cbe_tmp__298));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__299, *(int*)(&llvm_cbe_tmp__299));
  llvm_cbe_tmp__275__PHI_TEMPORARY = (float )llvm_cbe_tmp__295;   /* for PHI node */
  llvm_cbe_tmp__276__PHI_TEMPORARY = (float )llvm_cbe_tmp__288;   /* for PHI node */
  llvm_cbe_tmp__277__PHI_TEMPORARY = (float )llvm_cbe_tmp__299;   /* for PHI node */
  llvm_cbe_tmp__278__PHI_TEMPORARY = (float )llvm_cbe_tmp__281;   /* for PHI node */
  llvm_cbe_tmp__279__PHI_TEMPORARY = (float )llvm_cbe_tmp__282;   /* for PHI node */
  goto llvm_cbe_tmp__375;

llvm_cbe_tmp__378:
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = add nsw i32 %%storemerge16.us, %%13, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_798_count);
  llvm_cbe_tmp__300 = (unsigned int )((unsigned int )(llvm_cbe_storemerge16_2e_us&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__269&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__300&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = sext i32 %%48 to i64, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_799_count);
  llvm_cbe_tmp__301 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__300);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__301);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = getelementptr inbounds float* %%C_xi, i64 %%49, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_800_count);
  llvm_cbe_tmp__302 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__301))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__301));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = load float* %%50, align 4, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_801_count);
  llvm_cbe_tmp__303 = (float )*llvm_cbe_tmp__302;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__303, *(int*)(&llvm_cbe_tmp__303));
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = fmul float %%6, %%51, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_802_count);
  llvm_cbe_tmp__304 = (float )((float )(llvm_cbe_tmp__263 * llvm_cbe_tmp__303));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__304, *(int*)(&llvm_cbe_tmp__304));
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = getelementptr inbounds float* %%V, i64 %%49, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_803_count);
  llvm_cbe_tmp__305 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__301))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__301));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = load float* %%53, align 4, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_804_count);
  llvm_cbe_tmp__306 = (float )*llvm_cbe_tmp__305;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__306, *(int*)(&llvm_cbe_tmp__306));
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = fmul float %%52, %%54, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_805_count);
  llvm_cbe_tmp__307 = (float )((float )(llvm_cbe_tmp__304 * llvm_cbe_tmp__306));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__307, *(int*)(&llvm_cbe_tmp__307));
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = fadd float %%14, %%55, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_806_count);
  llvm_cbe_tmp__308 = (float )((float )(llvm_cbe_tmp__270 + llvm_cbe_tmp__307));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__308, *(int*)(&llvm_cbe_tmp__308));
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = getelementptr inbounds i32* %%rho, i64 %%49, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_810_count);
  llvm_cbe_tmp__309 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__301))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__301));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = load i32* %%57, align 4, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_811_count);
  llvm_cbe_tmp__310 = (unsigned int )*llvm_cbe_tmp__309;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__310);
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = mul nsw i32 %%58, %%7, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_812_count);
  llvm_cbe_tmp__311 = (unsigned int )((unsigned int )(llvm_cbe_tmp__310&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__264&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__311&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = sitofp i32 %%59 to float, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_813_count);
  llvm_cbe_tmp__312 = (float )((float )(signed int )llvm_cbe_tmp__311);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__312, *(int*)(&llvm_cbe_tmp__312));
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = fmul float %%60, %%54, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_814_count);
  llvm_cbe_tmp__313 = (float )((float )(llvm_cbe_tmp__312 * llvm_cbe_tmp__306));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__313, *(int*)(&llvm_cbe_tmp__313));
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = fadd float %%15, %%61, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_815_count);
  llvm_cbe_tmp__314 = (float )((float )(llvm_cbe_tmp__271 + llvm_cbe_tmp__313));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__314, *(int*)(&llvm_cbe_tmp__314));
  llvm_cbe_tmp__281__PHI_TEMPORARY = (float )llvm_cbe_tmp__314;   /* for PHI node */
  llvm_cbe_tmp__282__PHI_TEMPORARY = (float )llvm_cbe_tmp__308;   /* for PHI node */
  goto llvm_cbe_tmp__377;

llvm_cbe_tmp__376:
  if (((llvm_cbe_storemerge16_2e_us&4294967295U) == (llvm_cbe_source&4294967295U))) {
    llvm_cbe_tmp__281__PHI_TEMPORARY = (float )llvm_cbe_tmp__271;   /* for PHI node */
    llvm_cbe_tmp__282__PHI_TEMPORARY = (float )llvm_cbe_tmp__270;   /* for PHI node */
    goto llvm_cbe_tmp__377;
  } else {
    goto llvm_cbe_tmp__378;
  }

  } while (1); /* end of syntactic loop '.preheader.split.us' */
  do {     /* Syntactic loop '.preheader..preheader.split_crit_edge' to make GCC happy */
llvm_cbe__2e_preheader_2e__2e_preheader_2e_split_crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge16 = phi i32 [ %%110, %%104 ], [ 0, %%.preheader  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_storemerge16_count);
  llvm_cbe_storemerge16 = (unsigned int )llvm_cbe_storemerge16__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge16 = 0x%X",llvm_cbe_storemerge16);
printf("\n = 0x%X",llvm_cbe_tmp__357);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = phi float [ %%109, %%104 ], [ %%8, %%.preheader  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_822_count);
  llvm_cbe_tmp__315 = (float )llvm_cbe_tmp__315__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__315);
printf("\n = %f",llvm_cbe_tmp__356);
printf("\n = %f",llvm_cbe_tmp__265);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = phi float [ %%108, %%104 ], [ %%9, %%.preheader  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_823_count);
  llvm_cbe_tmp__316 = (float )llvm_cbe_tmp__316__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__316);
printf("\n = %f",llvm_cbe_tmp__355);
printf("\n = %f",llvm_cbe_tmp__266);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = phi float [ %%107, %%104 ], [ %%11, %%.preheader  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_824_count);
  llvm_cbe_tmp__317 = (float )llvm_cbe_tmp__317__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__317);
printf("\n = %f",llvm_cbe_tmp__354);
printf("\n = %f",llvm_cbe_tmp__268);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = phi float [ %%106, %%104 ], [ 0.000000e+00, %%.preheader  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_825_count);
  llvm_cbe_tmp__318 = (float )llvm_cbe_tmp__318__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__318);
printf("\n = %f",llvm_cbe_tmp__353);
printf("\n = %f",0x0p0);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = phi float [ %%105, %%104 ], [ 0.000000e+00, %%.preheader  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_826_count);
  llvm_cbe_tmp__319 = (float )llvm_cbe_tmp__319__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__319);
printf("\n = %f",llvm_cbe_tmp__352);
printf("\n = %f",0x0p0);
}
  if (((llvm_cbe_storemerge11&4294967295U) == (llvm_cbe_storemerge16&4294967295U))) {
    llvm_cbe_tmp__352__PHI_TEMPORARY = (float )llvm_cbe_tmp__319;   /* for PHI node */
    llvm_cbe_tmp__353__PHI_TEMPORARY = (float )llvm_cbe_tmp__318;   /* for PHI node */
    llvm_cbe_tmp__354__PHI_TEMPORARY = (float )llvm_cbe_tmp__317;   /* for PHI node */
    llvm_cbe_tmp__355__PHI_TEMPORARY = (float )llvm_cbe_tmp__316;   /* for PHI node */
    llvm_cbe_tmp__356__PHI_TEMPORARY = (float )llvm_cbe_tmp__315;   /* for PHI node */
    goto llvm_cbe_tmp__379;
  } else {
    goto llvm_cbe_tmp__380;
  }

llvm_cbe_tmp__379:
if (AESL_DEBUG_TRACE)
printf("\n  %%105 = phi float [ %%99, %%71 ], [ %%69, %%.preheader..preheader.split_crit_edge  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_877_count);
  llvm_cbe_tmp__352 = (float )llvm_cbe_tmp__352__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__352);
printf("\n = %f",llvm_cbe_tmp__347);
printf("\n = %f",llvm_cbe_tmp__319);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%106 = phi float [ %%92, %%71 ], [ %%68, %%.preheader..preheader.split_crit_edge  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_878_count);
  llvm_cbe_tmp__353 = (float )llvm_cbe_tmp__353__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__353);
printf("\n = %f",llvm_cbe_tmp__340);
printf("\n = %f",llvm_cbe_tmp__318);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%107 = phi float [ %%103, %%71 ], [ %%67, %%.preheader..preheader.split_crit_edge  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_879_count);
  llvm_cbe_tmp__354 = (float )llvm_cbe_tmp__354__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__354);
printf("\n = %f",llvm_cbe_tmp__351);
printf("\n = %f",llvm_cbe_tmp__317);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%108 = phi float [ %%86, %%71 ], [ %%66, %%.preheader..preheader.split_crit_edge  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_880_count);
  llvm_cbe_tmp__355 = (float )llvm_cbe_tmp__355__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__355);
printf("\n = %f",llvm_cbe_tmp__334);
printf("\n = %f",llvm_cbe_tmp__316);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%109 = phi float [ %%80, %%71 ], [ %%65, %%.preheader..preheader.split_crit_edge  for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_881_count);
  llvm_cbe_tmp__356 = (float )llvm_cbe_tmp__356__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__356);
printf("\n = %f",llvm_cbe_tmp__328);
printf("\n = %f",llvm_cbe_tmp__315);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%110 = add nsw i32 %%storemerge16, 1, !dbg !13 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_882_count);
  llvm_cbe_tmp__357 = (unsigned int )((unsigned int )(llvm_cbe_storemerge16&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__357&4294967295ull)));
  if (((llvm_cbe_tmp__357&4294967295U) == (8u&4294967295U))) {
    llvm_cbe__2e_lcssa5__PHI_TEMPORARY = (float )llvm_cbe_tmp__356;   /* for PHI node */
    llvm_cbe__2e_lcssa4__PHI_TEMPORARY = (float )llvm_cbe_tmp__355;   /* for PHI node */
    llvm_cbe__2e_lcssa3__PHI_TEMPORARY = (float )llvm_cbe_tmp__354;   /* for PHI node */
    llvm_cbe__2e_lcssa2__PHI_TEMPORARY = (float )llvm_cbe_tmp__353;   /* for PHI node */
    llvm_cbe__2e_lcssa__PHI_TEMPORARY = (float )llvm_cbe_tmp__352;   /* for PHI node */
    goto llvm_cbe__2e_us_2d_lcssa_2e_us;
  } else {
    llvm_cbe_storemerge16__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__357;   /* for PHI node */
    llvm_cbe_tmp__315__PHI_TEMPORARY = (float )llvm_cbe_tmp__356;   /* for PHI node */
    llvm_cbe_tmp__316__PHI_TEMPORARY = (float )llvm_cbe_tmp__355;   /* for PHI node */
    llvm_cbe_tmp__317__PHI_TEMPORARY = (float )llvm_cbe_tmp__354;   /* for PHI node */
    llvm_cbe_tmp__318__PHI_TEMPORARY = (float )llvm_cbe_tmp__353;   /* for PHI node */
    llvm_cbe_tmp__319__PHI_TEMPORARY = (float )llvm_cbe_tmp__352;   /* for PHI node */
    goto llvm_cbe__2e_preheader_2e__2e_preheader_2e_split_crit_edge;
  }

llvm_cbe_tmp__380:
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = add nsw i32 %%storemerge16, %%13, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_829_count);
  llvm_cbe_tmp__320 = (unsigned int )((unsigned int )(llvm_cbe_storemerge16&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__269&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__320&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = sext i32 %%72 to i64, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_830_count);
  llvm_cbe_tmp__321 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__320);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__321);
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = getelementptr inbounds float* %%C_xi, i64 %%73, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_831_count);
  llvm_cbe_tmp__322 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__321))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__321));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%75 = load float* %%74, align 4, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_832_count);
  llvm_cbe_tmp__323 = (float )*llvm_cbe_tmp__322;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__323, *(int*)(&llvm_cbe_tmp__323));
if (AESL_DEBUG_TRACE)
printf("\n  %%76 = fmul float %%6, %%75, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_833_count);
  llvm_cbe_tmp__324 = (float )((float )(llvm_cbe_tmp__263 * llvm_cbe_tmp__323));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__324, *(int*)(&llvm_cbe_tmp__324));
if (AESL_DEBUG_TRACE)
printf("\n  %%77 = getelementptr inbounds float* %%V, i64 %%73, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_834_count);
  llvm_cbe_tmp__325 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__321))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__321));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = load float* %%77, align 4, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_835_count);
  llvm_cbe_tmp__326 = (float )*llvm_cbe_tmp__325;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__326, *(int*)(&llvm_cbe_tmp__326));
if (AESL_DEBUG_TRACE)
printf("\n  %%79 = fmul float %%76, %%78, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_836_count);
  llvm_cbe_tmp__327 = (float )((float )(llvm_cbe_tmp__324 * llvm_cbe_tmp__326));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__327, *(int*)(&llvm_cbe_tmp__327));
if (AESL_DEBUG_TRACE)
printf("\n  %%80 = fadd float %%65, %%79, !dbg !8 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_837_count);
  llvm_cbe_tmp__328 = (float )((float )(llvm_cbe_tmp__315 + llvm_cbe_tmp__327));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__328, *(int*)(&llvm_cbe_tmp__328));
if (AESL_DEBUG_TRACE)
printf("\n  %%81 = getelementptr inbounds i32* %%rho, i64 %%73, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_841_count);
  llvm_cbe_tmp__329 = (signed int *)(&llvm_cbe_rho[(((signed long long )llvm_cbe_tmp__321))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__321));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = load i32* %%81, align 4, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_842_count);
  llvm_cbe_tmp__330 = (unsigned int )*llvm_cbe_tmp__329;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__330);
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = mul nsw i32 %%82, %%7, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_843_count);
  llvm_cbe_tmp__331 = (unsigned int )((unsigned int )(llvm_cbe_tmp__330&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__264&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__331&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%84 = sitofp i32 %%83 to float, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_844_count);
  llvm_cbe_tmp__332 = (float )((float )(signed int )llvm_cbe_tmp__331);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__332, *(int*)(&llvm_cbe_tmp__332));
if (AESL_DEBUG_TRACE)
printf("\n  %%85 = fmul float %%84, %%78, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_845_count);
  llvm_cbe_tmp__333 = (float )((float )(llvm_cbe_tmp__332 * llvm_cbe_tmp__326));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__333, *(int*)(&llvm_cbe_tmp__333));
if (AESL_DEBUG_TRACE)
printf("\n  %%86 = fadd float %%66, %%85, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_846_count);
  llvm_cbe_tmp__334 = (float )((float )(llvm_cbe_tmp__316 + llvm_cbe_tmp__333));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__334, *(int*)(&llvm_cbe_tmp__334));
if (AESL_DEBUG_TRACE)
printf("\n  %%87 = add nsw i32 %%storemerge16, %%13, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_850_count);
  llvm_cbe_tmp__335 = (unsigned int )((unsigned int )(llvm_cbe_storemerge16&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__269&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__335&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%88 = sext i32 %%87 to i64, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_851_count);
  llvm_cbe_tmp__336 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__335);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__336);
if (AESL_DEBUG_TRACE)
printf("\n  %%89 = getelementptr inbounds float* %%V, i64 %%88, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_852_count);
  llvm_cbe_tmp__337 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__336))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__336));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%90 = load float* %%89, align 4, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_853_count);
  llvm_cbe_tmp__338 = (float )*llvm_cbe_tmp__337;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__338, *(int*)(&llvm_cbe_tmp__338));
if (AESL_DEBUG_TRACE)
printf("\n  %%91 = fmul float %%2, %%90, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_854_count);
  llvm_cbe_tmp__339 = (float )((float )(llvm_cbe_tmp__259 * llvm_cbe_tmp__338));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__339, *(int*)(&llvm_cbe_tmp__339));
if (AESL_DEBUG_TRACE)
printf("\n  %%92 = fadd float %%68, %%91, !dbg !9 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_855_count);
  llvm_cbe_tmp__340 = (float )((float )(llvm_cbe_tmp__318 + llvm_cbe_tmp__339));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__340, *(int*)(&llvm_cbe_tmp__340));
if (AESL_DEBUG_TRACE)
printf("\n  %%93 = shl i32 %%storemerge16, 3, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_859_count);
  llvm_cbe_tmp__341 = (unsigned int )llvm_cbe_storemerge16 << 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__341);
if (AESL_DEBUG_TRACE)
printf("\n  %%94 = add nsw i32 %%93, %%storemerge11, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_860_count);
  llvm_cbe_tmp__342 = (unsigned int )((unsigned int )(llvm_cbe_tmp__341&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge11&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__342&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%95 = sext i32 %%94 to i64, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_861_count);
  llvm_cbe_tmp__343 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__342);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__343);
if (AESL_DEBUG_TRACE)
printf("\n  %%96 = getelementptr inbounds float* %%V, i64 %%95, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_862_count);
  llvm_cbe_tmp__344 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__343))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__343));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%97 = load float* %%96, align 4, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_863_count);
  llvm_cbe_tmp__345 = (float )*llvm_cbe_tmp__344;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__345, *(int*)(&llvm_cbe_tmp__345));
if (AESL_DEBUG_TRACE)
printf("\n  %%98 = fmul float %%2, %%97, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_864_count);
  llvm_cbe_tmp__346 = (float )((float )(llvm_cbe_tmp__259 * llvm_cbe_tmp__345));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__346, *(int*)(&llvm_cbe_tmp__346));
if (AESL_DEBUG_TRACE)
printf("\n  %%99 = fadd float %%69, %%98, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_865_count);
  llvm_cbe_tmp__347 = (float )((float )(llvm_cbe_tmp__319 + llvm_cbe_tmp__346));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__347, *(int*)(&llvm_cbe_tmp__347));
if (AESL_DEBUG_TRACE)
printf("\n  %%100 = fmul float %%4, %%90, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_869_count);
  llvm_cbe_tmp__348 = (float )((float )(llvm_cbe_tmp__261 * llvm_cbe_tmp__338));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__348, *(int*)(&llvm_cbe_tmp__348));
if (AESL_DEBUG_TRACE)
printf("\n  %%101 = fsub float 1.000000e+00, %%90, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_870_count);
  llvm_cbe_tmp__349 = (float )((float )(0x1p0 - llvm_cbe_tmp__338));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__349, *(int*)(&llvm_cbe_tmp__349));
if (AESL_DEBUG_TRACE)
printf("\n  %%102 = fmul float %%100, %%101, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_871_count);
  llvm_cbe_tmp__350 = (float )((float )(llvm_cbe_tmp__348 * llvm_cbe_tmp__349));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__350, *(int*)(&llvm_cbe_tmp__350));
if (AESL_DEBUG_TRACE)
printf("\n  %%103 = fadd float %%67, %%102, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_872_count);
  llvm_cbe_tmp__351 = (float )((float )(llvm_cbe_tmp__317 + llvm_cbe_tmp__350));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__351, *(int*)(&llvm_cbe_tmp__351));
  llvm_cbe_tmp__352__PHI_TEMPORARY = (float )llvm_cbe_tmp__347;   /* for PHI node */
  llvm_cbe_tmp__353__PHI_TEMPORARY = (float )llvm_cbe_tmp__340;   /* for PHI node */
  llvm_cbe_tmp__354__PHI_TEMPORARY = (float )llvm_cbe_tmp__351;   /* for PHI node */
  llvm_cbe_tmp__355__PHI_TEMPORARY = (float )llvm_cbe_tmp__334;   /* for PHI node */
  llvm_cbe_tmp__356__PHI_TEMPORARY = (float )llvm_cbe_tmp__328;   /* for PHI node */
  goto llvm_cbe_tmp__379;

  } while (1); /* end of syntactic loop '.preheader..preheader.split_crit_edge' */
  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe_tmp__374:
if (AESL_DEBUG_TRACE)
printf("\n  %%115 = sdiv i32 %%u5, 2, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_917_count);
  llvm_cbe_tmp__361 = (unsigned int )((signed int )(((signed int )llvm_cbe_u5) / ((signed int )2u)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((signed int )llvm_cbe_tmp__361));
if (AESL_DEBUG_TRACE)
printf("\n  %%116 = sitofp i32 %%115 to float, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_918_count);
  llvm_cbe_tmp__362 = (float )((float )(signed int )llvm_cbe_tmp__361);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__362, *(int*)(&llvm_cbe_tmp__362));
if (AESL_DEBUG_TRACE)
printf("\n  %%117 = shl i32 %%destin, 3, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_919_count);
  llvm_cbe_tmp__363 = (unsigned int )llvm_cbe_destin << 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__363);
if (AESL_DEBUG_TRACE)
printf("\n  %%118 = add nsw i32 %%117, %%source, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_920_count);
  llvm_cbe_tmp__364 = (unsigned int )((unsigned int )(llvm_cbe_tmp__363&4294967295ull)) + ((unsigned int )(llvm_cbe_source&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__364&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%119 = sext i32 %%118 to i64, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_921_count);
  llvm_cbe_tmp__365 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__364);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__365);
if (AESL_DEBUG_TRACE)
printf("\n  %%120 = getelementptr inbounds float* %%V, i64 %%119, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_922_count);
  llvm_cbe_tmp__366 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__365))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__365));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%121 = load float* %%120, align 4, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_923_count);
  llvm_cbe_tmp__367 = (float )*llvm_cbe_tmp__366;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__367, *(int*)(&llvm_cbe_tmp__367));
if (AESL_DEBUG_TRACE)
printf("\n  %%122 = fsub float 1.000000e+00, %%121, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_924_count);
  llvm_cbe_tmp__368 = (float )((float )(0x1p0 - llvm_cbe_tmp__367));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__368, *(int*)(&llvm_cbe_tmp__368));
if (AESL_DEBUG_TRACE)
printf("\n  %%123 = fmul float %%116, %%122, !dbg !10 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_925_count);
  llvm_cbe_tmp__369 = (float )((float )(llvm_cbe_tmp__362 * llvm_cbe_tmp__368));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__369, *(int*)(&llvm_cbe_tmp__369));
if (AESL_DEBUG_TRACE)
printf("\n  %%124 = fadd float %%.lcssa5, %%.lcssa4, !dbg !12 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_928_count);
  llvm_cbe_tmp__370 = (float )((float )(llvm_cbe__2e_lcssa5 + llvm_cbe__2e_lcssa4));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__370, *(int*)(&llvm_cbe_tmp__370));
if (AESL_DEBUG_TRACE)
printf("\n  %%125 = fadd float %%124, %%112, !dbg !12 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_929_count);
  llvm_cbe_tmp__371 = (float )((float )(llvm_cbe_tmp__370 + llvm_cbe_tmp__359));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__371, *(int*)(&llvm_cbe_tmp__371));
if (AESL_DEBUG_TRACE)
printf("\n  %%126 = fadd float %%125, %%.lcssa3, !dbg !12 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_930_count);
  llvm_cbe_tmp__372 = (float )((float )(llvm_cbe_tmp__371 + llvm_cbe__2e_lcssa3));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__372, *(int*)(&llvm_cbe_tmp__372));
if (AESL_DEBUG_TRACE)
printf("\n  %%127 = fadd float %%126, %%123, !dbg !12 for 0x%I64xth hint within @energy  --> \n", ++aesl_llvm_cbe_931_count);
  llvm_cbe_tmp__373 = (float )((float )(llvm_cbe_tmp__372 + llvm_cbe_tmp__369));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__373, *(int*)(&llvm_cbe_tmp__373));
  if (AESL_DEBUG_TRACE)
      printf("\nEND @energy}\n");
  return llvm_cbe_tmp__373;
}


signed int main(signed int llvm_cbe_tmp__381,  char **llvm_cbe_tmp__382) {
  static  unsigned long long aesl_llvm_cbe_rho_count = 0;
  signed int llvm_cbe_rho[64];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_T_count = 0;
  float llvm_cbe_T[4096];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_I_count = 0;
  float llvm_cbe_I[64];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_V_count = 0;
  float llvm_cbe_V[64];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_U_0_count = 0;
  float llvm_cbe_U_0[64];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_U_1_count = 0;
  float llvm_cbe_U_1[64];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_U_2_count = 0;
  float llvm_cbe_U_2[64];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_C_xi_count = 0;
  float llvm_cbe_C_xi[64];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_933_count = 0;
  static  unsigned long long aesl_llvm_cbe_934_count = 0;
  static  unsigned long long aesl_llvm_cbe_935_count = 0;
  static  unsigned long long aesl_llvm_cbe_936_count = 0;
  static  unsigned long long aesl_llvm_cbe_937_count = 0;
  static  unsigned long long aesl_llvm_cbe_938_count = 0;
  static  unsigned long long aesl_llvm_cbe_939_count = 0;
  static  unsigned long long aesl_llvm_cbe_940_count = 0;
  static  unsigned long long aesl_llvm_cbe_941_count = 0;
  static  unsigned long long aesl_llvm_cbe_942_count = 0;
  static  unsigned long long aesl_llvm_cbe_943_count = 0;
  static  unsigned long long aesl_llvm_cbe_944_count = 0;
  static  unsigned long long aesl_llvm_cbe_945_count = 0;
  static  unsigned long long aesl_llvm_cbe_946_count = 0;
  static  unsigned long long aesl_llvm_cbe_947_count = 0;
  static  unsigned long long aesl_llvm_cbe_948_count = 0;
  static  unsigned long long aesl_llvm_cbe_949_count = 0;
  static  unsigned long long aesl_llvm_cbe_950_count = 0;
  static  unsigned long long aesl_llvm_cbe_951_count = 0;
  static  unsigned long long aesl_llvm_cbe_952_count = 0;
  static  unsigned long long aesl_llvm_cbe_953_count = 0;
  static  unsigned long long aesl_llvm_cbe_954_count = 0;
  static  unsigned long long aesl_llvm_cbe_955_count = 0;
  static  unsigned long long aesl_llvm_cbe_956_count = 0;
  static  unsigned long long aesl_llvm_cbe_957_count = 0;
  static  unsigned long long aesl_llvm_cbe_958_count = 0;
  static  unsigned long long aesl_llvm_cbe_959_count = 0;
  static  unsigned long long aesl_llvm_cbe_960_count = 0;
  static  unsigned long long aesl_llvm_cbe_961_count = 0;
  static  unsigned long long aesl_llvm_cbe_962_count = 0;
  static  unsigned long long aesl_llvm_cbe_963_count = 0;
  static  unsigned long long aesl_llvm_cbe_964_count = 0;
  static  unsigned long long aesl_llvm_cbe_965_count = 0;
  static  unsigned long long aesl_llvm_cbe_966_count = 0;
  static  unsigned long long aesl_llvm_cbe_967_count = 0;
  static  unsigned long long aesl_llvm_cbe_968_count = 0;
  static  unsigned long long aesl_llvm_cbe_969_count = 0;
  static  unsigned long long aesl_llvm_cbe_970_count = 0;
  static  unsigned long long aesl_llvm_cbe_971_count = 0;
  static  unsigned long long aesl_llvm_cbe_972_count = 0;
  static  unsigned long long aesl_llvm_cbe_973_count = 0;
  static  unsigned long long aesl_llvm_cbe_974_count = 0;
  static  unsigned long long aesl_llvm_cbe_975_count = 0;
  static  unsigned long long aesl_llvm_cbe_976_count = 0;
  static  unsigned long long aesl_llvm_cbe_977_count = 0;
  static  unsigned long long aesl_llvm_cbe_978_count = 0;
  static  unsigned long long aesl_llvm_cbe_979_count = 0;
   char *llvm_cbe_tmp__383;
  static  unsigned long long aesl_llvm_cbe_980_count = 0;
   char *llvm_cbe_tmp__384;
  static  unsigned long long aesl_llvm_cbe_981_count = 0;
  static  unsigned long long aesl_llvm_cbe_982_count = 0;
   char *llvm_cbe_tmp__385;
  static  unsigned long long aesl_llvm_cbe_983_count = 0;
   char *llvm_cbe_tmp__386;
  static  unsigned long long aesl_llvm_cbe_984_count = 0;
  static  unsigned long long aesl_llvm_cbe_985_count = 0;
   char *llvm_cbe_tmp__387;
  static  unsigned long long aesl_llvm_cbe_986_count = 0;
   char *llvm_cbe_tmp__388;
  static  unsigned long long aesl_llvm_cbe_987_count = 0;
  static  unsigned long long aesl_llvm_cbe_988_count = 0;
   char *llvm_cbe_tmp__389;
  static  unsigned long long aesl_llvm_cbe_989_count = 0;
   char *llvm_cbe_tmp__390;
  static  unsigned long long aesl_llvm_cbe_puts_count = 0;
  unsigned int llvm_cbe_puts;
  static  unsigned long long aesl_llvm_cbe_990_count = 0;
  static  unsigned long long aesl_llvm_cbe_991_count = 0;
  static  unsigned long long aesl_llvm_cbe_992_count = 0;
  static  unsigned long long aesl_llvm_cbe_993_count = 0;
  static  unsigned long long aesl_llvm_cbe_994_count = 0;
  static  unsigned long long aesl_llvm_cbe_995_count = 0;
  static  unsigned long long aesl_llvm_cbe_996_count = 0;
  static  unsigned long long aesl_llvm_cbe_997_count = 0;
  static  unsigned long long aesl_llvm_cbe_998_count = 0;
  static  unsigned long long aesl_llvm_cbe_999_count = 0;
  static  unsigned long long aesl_llvm_cbe_1000_count = 0;
  static  unsigned long long aesl_llvm_cbe_1001_count = 0;
  static  unsigned long long aesl_llvm_cbe_1002_count = 0;
  static  unsigned long long aesl_llvm_cbe_1003_count = 0;
  static  unsigned long long aesl_llvm_cbe_1004_count = 0;
  static  unsigned long long aesl_llvm_cbe_1005_count = 0;
  static  unsigned long long aesl_llvm_cbe_1006_count = 0;
  static  unsigned long long aesl_llvm_cbe_1007_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge16_count = 0;
  unsigned int llvm_cbe_storemerge16;
  unsigned int llvm_cbe_storemerge16__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_putchar_count = 0;
  unsigned int llvm_cbe_putchar;
  static  unsigned long long aesl_llvm_cbe_1008_count = 0;
  static  unsigned long long aesl_llvm_cbe_1009_count = 0;
  static  unsigned long long aesl_llvm_cbe_1010_count = 0;
  static  unsigned long long aesl_llvm_cbe_1011_count = 0;
  static  unsigned long long aesl_llvm_cbe_1012_count = 0;
  static  unsigned long long aesl_llvm_cbe_1013_count = 0;
  static  unsigned long long aesl_llvm_cbe_1014_count = 0;
  static  unsigned long long aesl_llvm_cbe_1015_count = 0;
  static  unsigned long long aesl_llvm_cbe_1016_count = 0;
  static  unsigned long long aesl_llvm_cbe_1017_count = 0;
  static  unsigned long long aesl_llvm_cbe_1018_count = 0;
  static  unsigned long long aesl_llvm_cbe_1019_count = 0;
  static  unsigned long long aesl_llvm_cbe_1020_count = 0;
  static  unsigned long long aesl_llvm_cbe_1021_count = 0;
  static  unsigned long long aesl_llvm_cbe_1022_count = 0;
  static  unsigned long long aesl_llvm_cbe_1023_count = 0;
  static  unsigned long long aesl_llvm_cbe_1024_count = 0;
  static  unsigned long long aesl_llvm_cbe_1025_count = 0;
  unsigned int llvm_cbe_tmp__391;
  static  unsigned long long aesl_llvm_cbe_1026_count = 0;
  unsigned long long llvm_cbe_tmp__392;
  static  unsigned long long aesl_llvm_cbe_1027_count = 0;
  float *llvm_cbe_tmp__393;
  static  unsigned long long aesl_llvm_cbe_1028_count = 0;
  float llvm_cbe_tmp__394;
  static  unsigned long long aesl_llvm_cbe_1029_count = 0;
  double llvm_cbe_tmp__395;
  static  unsigned long long aesl_llvm_cbe_1030_count = 0;
  unsigned int llvm_cbe_tmp__396;
  static  unsigned long long aesl_llvm_cbe_1031_count = 0;
  static  unsigned long long aesl_llvm_cbe_1032_count = 0;
  static  unsigned long long aesl_llvm_cbe_1033_count = 0;
  static  unsigned long long aesl_llvm_cbe_1034_count = 0;
  static  unsigned long long aesl_llvm_cbe_1035_count = 0;
  static  unsigned long long aesl_llvm_cbe_1036_count = 0;
  static  unsigned long long aesl_llvm_cbe_1037_count = 0;
  static  unsigned long long aesl_llvm_cbe_1038_count = 0;
  static  unsigned long long aesl_llvm_cbe_1039_count = 0;
  static  unsigned long long aesl_llvm_cbe_1040_count = 0;
  static  unsigned long long aesl_llvm_cbe_1041_count = 0;
  static  unsigned long long aesl_llvm_cbe_1042_count = 0;
  static  unsigned long long aesl_llvm_cbe_1043_count = 0;
  static  unsigned long long aesl_llvm_cbe_1044_count = 0;
  static  unsigned long long aesl_llvm_cbe_1045_count = 0;
  static  unsigned long long aesl_llvm_cbe_1046_count = 0;
  static  unsigned long long aesl_llvm_cbe_1047_count = 0;
  static  unsigned long long aesl_llvm_cbe_1048_count = 0;
  unsigned int llvm_cbe_tmp__397;
  static  unsigned long long aesl_llvm_cbe_1049_count = 0;
  unsigned long long llvm_cbe_tmp__398;
  static  unsigned long long aesl_llvm_cbe_1050_count = 0;
  float *llvm_cbe_tmp__399;
  static  unsigned long long aesl_llvm_cbe_1051_count = 0;
  float llvm_cbe_tmp__400;
  static  unsigned long long aesl_llvm_cbe_1052_count = 0;
  double llvm_cbe_tmp__401;
  static  unsigned long long aesl_llvm_cbe_1053_count = 0;
  unsigned int llvm_cbe_tmp__402;
  static  unsigned long long aesl_llvm_cbe_1054_count = 0;
  static  unsigned long long aesl_llvm_cbe_1055_count = 0;
  static  unsigned long long aesl_llvm_cbe_1056_count = 0;
  static  unsigned long long aesl_llvm_cbe_1057_count = 0;
  static  unsigned long long aesl_llvm_cbe_1058_count = 0;
  static  unsigned long long aesl_llvm_cbe_1059_count = 0;
  static  unsigned long long aesl_llvm_cbe_1060_count = 0;
  static  unsigned long long aesl_llvm_cbe_1061_count = 0;
  static  unsigned long long aesl_llvm_cbe_1062_count = 0;
  static  unsigned long long aesl_llvm_cbe_1063_count = 0;
  static  unsigned long long aesl_llvm_cbe_1064_count = 0;
  static  unsigned long long aesl_llvm_cbe_1065_count = 0;
  static  unsigned long long aesl_llvm_cbe_1066_count = 0;
  static  unsigned long long aesl_llvm_cbe_1067_count = 0;
  static  unsigned long long aesl_llvm_cbe_1068_count = 0;
  static  unsigned long long aesl_llvm_cbe_1069_count = 0;
  static  unsigned long long aesl_llvm_cbe_1070_count = 0;
  static  unsigned long long aesl_llvm_cbe_1071_count = 0;
  unsigned int llvm_cbe_tmp__403;
  static  unsigned long long aesl_llvm_cbe_1072_count = 0;
  unsigned long long llvm_cbe_tmp__404;
  static  unsigned long long aesl_llvm_cbe_1073_count = 0;
  float *llvm_cbe_tmp__405;
  static  unsigned long long aesl_llvm_cbe_1074_count = 0;
  float llvm_cbe_tmp__406;
  static  unsigned long long aesl_llvm_cbe_1075_count = 0;
  double llvm_cbe_tmp__407;
  static  unsigned long long aesl_llvm_cbe_1076_count = 0;
  unsigned int llvm_cbe_tmp__408;
  static  unsigned long long aesl_llvm_cbe_1077_count = 0;
  static  unsigned long long aesl_llvm_cbe_1078_count = 0;
  static  unsigned long long aesl_llvm_cbe_1079_count = 0;
  static  unsigned long long aesl_llvm_cbe_1080_count = 0;
  static  unsigned long long aesl_llvm_cbe_1081_count = 0;
  static  unsigned long long aesl_llvm_cbe_1082_count = 0;
  static  unsigned long long aesl_llvm_cbe_1083_count = 0;
  static  unsigned long long aesl_llvm_cbe_1084_count = 0;
  static  unsigned long long aesl_llvm_cbe_1085_count = 0;
  static  unsigned long long aesl_llvm_cbe_1086_count = 0;
  static  unsigned long long aesl_llvm_cbe_1087_count = 0;
  static  unsigned long long aesl_llvm_cbe_1088_count = 0;
  static  unsigned long long aesl_llvm_cbe_1089_count = 0;
  static  unsigned long long aesl_llvm_cbe_1090_count = 0;
  static  unsigned long long aesl_llvm_cbe_1091_count = 0;
  static  unsigned long long aesl_llvm_cbe_1092_count = 0;
  static  unsigned long long aesl_llvm_cbe_1093_count = 0;
  static  unsigned long long aesl_llvm_cbe_1094_count = 0;
  unsigned int llvm_cbe_tmp__409;
  static  unsigned long long aesl_llvm_cbe_1095_count = 0;
  unsigned long long llvm_cbe_tmp__410;
  static  unsigned long long aesl_llvm_cbe_1096_count = 0;
  float *llvm_cbe_tmp__411;
  static  unsigned long long aesl_llvm_cbe_1097_count = 0;
  float llvm_cbe_tmp__412;
  static  unsigned long long aesl_llvm_cbe_1098_count = 0;
  double llvm_cbe_tmp__413;
  static  unsigned long long aesl_llvm_cbe_1099_count = 0;
  unsigned int llvm_cbe_tmp__414;
  static  unsigned long long aesl_llvm_cbe_1100_count = 0;
  static  unsigned long long aesl_llvm_cbe_1101_count = 0;
  static  unsigned long long aesl_llvm_cbe_1102_count = 0;
  static  unsigned long long aesl_llvm_cbe_1103_count = 0;
  static  unsigned long long aesl_llvm_cbe_1104_count = 0;
  static  unsigned long long aesl_llvm_cbe_1105_count = 0;
  static  unsigned long long aesl_llvm_cbe_1106_count = 0;
  static  unsigned long long aesl_llvm_cbe_1107_count = 0;
  static  unsigned long long aesl_llvm_cbe_1108_count = 0;
  static  unsigned long long aesl_llvm_cbe_1109_count = 0;
  static  unsigned long long aesl_llvm_cbe_1110_count = 0;
  static  unsigned long long aesl_llvm_cbe_1111_count = 0;
  static  unsigned long long aesl_llvm_cbe_1112_count = 0;
  static  unsigned long long aesl_llvm_cbe_1113_count = 0;
  static  unsigned long long aesl_llvm_cbe_1114_count = 0;
  static  unsigned long long aesl_llvm_cbe_1115_count = 0;
  static  unsigned long long aesl_llvm_cbe_1116_count = 0;
  static  unsigned long long aesl_llvm_cbe_1117_count = 0;
  unsigned int llvm_cbe_tmp__415;
  static  unsigned long long aesl_llvm_cbe_1118_count = 0;
  unsigned long long llvm_cbe_tmp__416;
  static  unsigned long long aesl_llvm_cbe_1119_count = 0;
  float *llvm_cbe_tmp__417;
  static  unsigned long long aesl_llvm_cbe_1120_count = 0;
  float llvm_cbe_tmp__418;
  static  unsigned long long aesl_llvm_cbe_1121_count = 0;
  double llvm_cbe_tmp__419;
  static  unsigned long long aesl_llvm_cbe_1122_count = 0;
  unsigned int llvm_cbe_tmp__420;
  static  unsigned long long aesl_llvm_cbe_1123_count = 0;
  static  unsigned long long aesl_llvm_cbe_1124_count = 0;
  static  unsigned long long aesl_llvm_cbe_1125_count = 0;
  static  unsigned long long aesl_llvm_cbe_1126_count = 0;
  static  unsigned long long aesl_llvm_cbe_1127_count = 0;
  static  unsigned long long aesl_llvm_cbe_1128_count = 0;
  static  unsigned long long aesl_llvm_cbe_1129_count = 0;
  static  unsigned long long aesl_llvm_cbe_1130_count = 0;
  static  unsigned long long aesl_llvm_cbe_1131_count = 0;
  static  unsigned long long aesl_llvm_cbe_1132_count = 0;
  static  unsigned long long aesl_llvm_cbe_1133_count = 0;
  static  unsigned long long aesl_llvm_cbe_1134_count = 0;
  static  unsigned long long aesl_llvm_cbe_1135_count = 0;
  static  unsigned long long aesl_llvm_cbe_1136_count = 0;
  static  unsigned long long aesl_llvm_cbe_1137_count = 0;
  static  unsigned long long aesl_llvm_cbe_1138_count = 0;
  static  unsigned long long aesl_llvm_cbe_1139_count = 0;
  static  unsigned long long aesl_llvm_cbe_1140_count = 0;
  unsigned int llvm_cbe_tmp__421;
  static  unsigned long long aesl_llvm_cbe_1141_count = 0;
  unsigned long long llvm_cbe_tmp__422;
  static  unsigned long long aesl_llvm_cbe_1142_count = 0;
  float *llvm_cbe_tmp__423;
  static  unsigned long long aesl_llvm_cbe_1143_count = 0;
  float llvm_cbe_tmp__424;
  static  unsigned long long aesl_llvm_cbe_1144_count = 0;
  double llvm_cbe_tmp__425;
  static  unsigned long long aesl_llvm_cbe_1145_count = 0;
  unsigned int llvm_cbe_tmp__426;
  static  unsigned long long aesl_llvm_cbe_1146_count = 0;
  static  unsigned long long aesl_llvm_cbe_1147_count = 0;
  static  unsigned long long aesl_llvm_cbe_1148_count = 0;
  static  unsigned long long aesl_llvm_cbe_1149_count = 0;
  static  unsigned long long aesl_llvm_cbe_1150_count = 0;
  static  unsigned long long aesl_llvm_cbe_1151_count = 0;
  static  unsigned long long aesl_llvm_cbe_1152_count = 0;
  static  unsigned long long aesl_llvm_cbe_1153_count = 0;
  static  unsigned long long aesl_llvm_cbe_1154_count = 0;
  static  unsigned long long aesl_llvm_cbe_1155_count = 0;
  static  unsigned long long aesl_llvm_cbe_1156_count = 0;
  static  unsigned long long aesl_llvm_cbe_1157_count = 0;
  static  unsigned long long aesl_llvm_cbe_1158_count = 0;
  static  unsigned long long aesl_llvm_cbe_1159_count = 0;
  static  unsigned long long aesl_llvm_cbe_1160_count = 0;
  static  unsigned long long aesl_llvm_cbe_1161_count = 0;
  static  unsigned long long aesl_llvm_cbe_1162_count = 0;
  static  unsigned long long aesl_llvm_cbe_1163_count = 0;
  unsigned int llvm_cbe_tmp__427;
  static  unsigned long long aesl_llvm_cbe_1164_count = 0;
  unsigned long long llvm_cbe_tmp__428;
  static  unsigned long long aesl_llvm_cbe_1165_count = 0;
  float *llvm_cbe_tmp__429;
  static  unsigned long long aesl_llvm_cbe_1166_count = 0;
  float llvm_cbe_tmp__430;
  static  unsigned long long aesl_llvm_cbe_1167_count = 0;
  double llvm_cbe_tmp__431;
  static  unsigned long long aesl_llvm_cbe_1168_count = 0;
  unsigned int llvm_cbe_tmp__432;
  static  unsigned long long aesl_llvm_cbe_1169_count = 0;
  static  unsigned long long aesl_llvm_cbe_1170_count = 0;
  static  unsigned long long aesl_llvm_cbe_1171_count = 0;
  static  unsigned long long aesl_llvm_cbe_1172_count = 0;
  static  unsigned long long aesl_llvm_cbe_1173_count = 0;
  static  unsigned long long aesl_llvm_cbe_1174_count = 0;
  static  unsigned long long aesl_llvm_cbe_1175_count = 0;
  static  unsigned long long aesl_llvm_cbe_1176_count = 0;
  static  unsigned long long aesl_llvm_cbe_1177_count = 0;
  static  unsigned long long aesl_llvm_cbe_1178_count = 0;
  static  unsigned long long aesl_llvm_cbe_1179_count = 0;
  static  unsigned long long aesl_llvm_cbe_1180_count = 0;
  static  unsigned long long aesl_llvm_cbe_1181_count = 0;
  static  unsigned long long aesl_llvm_cbe_1182_count = 0;
  static  unsigned long long aesl_llvm_cbe_1183_count = 0;
  static  unsigned long long aesl_llvm_cbe_1184_count = 0;
  static  unsigned long long aesl_llvm_cbe_1185_count = 0;
  static  unsigned long long aesl_llvm_cbe_1186_count = 0;
  unsigned int llvm_cbe_tmp__433;
  static  unsigned long long aesl_llvm_cbe_1187_count = 0;
  unsigned long long llvm_cbe_tmp__434;
  static  unsigned long long aesl_llvm_cbe_1188_count = 0;
  float *llvm_cbe_tmp__435;
  static  unsigned long long aesl_llvm_cbe_1189_count = 0;
  float llvm_cbe_tmp__436;
  static  unsigned long long aesl_llvm_cbe_1190_count = 0;
  double llvm_cbe_tmp__437;
  static  unsigned long long aesl_llvm_cbe_1191_count = 0;
  unsigned int llvm_cbe_tmp__438;
  static  unsigned long long aesl_llvm_cbe_1192_count = 0;
  static  unsigned long long aesl_llvm_cbe_1193_count = 0;
  static  unsigned long long aesl_llvm_cbe_1194_count = 0;
  static  unsigned long long aesl_llvm_cbe_1195_count = 0;
  static  unsigned long long aesl_llvm_cbe_1196_count = 0;
  static  unsigned long long aesl_llvm_cbe_1197_count = 0;
  static  unsigned long long aesl_llvm_cbe_1198_count = 0;
  static  unsigned long long aesl_llvm_cbe_1199_count = 0;
  static  unsigned long long aesl_llvm_cbe_1200_count = 0;
  static  unsigned long long aesl_llvm_cbe_1201_count = 0;
  static  unsigned long long aesl_llvm_cbe_1202_count = 0;
  static  unsigned long long aesl_llvm_cbe_1203_count = 0;
  static  unsigned long long aesl_llvm_cbe_1204_count = 0;
  static  unsigned long long aesl_llvm_cbe_1205_count = 0;
  static  unsigned long long aesl_llvm_cbe_1206_count = 0;
  static  unsigned long long aesl_llvm_cbe_1207_count = 0;
  static  unsigned long long aesl_llvm_cbe_1208_count = 0;
  static  unsigned long long aesl_llvm_cbe_puts6_count = 0;
  unsigned int llvm_cbe_puts6;
  static  unsigned long long aesl_llvm_cbe_1209_count = 0;
  unsigned int llvm_cbe_tmp__439;
  static  unsigned long long aesl_llvm_cbe_1210_count = 0;
  static  unsigned long long aesl_llvm_cbe_1211_count = 0;
  static  unsigned long long aesl_llvm_cbe_1212_count = 0;
  static  unsigned long long aesl_llvm_cbe_1213_count = 0;
  static  unsigned long long aesl_llvm_cbe_1214_count = 0;
  static  unsigned long long aesl_llvm_cbe_1215_count = 0;
  static  unsigned long long aesl_llvm_cbe_1216_count = 0;
  static  unsigned long long aesl_llvm_cbe_1217_count = 0;
  static  unsigned long long aesl_llvm_cbe_1218_count = 0;
  static  unsigned long long aesl_llvm_cbe_1219_count = 0;
  static  unsigned long long aesl_llvm_cbe_1220_count = 0;
  static  unsigned long long aesl_llvm_cbe_1221_count = 0;
  static  unsigned long long aesl_llvm_cbe_1222_count = 0;
  static  unsigned long long aesl_llvm_cbe_1223_count = 0;
  static  unsigned long long aesl_llvm_cbe_1224_count = 0;
  static  unsigned long long aesl_llvm_cbe_1225_count = 0;
  static  unsigned long long aesl_llvm_cbe_1226_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond20_count = 0;
  static  unsigned long long aesl_llvm_cbe_1227_count = 0;
  static  unsigned long long aesl_llvm_cbe_1228_count = 0;
  signed int *llvm_cbe_tmp__440;
  static  unsigned long long aesl_llvm_cbe_1229_count = 0;
  float *llvm_cbe_tmp__441;
  static  unsigned long long aesl_llvm_cbe_1230_count = 0;
  static  unsigned long long aesl_llvm_cbe_1231_count = 0;
  float *llvm_cbe_tmp__442;
  static  unsigned long long aesl_llvm_cbe_1232_count = 0;
  static  unsigned long long aesl_llvm_cbe_1233_count = 0;
  float *llvm_cbe_tmp__443;
  static  unsigned long long aesl_llvm_cbe_1234_count = 0;
  static  unsigned long long aesl_llvm_cbe_1235_count = 0;
  float *llvm_cbe_tmp__444;
  static  unsigned long long aesl_llvm_cbe_1236_count = 0;
  float *llvm_cbe_tmp__445;
  static  unsigned long long aesl_llvm_cbe_1237_count = 0;
  float *llvm_cbe_tmp__446;
  static  unsigned long long aesl_llvm_cbe_1238_count = 0;
  float *llvm_cbe_tmp__447;
  static  unsigned long long aesl_llvm_cbe_1239_count = 0;
  static  unsigned long long aesl_llvm_cbe_1240_count = 0;
  unsigned int llvm_cbe_tmp__448;
  unsigned int llvm_cbe_tmp__448__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1241_count = 0;
  unsigned int llvm_cbe_tmp__449;
  unsigned int llvm_cbe_tmp__449__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1242_count = 0;
  float llvm_cbe_tmp__450;
  float llvm_cbe_tmp__450__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1243_count = 0;
  static  unsigned long long aesl_llvm_cbe_1244_count = 0;
  static  unsigned long long aesl_llvm_cbe_1245_count = 0;
  float llvm_cbe_tmp__451;
  static  unsigned long long aesl_llvm_cbe_1246_count = 0;
  static  unsigned long long aesl_llvm_cbe_1247_count = 0;
  static  unsigned long long aesl_llvm_cbe_1248_count = 0;
  static  unsigned long long aesl_llvm_cbe_1249_count = 0;
  static  unsigned long long aesl_llvm_cbe_1250_count = 0;
  static  unsigned long long aesl_llvm_cbe_1251_count = 0;
  static  unsigned long long aesl_llvm_cbe_1252_count = 0;
  unsigned int llvm_cbe_tmp__452;
  static  unsigned long long aesl_llvm_cbe_1253_count = 0;
  static  unsigned long long aesl_llvm_cbe_1254_count = 0;
  static  unsigned long long aesl_llvm_cbe_1255_count = 0;
  static  unsigned long long aesl_llvm_cbe_1256_count = 0;
  double llvm_cbe_tmp__453;
  static  unsigned long long aesl_llvm_cbe_1257_count = 0;
  unsigned int llvm_cbe_tmp__454;
  static  unsigned long long aesl_llvm_cbe_1258_count = 0;
  static  unsigned long long aesl_llvm_cbe_1259_count = 0;
  static  unsigned long long aesl_llvm_cbe_1260_count = 0;
  static  unsigned long long aesl_llvm_cbe_1261_count = 0;
  static  unsigned long long aesl_llvm_cbe_1262_count = 0;
  static  unsigned long long aesl_llvm_cbe_1263_count = 0;
  static  unsigned long long aesl_llvm_cbe_1264_count = 0;
  static  unsigned long long aesl_llvm_cbe_1265_count = 0;
  static  unsigned long long aesl_llvm_cbe_1266_count = 0;
  static  unsigned long long aesl_llvm_cbe_1267_count = 0;
  static  unsigned long long aesl_llvm_cbe_1268_count = 0;
  static  unsigned long long aesl_llvm_cbe_1269_count = 0;
  static  unsigned long long aesl_llvm_cbe_1270_count = 0;
  static  unsigned long long aesl_llvm_cbe_1271_count = 0;
  static  unsigned long long aesl_llvm_cbe_1272_count = 0;
  static  unsigned long long aesl_llvm_cbe_1273_count = 0;
  static  unsigned long long aesl_llvm_cbe_1274_count = 0;
  static  unsigned long long aesl_llvm_cbe_1275_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge314_count = 0;
  unsigned int llvm_cbe_storemerge314;
  unsigned int llvm_cbe_storemerge314__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_1276_count = 0;
  static  unsigned long long aesl_llvm_cbe_1277_count = 0;
  static  unsigned long long aesl_llvm_cbe_1278_count = 0;
  static  unsigned long long aesl_llvm_cbe_1279_count = 0;
  static  unsigned long long aesl_llvm_cbe_1280_count = 0;
  static  unsigned long long aesl_llvm_cbe_1281_count = 0;
  static  unsigned long long aesl_llvm_cbe_1282_count = 0;
  static  unsigned long long aesl_llvm_cbe_1283_count = 0;
  static  unsigned long long aesl_llvm_cbe_1284_count = 0;
  static  unsigned long long aesl_llvm_cbe_1285_count = 0;
  static  unsigned long long aesl_llvm_cbe_1286_count = 0;
  static  unsigned long long aesl_llvm_cbe_1287_count = 0;
  static  unsigned long long aesl_llvm_cbe_1288_count = 0;
  static  unsigned long long aesl_llvm_cbe_1289_count = 0;
  static  unsigned long long aesl_llvm_cbe_1290_count = 0;
  static  unsigned long long aesl_llvm_cbe_1291_count = 0;
  static  unsigned long long aesl_llvm_cbe_1292_count = 0;
  unsigned int llvm_cbe_tmp__455;
  static  unsigned long long aesl_llvm_cbe_1293_count = 0;
  unsigned long long llvm_cbe_tmp__456;
  static  unsigned long long aesl_llvm_cbe_1294_count = 0;
  float *llvm_cbe_tmp__457;
  static  unsigned long long aesl_llvm_cbe_1295_count = 0;
  float llvm_cbe_tmp__458;
  static  unsigned long long aesl_llvm_cbe_1296_count = 0;
  float *llvm_cbe_tmp__459;
  static  unsigned long long aesl_llvm_cbe_1297_count = 0;
  static  unsigned long long aesl_llvm_cbe_1298_count = 0;
  float *llvm_cbe_tmp__460;
  static  unsigned long long aesl_llvm_cbe_1299_count = 0;
  float llvm_cbe_tmp__461;
  static  unsigned long long aesl_llvm_cbe_1300_count = 0;
  static  unsigned long long aesl_llvm_cbe_1301_count = 0;
  static  unsigned long long aesl_llvm_cbe_1302_count = 0;
  static  unsigned long long aesl_llvm_cbe_1303_count = 0;
  static  unsigned long long aesl_llvm_cbe_1304_count = 0;
  static  unsigned long long aesl_llvm_cbe_1305_count = 0;
  static  unsigned long long aesl_llvm_cbe_1306_count = 0;
  static  unsigned long long aesl_llvm_cbe_1307_count = 0;
  static  unsigned long long aesl_llvm_cbe_1308_count = 0;
  static  unsigned long long aesl_llvm_cbe_1309_count = 0;
  static  unsigned long long aesl_llvm_cbe_1310_count = 0;
  static  unsigned long long aesl_llvm_cbe_1311_count = 0;
  static  unsigned long long aesl_llvm_cbe_1312_count = 0;
  static  unsigned long long aesl_llvm_cbe_1313_count = 0;
  static  unsigned long long aesl_llvm_cbe_1314_count = 0;
  static  unsigned long long aesl_llvm_cbe_1315_count = 0;
  static  unsigned long long aesl_llvm_cbe_1316_count = 0;
  static  unsigned long long aesl_llvm_cbe_1317_count = 0;
  static  unsigned long long aesl_llvm_cbe_1318_count = 0;
  static  unsigned long long aesl_llvm_cbe_1319_count = 0;
  unsigned int llvm_cbe_tmp__462;
  static  unsigned long long aesl_llvm_cbe_1320_count = 0;
  unsigned long long llvm_cbe_tmp__463;
  static  unsigned long long aesl_llvm_cbe_1321_count = 0;
  float *llvm_cbe_tmp__464;
  static  unsigned long long aesl_llvm_cbe_1322_count = 0;
  float llvm_cbe_tmp__465;
  static  unsigned long long aesl_llvm_cbe_1323_count = 0;
  float *llvm_cbe_tmp__466;
  static  unsigned long long aesl_llvm_cbe_1324_count = 0;
  static  unsigned long long aesl_llvm_cbe_1325_count = 0;
  float *llvm_cbe_tmp__467;
  static  unsigned long long aesl_llvm_cbe_1326_count = 0;
  float llvm_cbe_tmp__468;
  static  unsigned long long aesl_llvm_cbe_1327_count = 0;
  static  unsigned long long aesl_llvm_cbe_1328_count = 0;
  static  unsigned long long aesl_llvm_cbe_1329_count = 0;
  static  unsigned long long aesl_llvm_cbe_1330_count = 0;
  static  unsigned long long aesl_llvm_cbe_1331_count = 0;
  static  unsigned long long aesl_llvm_cbe_1332_count = 0;
  static  unsigned long long aesl_llvm_cbe_1333_count = 0;
  static  unsigned long long aesl_llvm_cbe_1334_count = 0;
  static  unsigned long long aesl_llvm_cbe_1335_count = 0;
  static  unsigned long long aesl_llvm_cbe_1336_count = 0;
  static  unsigned long long aesl_llvm_cbe_1337_count = 0;
  static  unsigned long long aesl_llvm_cbe_1338_count = 0;
  static  unsigned long long aesl_llvm_cbe_1339_count = 0;
  static  unsigned long long aesl_llvm_cbe_1340_count = 0;
  static  unsigned long long aesl_llvm_cbe_1341_count = 0;
  static  unsigned long long aesl_llvm_cbe_1342_count = 0;
  static  unsigned long long aesl_llvm_cbe_1343_count = 0;
  static  unsigned long long aesl_llvm_cbe_1344_count = 0;
  static  unsigned long long aesl_llvm_cbe_1345_count = 0;
  static  unsigned long long aesl_llvm_cbe_1346_count = 0;
  unsigned int llvm_cbe_tmp__469;
  static  unsigned long long aesl_llvm_cbe_1347_count = 0;
  unsigned long long llvm_cbe_tmp__470;
  static  unsigned long long aesl_llvm_cbe_1348_count = 0;
  float *llvm_cbe_tmp__471;
  static  unsigned long long aesl_llvm_cbe_1349_count = 0;
  float llvm_cbe_tmp__472;
  static  unsigned long long aesl_llvm_cbe_1350_count = 0;
  float *llvm_cbe_tmp__473;
  static  unsigned long long aesl_llvm_cbe_1351_count = 0;
  static  unsigned long long aesl_llvm_cbe_1352_count = 0;
  float *llvm_cbe_tmp__474;
  static  unsigned long long aesl_llvm_cbe_1353_count = 0;
  float llvm_cbe_tmp__475;
  static  unsigned long long aesl_llvm_cbe_1354_count = 0;
  static  unsigned long long aesl_llvm_cbe_1355_count = 0;
  static  unsigned long long aesl_llvm_cbe_1356_count = 0;
  static  unsigned long long aesl_llvm_cbe_1357_count = 0;
  static  unsigned long long aesl_llvm_cbe_1358_count = 0;
  static  unsigned long long aesl_llvm_cbe_1359_count = 0;
  static  unsigned long long aesl_llvm_cbe_1360_count = 0;
  static  unsigned long long aesl_llvm_cbe_1361_count = 0;
  static  unsigned long long aesl_llvm_cbe_1362_count = 0;
  static  unsigned long long aesl_llvm_cbe_1363_count = 0;
  static  unsigned long long aesl_llvm_cbe_1364_count = 0;
  static  unsigned long long aesl_llvm_cbe_1365_count = 0;
  static  unsigned long long aesl_llvm_cbe_1366_count = 0;
  static  unsigned long long aesl_llvm_cbe_1367_count = 0;
  static  unsigned long long aesl_llvm_cbe_1368_count = 0;
  static  unsigned long long aesl_llvm_cbe_1369_count = 0;
  static  unsigned long long aesl_llvm_cbe_1370_count = 0;
  static  unsigned long long aesl_llvm_cbe_1371_count = 0;
  static  unsigned long long aesl_llvm_cbe_1372_count = 0;
  static  unsigned long long aesl_llvm_cbe_1373_count = 0;
  unsigned int llvm_cbe_tmp__476;
  static  unsigned long long aesl_llvm_cbe_1374_count = 0;
  unsigned long long llvm_cbe_tmp__477;
  static  unsigned long long aesl_llvm_cbe_1375_count = 0;
  float *llvm_cbe_tmp__478;
  static  unsigned long long aesl_llvm_cbe_1376_count = 0;
  float llvm_cbe_tmp__479;
  static  unsigned long long aesl_llvm_cbe_1377_count = 0;
  float *llvm_cbe_tmp__480;
  static  unsigned long long aesl_llvm_cbe_1378_count = 0;
  static  unsigned long long aesl_llvm_cbe_1379_count = 0;
  float *llvm_cbe_tmp__481;
  static  unsigned long long aesl_llvm_cbe_1380_count = 0;
  float llvm_cbe_tmp__482;
  static  unsigned long long aesl_llvm_cbe_1381_count = 0;
  static  unsigned long long aesl_llvm_cbe_1382_count = 0;
  static  unsigned long long aesl_llvm_cbe_1383_count = 0;
  static  unsigned long long aesl_llvm_cbe_1384_count = 0;
  static  unsigned long long aesl_llvm_cbe_1385_count = 0;
  static  unsigned long long aesl_llvm_cbe_1386_count = 0;
  static  unsigned long long aesl_llvm_cbe_1387_count = 0;
  static  unsigned long long aesl_llvm_cbe_1388_count = 0;
  static  unsigned long long aesl_llvm_cbe_1389_count = 0;
  static  unsigned long long aesl_llvm_cbe_1390_count = 0;
  static  unsigned long long aesl_llvm_cbe_1391_count = 0;
  static  unsigned long long aesl_llvm_cbe_1392_count = 0;
  static  unsigned long long aesl_llvm_cbe_1393_count = 0;
  static  unsigned long long aesl_llvm_cbe_1394_count = 0;
  static  unsigned long long aesl_llvm_cbe_1395_count = 0;
  static  unsigned long long aesl_llvm_cbe_1396_count = 0;
  static  unsigned long long aesl_llvm_cbe_1397_count = 0;
  static  unsigned long long aesl_llvm_cbe_1398_count = 0;
  static  unsigned long long aesl_llvm_cbe_1399_count = 0;
  static  unsigned long long aesl_llvm_cbe_1400_count = 0;
  unsigned int llvm_cbe_tmp__483;
  static  unsigned long long aesl_llvm_cbe_1401_count = 0;
  unsigned long long llvm_cbe_tmp__484;
  static  unsigned long long aesl_llvm_cbe_1402_count = 0;
  float *llvm_cbe_tmp__485;
  static  unsigned long long aesl_llvm_cbe_1403_count = 0;
  float llvm_cbe_tmp__486;
  static  unsigned long long aesl_llvm_cbe_1404_count = 0;
  float *llvm_cbe_tmp__487;
  static  unsigned long long aesl_llvm_cbe_1405_count = 0;
  static  unsigned long long aesl_llvm_cbe_1406_count = 0;
  float *llvm_cbe_tmp__488;
  static  unsigned long long aesl_llvm_cbe_1407_count = 0;
  float llvm_cbe_tmp__489;
  static  unsigned long long aesl_llvm_cbe_1408_count = 0;
  static  unsigned long long aesl_llvm_cbe_1409_count = 0;
  static  unsigned long long aesl_llvm_cbe_1410_count = 0;
  static  unsigned long long aesl_llvm_cbe_1411_count = 0;
  static  unsigned long long aesl_llvm_cbe_1412_count = 0;
  static  unsigned long long aesl_llvm_cbe_1413_count = 0;
  static  unsigned long long aesl_llvm_cbe_1414_count = 0;
  static  unsigned long long aesl_llvm_cbe_1415_count = 0;
  static  unsigned long long aesl_llvm_cbe_1416_count = 0;
  static  unsigned long long aesl_llvm_cbe_1417_count = 0;
  static  unsigned long long aesl_llvm_cbe_1418_count = 0;
  static  unsigned long long aesl_llvm_cbe_1419_count = 0;
  static  unsigned long long aesl_llvm_cbe_1420_count = 0;
  static  unsigned long long aesl_llvm_cbe_1421_count = 0;
  static  unsigned long long aesl_llvm_cbe_1422_count = 0;
  static  unsigned long long aesl_llvm_cbe_1423_count = 0;
  static  unsigned long long aesl_llvm_cbe_1424_count = 0;
  static  unsigned long long aesl_llvm_cbe_1425_count = 0;
  static  unsigned long long aesl_llvm_cbe_1426_count = 0;
  static  unsigned long long aesl_llvm_cbe_1427_count = 0;
  unsigned int llvm_cbe_tmp__490;
  static  unsigned long long aesl_llvm_cbe_1428_count = 0;
  unsigned long long llvm_cbe_tmp__491;
  static  unsigned long long aesl_llvm_cbe_1429_count = 0;
  float *llvm_cbe_tmp__492;
  static  unsigned long long aesl_llvm_cbe_1430_count = 0;
  float llvm_cbe_tmp__493;
  static  unsigned long long aesl_llvm_cbe_1431_count = 0;
  float *llvm_cbe_tmp__494;
  static  unsigned long long aesl_llvm_cbe_1432_count = 0;
  static  unsigned long long aesl_llvm_cbe_1433_count = 0;
  float *llvm_cbe_tmp__495;
  static  unsigned long long aesl_llvm_cbe_1434_count = 0;
  float llvm_cbe_tmp__496;
  static  unsigned long long aesl_llvm_cbe_1435_count = 0;
  static  unsigned long long aesl_llvm_cbe_1436_count = 0;
  static  unsigned long long aesl_llvm_cbe_1437_count = 0;
  static  unsigned long long aesl_llvm_cbe_1438_count = 0;
  static  unsigned long long aesl_llvm_cbe_1439_count = 0;
  static  unsigned long long aesl_llvm_cbe_1440_count = 0;
  static  unsigned long long aesl_llvm_cbe_1441_count = 0;
  static  unsigned long long aesl_llvm_cbe_1442_count = 0;
  static  unsigned long long aesl_llvm_cbe_1443_count = 0;
  static  unsigned long long aesl_llvm_cbe_1444_count = 0;
  static  unsigned long long aesl_llvm_cbe_1445_count = 0;
  static  unsigned long long aesl_llvm_cbe_1446_count = 0;
  static  unsigned long long aesl_llvm_cbe_1447_count = 0;
  static  unsigned long long aesl_llvm_cbe_1448_count = 0;
  static  unsigned long long aesl_llvm_cbe_1449_count = 0;
  static  unsigned long long aesl_llvm_cbe_1450_count = 0;
  static  unsigned long long aesl_llvm_cbe_1451_count = 0;
  static  unsigned long long aesl_llvm_cbe_1452_count = 0;
  static  unsigned long long aesl_llvm_cbe_1453_count = 0;
  static  unsigned long long aesl_llvm_cbe_1454_count = 0;
  unsigned int llvm_cbe_tmp__497;
  static  unsigned long long aesl_llvm_cbe_1455_count = 0;
  unsigned long long llvm_cbe_tmp__498;
  static  unsigned long long aesl_llvm_cbe_1456_count = 0;
  float *llvm_cbe_tmp__499;
  static  unsigned long long aesl_llvm_cbe_1457_count = 0;
  float llvm_cbe_tmp__500;
  static  unsigned long long aesl_llvm_cbe_1458_count = 0;
  float *llvm_cbe_tmp__501;
  static  unsigned long long aesl_llvm_cbe_1459_count = 0;
  static  unsigned long long aesl_llvm_cbe_1460_count = 0;
  float *llvm_cbe_tmp__502;
  static  unsigned long long aesl_llvm_cbe_1461_count = 0;
  float llvm_cbe_tmp__503;
  static  unsigned long long aesl_llvm_cbe_1462_count = 0;
  static  unsigned long long aesl_llvm_cbe_1463_count = 0;
  static  unsigned long long aesl_llvm_cbe_1464_count = 0;
  static  unsigned long long aesl_llvm_cbe_1465_count = 0;
  static  unsigned long long aesl_llvm_cbe_1466_count = 0;
  static  unsigned long long aesl_llvm_cbe_1467_count = 0;
  static  unsigned long long aesl_llvm_cbe_1468_count = 0;
  static  unsigned long long aesl_llvm_cbe_1469_count = 0;
  static  unsigned long long aesl_llvm_cbe_1470_count = 0;
  static  unsigned long long aesl_llvm_cbe_1471_count = 0;
  static  unsigned long long aesl_llvm_cbe_1472_count = 0;
  static  unsigned long long aesl_llvm_cbe_1473_count = 0;
  static  unsigned long long aesl_llvm_cbe_1474_count = 0;
  static  unsigned long long aesl_llvm_cbe_1475_count = 0;
  static  unsigned long long aesl_llvm_cbe_1476_count = 0;
  static  unsigned long long aesl_llvm_cbe_1477_count = 0;
  static  unsigned long long aesl_llvm_cbe_1478_count = 0;
  static  unsigned long long aesl_llvm_cbe_1479_count = 0;
  static  unsigned long long aesl_llvm_cbe_1480_count = 0;
  static  unsigned long long aesl_llvm_cbe_1481_count = 0;
  unsigned int llvm_cbe_tmp__504;
  static  unsigned long long aesl_llvm_cbe_1482_count = 0;
  unsigned long long llvm_cbe_tmp__505;
  static  unsigned long long aesl_llvm_cbe_1483_count = 0;
  float *llvm_cbe_tmp__506;
  static  unsigned long long aesl_llvm_cbe_1484_count = 0;
  float llvm_cbe_tmp__507;
  static  unsigned long long aesl_llvm_cbe_1485_count = 0;
  float *llvm_cbe_tmp__508;
  static  unsigned long long aesl_llvm_cbe_1486_count = 0;
  static  unsigned long long aesl_llvm_cbe_1487_count = 0;
  float *llvm_cbe_tmp__509;
  static  unsigned long long aesl_llvm_cbe_1488_count = 0;
  float llvm_cbe_tmp__510;
  static  unsigned long long aesl_llvm_cbe_1489_count = 0;
  static  unsigned long long aesl_llvm_cbe_1490_count = 0;
  static  unsigned long long aesl_llvm_cbe_1491_count = 0;
  static  unsigned long long aesl_llvm_cbe_1492_count = 0;
  static  unsigned long long aesl_llvm_cbe_1493_count = 0;
  static  unsigned long long aesl_llvm_cbe_1494_count = 0;
  static  unsigned long long aesl_llvm_cbe_1495_count = 0;
  static  unsigned long long aesl_llvm_cbe_1496_count = 0;
  static  unsigned long long aesl_llvm_cbe_1497_count = 0;
  static  unsigned long long aesl_llvm_cbe_1498_count = 0;
  static  unsigned long long aesl_llvm_cbe_1499_count = 0;
  static  unsigned long long aesl_llvm_cbe_1500_count = 0;
  static  unsigned long long aesl_llvm_cbe_1501_count = 0;
  static  unsigned long long aesl_llvm_cbe_1502_count = 0;
  static  unsigned long long aesl_llvm_cbe_1503_count = 0;
  static  unsigned long long aesl_llvm_cbe_1504_count = 0;
  static  unsigned long long aesl_llvm_cbe_1505_count = 0;
  static  unsigned long long aesl_llvm_cbe_1506_count = 0;
  static  unsigned long long aesl_llvm_cbe_1507_count = 0;
  static  unsigned long long aesl_llvm_cbe_1508_count = 0;
  unsigned int llvm_cbe_tmp__511;
  static  unsigned long long aesl_llvm_cbe_1509_count = 0;
  static  unsigned long long aesl_llvm_cbe_1510_count = 0;
  static  unsigned long long aesl_llvm_cbe_1511_count = 0;
  static  unsigned long long aesl_llvm_cbe_1512_count = 0;
  static  unsigned long long aesl_llvm_cbe_1513_count = 0;
  static  unsigned long long aesl_llvm_cbe_1514_count = 0;
  static  unsigned long long aesl_llvm_cbe_1515_count = 0;
  static  unsigned long long aesl_llvm_cbe_1516_count = 0;
  static  unsigned long long aesl_llvm_cbe_1517_count = 0;
  static  unsigned long long aesl_llvm_cbe_1518_count = 0;
  static  unsigned long long aesl_llvm_cbe_1519_count = 0;
  static  unsigned long long aesl_llvm_cbe_1520_count = 0;
  static  unsigned long long aesl_llvm_cbe_1521_count = 0;
  static  unsigned long long aesl_llvm_cbe_1522_count = 0;
  static  unsigned long long aesl_llvm_cbe_1523_count = 0;
  static  unsigned long long aesl_llvm_cbe_1524_count = 0;
  static  unsigned long long aesl_llvm_cbe_1525_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond18_count = 0;
  static  unsigned long long aesl_llvm_cbe_1526_count = 0;
  static  unsigned long long aesl_llvm_cbe_1527_count = 0;
  unsigned int llvm_cbe_tmp__512;
  static  unsigned long long aesl_llvm_cbe_1528_count = 0;
  static  unsigned long long aesl_llvm_cbe_1529_count = 0;
  static  unsigned long long aesl_llvm_cbe_1530_count = 0;
  static  unsigned long long aesl_llvm_cbe_1531_count = 0;
  static  unsigned long long aesl_llvm_cbe_1532_count = 0;
  static  unsigned long long aesl_llvm_cbe_1533_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond_count = 0;
  bool llvm_cbe_or_2e_cond;
  static  unsigned long long aesl_llvm_cbe_1534_count = 0;
  static  unsigned long long aesl_llvm_cbe_puts7_count = 0;
  unsigned int llvm_cbe_puts7;
  static  unsigned long long aesl_llvm_cbe_1535_count = 0;
  static  unsigned long long aesl_llvm_cbe_1536_count = 0;
  static  unsigned long long aesl_llvm_cbe_1537_count = 0;
  static  unsigned long long aesl_llvm_cbe_1538_count = 0;
  static  unsigned long long aesl_llvm_cbe_1539_count = 0;
  static  unsigned long long aesl_llvm_cbe_1540_count = 0;
  static  unsigned long long aesl_llvm_cbe_1541_count = 0;
  static  unsigned long long aesl_llvm_cbe_1542_count = 0;
  static  unsigned long long aesl_llvm_cbe_1543_count = 0;
  static  unsigned long long aesl_llvm_cbe_1544_count = 0;
  static  unsigned long long aesl_llvm_cbe_1545_count = 0;
  static  unsigned long long aesl_llvm_cbe_1546_count = 0;
  static  unsigned long long aesl_llvm_cbe_1547_count = 0;
  static  unsigned long long aesl_llvm_cbe_1548_count = 0;
  static  unsigned long long aesl_llvm_cbe_1549_count = 0;
  static  unsigned long long aesl_llvm_cbe_1550_count = 0;
  static  unsigned long long aesl_llvm_cbe_1551_count = 0;
  static  unsigned long long aesl_llvm_cbe_1552_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge112_count = 0;
  unsigned int llvm_cbe_storemerge112;
  unsigned int llvm_cbe_storemerge112__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_putchar8_count = 0;
  unsigned int llvm_cbe_putchar8;
  static  unsigned long long aesl_llvm_cbe_1553_count = 0;
  static  unsigned long long aesl_llvm_cbe_1554_count = 0;
  static  unsigned long long aesl_llvm_cbe_1555_count = 0;
  static  unsigned long long aesl_llvm_cbe_1556_count = 0;
  static  unsigned long long aesl_llvm_cbe_1557_count = 0;
  static  unsigned long long aesl_llvm_cbe_1558_count = 0;
  static  unsigned long long aesl_llvm_cbe_1559_count = 0;
  static  unsigned long long aesl_llvm_cbe_1560_count = 0;
  static  unsigned long long aesl_llvm_cbe_1561_count = 0;
  static  unsigned long long aesl_llvm_cbe_1562_count = 0;
  static  unsigned long long aesl_llvm_cbe_1563_count = 0;
  static  unsigned long long aesl_llvm_cbe_1564_count = 0;
  static  unsigned long long aesl_llvm_cbe_1565_count = 0;
  static  unsigned long long aesl_llvm_cbe_1566_count = 0;
  static  unsigned long long aesl_llvm_cbe_1567_count = 0;
  static  unsigned long long aesl_llvm_cbe_1568_count = 0;
  static  unsigned long long aesl_llvm_cbe_1569_count = 0;
  static  unsigned long long aesl_llvm_cbe_1570_count = 0;
  unsigned int llvm_cbe_tmp__513;
  static  unsigned long long aesl_llvm_cbe_1571_count = 0;
  unsigned long long llvm_cbe_tmp__514;
  static  unsigned long long aesl_llvm_cbe_1572_count = 0;
  float *llvm_cbe_tmp__515;
  static  unsigned long long aesl_llvm_cbe_1573_count = 0;
  float llvm_cbe_tmp__516;
  static  unsigned long long aesl_llvm_cbe_1574_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge10_count = 0;
  float llvm_cbe_storemerge10;
  static  unsigned long long aesl_llvm_cbe_1575_count = 0;
  static  unsigned long long aesl_llvm_cbe_1576_count = 0;
  double llvm_cbe_tmp__517;
  static  unsigned long long aesl_llvm_cbe_1577_count = 0;
  unsigned int llvm_cbe_tmp__518;
  static  unsigned long long aesl_llvm_cbe_1578_count = 0;
  static  unsigned long long aesl_llvm_cbe_1579_count = 0;
  static  unsigned long long aesl_llvm_cbe_1580_count = 0;
  static  unsigned long long aesl_llvm_cbe_1581_count = 0;
  static  unsigned long long aesl_llvm_cbe_1582_count = 0;
  static  unsigned long long aesl_llvm_cbe_1583_count = 0;
  static  unsigned long long aesl_llvm_cbe_1584_count = 0;
  static  unsigned long long aesl_llvm_cbe_1585_count = 0;
  static  unsigned long long aesl_llvm_cbe_1586_count = 0;
  static  unsigned long long aesl_llvm_cbe_1587_count = 0;
  static  unsigned long long aesl_llvm_cbe_1588_count = 0;
  static  unsigned long long aesl_llvm_cbe_1589_count = 0;
  static  unsigned long long aesl_llvm_cbe_1590_count = 0;
  static  unsigned long long aesl_llvm_cbe_1591_count = 0;
  static  unsigned long long aesl_llvm_cbe_1592_count = 0;
  static  unsigned long long aesl_llvm_cbe_1593_count = 0;
  static  unsigned long long aesl_llvm_cbe_1594_count = 0;
  static  unsigned long long aesl_llvm_cbe_1595_count = 0;
  unsigned int llvm_cbe_tmp__519;
  static  unsigned long long aesl_llvm_cbe_1596_count = 0;
  unsigned long long llvm_cbe_tmp__520;
  static  unsigned long long aesl_llvm_cbe_1597_count = 0;
  float *llvm_cbe_tmp__521;
  static  unsigned long long aesl_llvm_cbe_1598_count = 0;
  float llvm_cbe_tmp__522;
  static  unsigned long long aesl_llvm_cbe_1599_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge10_2e_1_count = 0;
  float llvm_cbe_storemerge10_2e_1;
  static  unsigned long long aesl_llvm_cbe_1600_count = 0;
  static  unsigned long long aesl_llvm_cbe_1601_count = 0;
  double llvm_cbe_tmp__523;
  static  unsigned long long aesl_llvm_cbe_1602_count = 0;
  unsigned int llvm_cbe_tmp__524;
  static  unsigned long long aesl_llvm_cbe_1603_count = 0;
  static  unsigned long long aesl_llvm_cbe_1604_count = 0;
  static  unsigned long long aesl_llvm_cbe_1605_count = 0;
  static  unsigned long long aesl_llvm_cbe_1606_count = 0;
  static  unsigned long long aesl_llvm_cbe_1607_count = 0;
  static  unsigned long long aesl_llvm_cbe_1608_count = 0;
  static  unsigned long long aesl_llvm_cbe_1609_count = 0;
  static  unsigned long long aesl_llvm_cbe_1610_count = 0;
  static  unsigned long long aesl_llvm_cbe_1611_count = 0;
  static  unsigned long long aesl_llvm_cbe_1612_count = 0;
  static  unsigned long long aesl_llvm_cbe_1613_count = 0;
  static  unsigned long long aesl_llvm_cbe_1614_count = 0;
  static  unsigned long long aesl_llvm_cbe_1615_count = 0;
  static  unsigned long long aesl_llvm_cbe_1616_count = 0;
  static  unsigned long long aesl_llvm_cbe_1617_count = 0;
  static  unsigned long long aesl_llvm_cbe_1618_count = 0;
  static  unsigned long long aesl_llvm_cbe_1619_count = 0;
  static  unsigned long long aesl_llvm_cbe_1620_count = 0;
  unsigned int llvm_cbe_tmp__525;
  static  unsigned long long aesl_llvm_cbe_1621_count = 0;
  unsigned long long llvm_cbe_tmp__526;
  static  unsigned long long aesl_llvm_cbe_1622_count = 0;
  float *llvm_cbe_tmp__527;
  static  unsigned long long aesl_llvm_cbe_1623_count = 0;
  float llvm_cbe_tmp__528;
  static  unsigned long long aesl_llvm_cbe_1624_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge10_2e_2_count = 0;
  float llvm_cbe_storemerge10_2e_2;
  static  unsigned long long aesl_llvm_cbe_1625_count = 0;
  static  unsigned long long aesl_llvm_cbe_1626_count = 0;
  double llvm_cbe_tmp__529;
  static  unsigned long long aesl_llvm_cbe_1627_count = 0;
  unsigned int llvm_cbe_tmp__530;
  static  unsigned long long aesl_llvm_cbe_1628_count = 0;
  static  unsigned long long aesl_llvm_cbe_1629_count = 0;
  static  unsigned long long aesl_llvm_cbe_1630_count = 0;
  static  unsigned long long aesl_llvm_cbe_1631_count = 0;
  static  unsigned long long aesl_llvm_cbe_1632_count = 0;
  static  unsigned long long aesl_llvm_cbe_1633_count = 0;
  static  unsigned long long aesl_llvm_cbe_1634_count = 0;
  static  unsigned long long aesl_llvm_cbe_1635_count = 0;
  static  unsigned long long aesl_llvm_cbe_1636_count = 0;
  static  unsigned long long aesl_llvm_cbe_1637_count = 0;
  static  unsigned long long aesl_llvm_cbe_1638_count = 0;
  static  unsigned long long aesl_llvm_cbe_1639_count = 0;
  static  unsigned long long aesl_llvm_cbe_1640_count = 0;
  static  unsigned long long aesl_llvm_cbe_1641_count = 0;
  static  unsigned long long aesl_llvm_cbe_1642_count = 0;
  static  unsigned long long aesl_llvm_cbe_1643_count = 0;
  static  unsigned long long aesl_llvm_cbe_1644_count = 0;
  static  unsigned long long aesl_llvm_cbe_1645_count = 0;
  unsigned int llvm_cbe_tmp__531;
  static  unsigned long long aesl_llvm_cbe_1646_count = 0;
  unsigned long long llvm_cbe_tmp__532;
  static  unsigned long long aesl_llvm_cbe_1647_count = 0;
  float *llvm_cbe_tmp__533;
  static  unsigned long long aesl_llvm_cbe_1648_count = 0;
  float llvm_cbe_tmp__534;
  static  unsigned long long aesl_llvm_cbe_1649_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge10_2e_3_count = 0;
  float llvm_cbe_storemerge10_2e_3;
  static  unsigned long long aesl_llvm_cbe_1650_count = 0;
  static  unsigned long long aesl_llvm_cbe_1651_count = 0;
  double llvm_cbe_tmp__535;
  static  unsigned long long aesl_llvm_cbe_1652_count = 0;
  unsigned int llvm_cbe_tmp__536;
  static  unsigned long long aesl_llvm_cbe_1653_count = 0;
  static  unsigned long long aesl_llvm_cbe_1654_count = 0;
  static  unsigned long long aesl_llvm_cbe_1655_count = 0;
  static  unsigned long long aesl_llvm_cbe_1656_count = 0;
  static  unsigned long long aesl_llvm_cbe_1657_count = 0;
  static  unsigned long long aesl_llvm_cbe_1658_count = 0;
  static  unsigned long long aesl_llvm_cbe_1659_count = 0;
  static  unsigned long long aesl_llvm_cbe_1660_count = 0;
  static  unsigned long long aesl_llvm_cbe_1661_count = 0;
  static  unsigned long long aesl_llvm_cbe_1662_count = 0;
  static  unsigned long long aesl_llvm_cbe_1663_count = 0;
  static  unsigned long long aesl_llvm_cbe_1664_count = 0;
  static  unsigned long long aesl_llvm_cbe_1665_count = 0;
  static  unsigned long long aesl_llvm_cbe_1666_count = 0;
  static  unsigned long long aesl_llvm_cbe_1667_count = 0;
  static  unsigned long long aesl_llvm_cbe_1668_count = 0;
  static  unsigned long long aesl_llvm_cbe_1669_count = 0;
  static  unsigned long long aesl_llvm_cbe_1670_count = 0;
  unsigned int llvm_cbe_tmp__537;
  static  unsigned long long aesl_llvm_cbe_1671_count = 0;
  unsigned long long llvm_cbe_tmp__538;
  static  unsigned long long aesl_llvm_cbe_1672_count = 0;
  float *llvm_cbe_tmp__539;
  static  unsigned long long aesl_llvm_cbe_1673_count = 0;
  float llvm_cbe_tmp__540;
  static  unsigned long long aesl_llvm_cbe_1674_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge10_2e_4_count = 0;
  float llvm_cbe_storemerge10_2e_4;
  static  unsigned long long aesl_llvm_cbe_1675_count = 0;
  static  unsigned long long aesl_llvm_cbe_1676_count = 0;
  double llvm_cbe_tmp__541;
  static  unsigned long long aesl_llvm_cbe_1677_count = 0;
  unsigned int llvm_cbe_tmp__542;
  static  unsigned long long aesl_llvm_cbe_1678_count = 0;
  static  unsigned long long aesl_llvm_cbe_1679_count = 0;
  static  unsigned long long aesl_llvm_cbe_1680_count = 0;
  static  unsigned long long aesl_llvm_cbe_1681_count = 0;
  static  unsigned long long aesl_llvm_cbe_1682_count = 0;
  static  unsigned long long aesl_llvm_cbe_1683_count = 0;
  static  unsigned long long aesl_llvm_cbe_1684_count = 0;
  static  unsigned long long aesl_llvm_cbe_1685_count = 0;
  static  unsigned long long aesl_llvm_cbe_1686_count = 0;
  static  unsigned long long aesl_llvm_cbe_1687_count = 0;
  static  unsigned long long aesl_llvm_cbe_1688_count = 0;
  static  unsigned long long aesl_llvm_cbe_1689_count = 0;
  static  unsigned long long aesl_llvm_cbe_1690_count = 0;
  static  unsigned long long aesl_llvm_cbe_1691_count = 0;
  static  unsigned long long aesl_llvm_cbe_1692_count = 0;
  static  unsigned long long aesl_llvm_cbe_1693_count = 0;
  static  unsigned long long aesl_llvm_cbe_1694_count = 0;
  static  unsigned long long aesl_llvm_cbe_1695_count = 0;
  unsigned int llvm_cbe_tmp__543;
  static  unsigned long long aesl_llvm_cbe_1696_count = 0;
  unsigned long long llvm_cbe_tmp__544;
  static  unsigned long long aesl_llvm_cbe_1697_count = 0;
  float *llvm_cbe_tmp__545;
  static  unsigned long long aesl_llvm_cbe_1698_count = 0;
  float llvm_cbe_tmp__546;
  static  unsigned long long aesl_llvm_cbe_1699_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge10_2e_5_count = 0;
  float llvm_cbe_storemerge10_2e_5;
  static  unsigned long long aesl_llvm_cbe_1700_count = 0;
  static  unsigned long long aesl_llvm_cbe_1701_count = 0;
  double llvm_cbe_tmp__547;
  static  unsigned long long aesl_llvm_cbe_1702_count = 0;
  unsigned int llvm_cbe_tmp__548;
  static  unsigned long long aesl_llvm_cbe_1703_count = 0;
  static  unsigned long long aesl_llvm_cbe_1704_count = 0;
  static  unsigned long long aesl_llvm_cbe_1705_count = 0;
  static  unsigned long long aesl_llvm_cbe_1706_count = 0;
  static  unsigned long long aesl_llvm_cbe_1707_count = 0;
  static  unsigned long long aesl_llvm_cbe_1708_count = 0;
  static  unsigned long long aesl_llvm_cbe_1709_count = 0;
  static  unsigned long long aesl_llvm_cbe_1710_count = 0;
  static  unsigned long long aesl_llvm_cbe_1711_count = 0;
  static  unsigned long long aesl_llvm_cbe_1712_count = 0;
  static  unsigned long long aesl_llvm_cbe_1713_count = 0;
  static  unsigned long long aesl_llvm_cbe_1714_count = 0;
  static  unsigned long long aesl_llvm_cbe_1715_count = 0;
  static  unsigned long long aesl_llvm_cbe_1716_count = 0;
  static  unsigned long long aesl_llvm_cbe_1717_count = 0;
  static  unsigned long long aesl_llvm_cbe_1718_count = 0;
  static  unsigned long long aesl_llvm_cbe_1719_count = 0;
  static  unsigned long long aesl_llvm_cbe_1720_count = 0;
  unsigned int llvm_cbe_tmp__549;
  static  unsigned long long aesl_llvm_cbe_1721_count = 0;
  unsigned long long llvm_cbe_tmp__550;
  static  unsigned long long aesl_llvm_cbe_1722_count = 0;
  float *llvm_cbe_tmp__551;
  static  unsigned long long aesl_llvm_cbe_1723_count = 0;
  float llvm_cbe_tmp__552;
  static  unsigned long long aesl_llvm_cbe_1724_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge10_2e_6_count = 0;
  float llvm_cbe_storemerge10_2e_6;
  static  unsigned long long aesl_llvm_cbe_1725_count = 0;
  static  unsigned long long aesl_llvm_cbe_1726_count = 0;
  double llvm_cbe_tmp__553;
  static  unsigned long long aesl_llvm_cbe_1727_count = 0;
  unsigned int llvm_cbe_tmp__554;
  static  unsigned long long aesl_llvm_cbe_1728_count = 0;
  static  unsigned long long aesl_llvm_cbe_1729_count = 0;
  static  unsigned long long aesl_llvm_cbe_1730_count = 0;
  static  unsigned long long aesl_llvm_cbe_1731_count = 0;
  static  unsigned long long aesl_llvm_cbe_1732_count = 0;
  static  unsigned long long aesl_llvm_cbe_1733_count = 0;
  static  unsigned long long aesl_llvm_cbe_1734_count = 0;
  static  unsigned long long aesl_llvm_cbe_1735_count = 0;
  static  unsigned long long aesl_llvm_cbe_1736_count = 0;
  static  unsigned long long aesl_llvm_cbe_1737_count = 0;
  static  unsigned long long aesl_llvm_cbe_1738_count = 0;
  static  unsigned long long aesl_llvm_cbe_1739_count = 0;
  static  unsigned long long aesl_llvm_cbe_1740_count = 0;
  static  unsigned long long aesl_llvm_cbe_1741_count = 0;
  static  unsigned long long aesl_llvm_cbe_1742_count = 0;
  static  unsigned long long aesl_llvm_cbe_1743_count = 0;
  static  unsigned long long aesl_llvm_cbe_1744_count = 0;
  static  unsigned long long aesl_llvm_cbe_1745_count = 0;
  unsigned int llvm_cbe_tmp__555;
  static  unsigned long long aesl_llvm_cbe_1746_count = 0;
  unsigned long long llvm_cbe_tmp__556;
  static  unsigned long long aesl_llvm_cbe_1747_count = 0;
  float *llvm_cbe_tmp__557;
  static  unsigned long long aesl_llvm_cbe_1748_count = 0;
  float llvm_cbe_tmp__558;
  static  unsigned long long aesl_llvm_cbe_1749_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge10_2e_7_count = 0;
  float llvm_cbe_storemerge10_2e_7;
  static  unsigned long long aesl_llvm_cbe_1750_count = 0;
  static  unsigned long long aesl_llvm_cbe_1751_count = 0;
  double llvm_cbe_tmp__559;
  static  unsigned long long aesl_llvm_cbe_1752_count = 0;
  unsigned int llvm_cbe_tmp__560;
  static  unsigned long long aesl_llvm_cbe_1753_count = 0;
  static  unsigned long long aesl_llvm_cbe_1754_count = 0;
  static  unsigned long long aesl_llvm_cbe_1755_count = 0;
  static  unsigned long long aesl_llvm_cbe_1756_count = 0;
  static  unsigned long long aesl_llvm_cbe_1757_count = 0;
  static  unsigned long long aesl_llvm_cbe_1758_count = 0;
  static  unsigned long long aesl_llvm_cbe_1759_count = 0;
  static  unsigned long long aesl_llvm_cbe_1760_count = 0;
  static  unsigned long long aesl_llvm_cbe_1761_count = 0;
  static  unsigned long long aesl_llvm_cbe_1762_count = 0;
  static  unsigned long long aesl_llvm_cbe_1763_count = 0;
  static  unsigned long long aesl_llvm_cbe_1764_count = 0;
  static  unsigned long long aesl_llvm_cbe_1765_count = 0;
  static  unsigned long long aesl_llvm_cbe_1766_count = 0;
  static  unsigned long long aesl_llvm_cbe_1767_count = 0;
  static  unsigned long long aesl_llvm_cbe_1768_count = 0;
  static  unsigned long long aesl_llvm_cbe_1769_count = 0;
  static  unsigned long long aesl_llvm_cbe_puts9_count = 0;
  unsigned int llvm_cbe_puts9;
  static  unsigned long long aesl_llvm_cbe_1770_count = 0;
  unsigned int llvm_cbe_tmp__561;
  static  unsigned long long aesl_llvm_cbe_1771_count = 0;
  static  unsigned long long aesl_llvm_cbe_1772_count = 0;
  static  unsigned long long aesl_llvm_cbe_1773_count = 0;
  static  unsigned long long aesl_llvm_cbe_1774_count = 0;
  static  unsigned long long aesl_llvm_cbe_1775_count = 0;
  static  unsigned long long aesl_llvm_cbe_1776_count = 0;
  static  unsigned long long aesl_llvm_cbe_1777_count = 0;
  static  unsigned long long aesl_llvm_cbe_1778_count = 0;
  static  unsigned long long aesl_llvm_cbe_1779_count = 0;
  static  unsigned long long aesl_llvm_cbe_1780_count = 0;
  static  unsigned long long aesl_llvm_cbe_1781_count = 0;
  static  unsigned long long aesl_llvm_cbe_1782_count = 0;
  static  unsigned long long aesl_llvm_cbe_1783_count = 0;
  static  unsigned long long aesl_llvm_cbe_1784_count = 0;
  static  unsigned long long aesl_llvm_cbe_1785_count = 0;
  static  unsigned long long aesl_llvm_cbe_1786_count = 0;
  static  unsigned long long aesl_llvm_cbe_1787_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_1788_count = 0;
  static  unsigned long long aesl_llvm_cbe_1789_count = 0;

  CODE_FOR_MAIN();
const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @main\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = bitcast [64 x float]* %%U_0 to i8*, !dbg !14 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_979_count);
  llvm_cbe_tmp__383 = ( char *)(( char *)(&llvm_cbe_U_0));
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = call i8* @memset(i8* %%3, i32 0, i64 256 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_980_count);
  ( char *)memset(( char *)llvm_cbe_tmp__383, 0u, 256ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%I64X",256ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__384);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = bitcast [64 x float]* %%U_1 to i8*, !dbg !14 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_982_count);
  llvm_cbe_tmp__385 = ( char *)(( char *)(&llvm_cbe_U_1));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = call i8* @memset(i8* %%5, i32 0, i64 256 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_983_count);
  ( char *)memset(( char *)llvm_cbe_tmp__385, 0u, 256ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%I64X",256ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__386);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = bitcast [64 x float]* %%U_2 to i8*, !dbg !14 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_985_count);
  llvm_cbe_tmp__387 = ( char *)(( char *)(&llvm_cbe_U_2));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = call i8* @memset(i8* %%7, i32 0, i64 256 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_986_count);
  ( char *)memset(( char *)llvm_cbe_tmp__387, 0u, 256ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%I64X",256ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__388);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = bitcast [64 x float]* %%C_xi to i8*, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_988_count);
  llvm_cbe_tmp__389 = ( char *)(( char *)(&llvm_cbe_C_xi));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = call i8* @memcpy(i8* %%9, i8* bitcast ([64 x float]* @aesl_internal_main.C_xi to i8*), i64 256 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_989_count);
  ( char *)memcpy(( char *)llvm_cbe_tmp__389, ( char *)(( char *)(&aesl_internal_main_OC_C_xi)), 256ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",256ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__390);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%puts = call i32 @puts(i8* getelementptr inbounds ([9 x i8]* @aesl_internal_str, i64 0, i64 0)), !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_puts_count);
  puts(( char *)((&aesl_internal_str[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 9
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts = 0x%X",llvm_cbe_puts);
}
  llvm_cbe_storemerge16__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__562;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__562:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge16 = phi i32 [ 0, %%2 ], [ %%60, %%11  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge16_count);
  llvm_cbe_storemerge16 = (unsigned int )llvm_cbe_storemerge16__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge16 = 0x%X",llvm_cbe_storemerge16);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__439);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%putchar = call i32 @putchar(i32 91) nounwind, !dbg !18 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_putchar_count);
  putchar(91u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",91u);
printf("\nReturn putchar = 0x%X",llvm_cbe_putchar);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = shl i32 %%storemerge16, 3, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1025_count);
  llvm_cbe_tmp__391 = (unsigned int )llvm_cbe_storemerge16 << 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__391);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = sext i32 %%12 to i64, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1026_count);
  llvm_cbe_tmp__392 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__391);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__392);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds [64 x float]* %%C_xi, i64 0, i64 %%13, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1027_count);
  llvm_cbe_tmp__393 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__392))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__392));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__392) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'C_xi' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load float* %%14, align 16, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1028_count);
  llvm_cbe_tmp__394 = (float )*llvm_cbe_tmp__393;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__394, *(int*)(&llvm_cbe_tmp__394));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = fpext float %%15 to double, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1029_count);
  llvm_cbe_tmp__395 = (double )((double )llvm_cbe_tmp__394);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__395, *(long long*)(&llvm_cbe_tmp__395));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%16) nounwind, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1030_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__395);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__395, *(long long*)(&llvm_cbe_tmp__395));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__396);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = or i32 %%12, 1, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1048_count);
  llvm_cbe_tmp__397 = (unsigned int )llvm_cbe_tmp__391 | 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__397);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = sext i32 %%18 to i64, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1049_count);
  llvm_cbe_tmp__398 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__397);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__398);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds [64 x float]* %%C_xi, i64 0, i64 %%19, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1050_count);
  llvm_cbe_tmp__399 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__398))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__398));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__398) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'C_xi' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = load float* %%20, align 4, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1051_count);
  llvm_cbe_tmp__400 = (float )*llvm_cbe_tmp__399;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__400, *(int*)(&llvm_cbe_tmp__400));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = fpext float %%21 to double, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1052_count);
  llvm_cbe_tmp__401 = (double )((double )llvm_cbe_tmp__400);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__401, *(long long*)(&llvm_cbe_tmp__401));
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%22) nounwind, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1053_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__401);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__401, *(long long*)(&llvm_cbe_tmp__401));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__402);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = or i32 %%12, 2, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1071_count);
  llvm_cbe_tmp__403 = (unsigned int )llvm_cbe_tmp__391 | 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__403);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = sext i32 %%24 to i64, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1072_count);
  llvm_cbe_tmp__404 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__403);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__404);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds [64 x float]* %%C_xi, i64 0, i64 %%25, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1073_count);
  llvm_cbe_tmp__405 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__404))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__404));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__404) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'C_xi' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = load float* %%26, align 8, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1074_count);
  llvm_cbe_tmp__406 = (float )*llvm_cbe_tmp__405;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__406, *(int*)(&llvm_cbe_tmp__406));
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = fpext float %%27 to double, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1075_count);
  llvm_cbe_tmp__407 = (double )((double )llvm_cbe_tmp__406);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__407, *(long long*)(&llvm_cbe_tmp__407));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%28) nounwind, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1076_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__407);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__407, *(long long*)(&llvm_cbe_tmp__407));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__408);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = or i32 %%12, 3, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1094_count);
  llvm_cbe_tmp__409 = (unsigned int )llvm_cbe_tmp__391 | 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__409);
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = sext i32 %%30 to i64, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1095_count);
  llvm_cbe_tmp__410 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__409);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__410);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = getelementptr inbounds [64 x float]* %%C_xi, i64 0, i64 %%31, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1096_count);
  llvm_cbe_tmp__411 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__410))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__410));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__410) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'C_xi' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = load float* %%32, align 4, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1097_count);
  llvm_cbe_tmp__412 = (float )*llvm_cbe_tmp__411;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__412, *(int*)(&llvm_cbe_tmp__412));
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = fpext float %%33 to double, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1098_count);
  llvm_cbe_tmp__413 = (double )((double )llvm_cbe_tmp__412);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__413, *(long long*)(&llvm_cbe_tmp__413));
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%34) nounwind, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1099_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__413);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__413, *(long long*)(&llvm_cbe_tmp__413));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__414);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = or i32 %%12, 4, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1117_count);
  llvm_cbe_tmp__415 = (unsigned int )llvm_cbe_tmp__391 | 4u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__415);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = sext i32 %%36 to i64, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1118_count);
  llvm_cbe_tmp__416 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__415);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__416);
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = getelementptr inbounds [64 x float]* %%C_xi, i64 0, i64 %%37, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1119_count);
  llvm_cbe_tmp__417 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__416))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__416));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__416) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'C_xi' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = load float* %%38, align 16, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1120_count);
  llvm_cbe_tmp__418 = (float )*llvm_cbe_tmp__417;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__418, *(int*)(&llvm_cbe_tmp__418));
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = fpext float %%39 to double, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1121_count);
  llvm_cbe_tmp__419 = (double )((double )llvm_cbe_tmp__418);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__419, *(long long*)(&llvm_cbe_tmp__419));
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%40) nounwind, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1122_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__419);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__419, *(long long*)(&llvm_cbe_tmp__419));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__420);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = or i32 %%12, 5, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1140_count);
  llvm_cbe_tmp__421 = (unsigned int )llvm_cbe_tmp__391 | 5u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__421);
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = sext i32 %%42 to i64, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1141_count);
  llvm_cbe_tmp__422 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__421);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__422);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = getelementptr inbounds [64 x float]* %%C_xi, i64 0, i64 %%43, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1142_count);
  llvm_cbe_tmp__423 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__422))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__422));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__422) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'C_xi' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = load float* %%44, align 4, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1143_count);
  llvm_cbe_tmp__424 = (float )*llvm_cbe_tmp__423;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__424, *(int*)(&llvm_cbe_tmp__424));
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = fpext float %%45 to double, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1144_count);
  llvm_cbe_tmp__425 = (double )((double )llvm_cbe_tmp__424);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__425, *(long long*)(&llvm_cbe_tmp__425));
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%46) nounwind, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1145_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__425);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__425, *(long long*)(&llvm_cbe_tmp__425));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__426);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = or i32 %%12, 6, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1163_count);
  llvm_cbe_tmp__427 = (unsigned int )llvm_cbe_tmp__391 | 6u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__427);
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = sext i32 %%48 to i64, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1164_count);
  llvm_cbe_tmp__428 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__427);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__428);
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = getelementptr inbounds [64 x float]* %%C_xi, i64 0, i64 %%49, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1165_count);
  llvm_cbe_tmp__429 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__428))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__428));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__428) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'C_xi' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = load float* %%50, align 8, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1166_count);
  llvm_cbe_tmp__430 = (float )*llvm_cbe_tmp__429;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__430, *(int*)(&llvm_cbe_tmp__430));
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = fpext float %%51 to double, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1167_count);
  llvm_cbe_tmp__431 = (double )((double )llvm_cbe_tmp__430);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__431, *(long long*)(&llvm_cbe_tmp__431));
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%52) nounwind, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1168_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__431);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__431, *(long long*)(&llvm_cbe_tmp__431));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__432);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = or i32 %%12, 7, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1186_count);
  llvm_cbe_tmp__433 = (unsigned int )llvm_cbe_tmp__391 | 7u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__433);
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = sext i32 %%54 to i64, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1187_count);
  llvm_cbe_tmp__434 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__433);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__434);
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = getelementptr inbounds [64 x float]* %%C_xi, i64 0, i64 %%55, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1188_count);
  llvm_cbe_tmp__435 = (float *)(&llvm_cbe_C_xi[(((signed long long )llvm_cbe_tmp__434))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__434));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__434) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'C_xi' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = load float* %%56, align 4, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1189_count);
  llvm_cbe_tmp__436 = (float )*llvm_cbe_tmp__435;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__436, *(int*)(&llvm_cbe_tmp__436));
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = fpext float %%57 to double, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1190_count);
  llvm_cbe_tmp__437 = (double )((double )llvm_cbe_tmp__436);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__437, *(long long*)(&llvm_cbe_tmp__437));
if (AESL_DEBUG_TRACE)
printf("\n  %%59 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%58) nounwind, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1191_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__437);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__437, *(long long*)(&llvm_cbe_tmp__437));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__438);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%puts6 = call i32 @puts(i8* getelementptr inbounds ([2 x i8]* @aesl_internal_str3, i64 0, i64 0)), !dbg !18 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_puts6_count);
  puts(( char *)((&aesl_internal_str3[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 2
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts6 = 0x%X",llvm_cbe_puts6);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = add nsw i32 %%storemerge16, 1, !dbg !15 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1209_count);
  llvm_cbe_tmp__439 = (unsigned int )((unsigned int )(llvm_cbe_storemerge16&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__439&4294967295ull)));
  if (((llvm_cbe_tmp__439&4294967295U) == (8u&4294967295U))) {
    goto llvm_cbe_tmp__563;
  } else {
    llvm_cbe_storemerge16__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__439;   /* for PHI node */
    goto llvm_cbe_tmp__562;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__563:
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = getelementptr inbounds [64 x i32]* %%rho, i64 0, i64 0, !dbg !19 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1228_count);
  llvm_cbe_tmp__440 = (signed int *)(&llvm_cbe_rho[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = getelementptr inbounds [64 x float]* %%C_xi, i64 0, i64 0, !dbg !19 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1229_count);
  llvm_cbe_tmp__441 = (float *)(&llvm_cbe_C_xi[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @rhoxi(i32* %%62, float* %%63), !dbg !19 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1230_count);
  rhoxi((signed int *)llvm_cbe_tmp__440, (float *)llvm_cbe_tmp__441);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = getelementptr inbounds [4096 x float]* %%T, i64 0, i64 0, !dbg !10 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1231_count);
  llvm_cbe_tmp__442 = (float *)(&llvm_cbe_T[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 4096
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @txiyj(i32 1500, i32 475, float* %%64), !dbg !10 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1232_count);
  txiyj(1500u, 475u, (float *)llvm_cbe_tmp__442);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",1500u);
printf("\nArgument  = 0x%X",475u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = getelementptr inbounds [64 x float]* %%I, i64 0, i64 0, !dbg !9 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1233_count);
  llvm_cbe_tmp__443 = (float *)(&llvm_cbe_I[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @ixi(i32 950, i32 2500, i32 475, i32 2500, float* %%63, i32* %%62, i32 0, i32 1, float* %%65), !dbg !9 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1234_count);
  ixi(950u, 2500u, 475u, 2500u, (float *)llvm_cbe_tmp__441, (signed int *)llvm_cbe_tmp__440, 0u, 1u, (float *)llvm_cbe_tmp__443);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",950u);
printf("\nArgument  = 0x%X",2500u);
printf("\nArgument  = 0x%X",475u);
printf("\nArgument  = 0x%X",2500u);
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%X",1u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = getelementptr inbounds [64 x float]* %%U_1, i64 0, i64 0, !dbg !12 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1235_count);
  llvm_cbe_tmp__444 = (float *)(&llvm_cbe_U_1[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = getelementptr inbounds [64 x float]* %%V, i64 0, i64 0, !dbg !12 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1236_count);
  llvm_cbe_tmp__445 = (float *)(&llvm_cbe_V[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = getelementptr inbounds [64 x float]* %%U_0, i64 0, i64 0, !dbg !11 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1237_count);
  llvm_cbe_tmp__446 = (float *)(&llvm_cbe_U_0[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = getelementptr inbounds [64 x float]* %%U_2, i64 0, i64 0, !dbg !11 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1238_count);
  llvm_cbe_tmp__447 = (float *)(&llvm_cbe_U_2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
}
  llvm_cbe_tmp__448__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  llvm_cbe_tmp__449__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_tmp__450__PHI_TEMPORARY = (float )0x1.388p13;   /* for PHI node */
  goto llvm_cbe_tmp__564;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__564:
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = phi i32 [ 1, %%61 ], [ %%76, %%136  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1240_count);
  llvm_cbe_tmp__448 = (unsigned int )llvm_cbe_tmp__448__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__448);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",llvm_cbe_tmp__452);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = phi i32 [ 0, %%61 ], [ %%137, %%136  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1241_count);
  llvm_cbe_tmp__449 = (unsigned int )llvm_cbe_tmp__449__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__449);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__512);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%73 = phi float [ 1.000000e+04, %%61 ], [ %%74, %%136  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1242_count);
  llvm_cbe_tmp__450 = (float )llvm_cbe_tmp__450__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__450);
printf("\n = %f",0x1.388p13);
printf("\n = %f",llvm_cbe_tmp__451);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @hnn_fpga(float* %%66, float 6.000000e+00, float* %%67) nounwind, !dbg !12 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1243_count);
  hnn_fpga((float *)llvm_cbe_tmp__444, 0x1.8p2, (float *)llvm_cbe_tmp__445);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f",0x1.8p2);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @data_HNN_SPP_2(float* %%67, float* %%68, float* %%66, float* %%69, float* %%65, float* %%64, float 0x3F7758E220000000, float 0x3F7D7DBF40000000, float 0x3F7A36E2E0000000), !dbg !11 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1244_count);
  data_HNN_SPP_2((float *)llvm_cbe_tmp__445, (float *)llvm_cbe_tmp__446, (float *)llvm_cbe_tmp__444, (float *)llvm_cbe_tmp__447, (float *)llvm_cbe_tmp__443, (float *)llvm_cbe_tmp__442, 0x1.758e22p-8, 0x1.d7dbf4p-8, 0x1.a36e2ep-8);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %f",0x1.758e22p-8);
printf("\nArgument  = %f",0x1.d7dbf4p-8);
printf("\nArgument  = %f",0x1.a36e2ep-8);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%74 = call float @energy(i32 950, i32 2500, i32 1500, i32 475, i32 2500, float* %%63, float* %%67, i32* %%62, i32 0, i32 1), !dbg !9 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1245_count);
  llvm_cbe_tmp__451 = (float )energy(950u, 2500u, 1500u, 475u, 2500u, (float *)llvm_cbe_tmp__441, (float *)llvm_cbe_tmp__445, (signed int *)llvm_cbe_tmp__440, 0u, 1u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",950u);
printf("\nArgument  = 0x%X",2500u);
printf("\nArgument  = 0x%X",1500u);
printf("\nArgument  = 0x%X",475u);
printf("\nArgument  = 0x%X",2500u);
printf("\nArgument  = 0x%X",0u);
printf("\nArgument  = 0x%X",1u);
printf("\nReturn  = %f",llvm_cbe_tmp__451);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%76 = select i1 %%75, i32 0, i32 %%71, !dbg !12 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1252_count);
  llvm_cbe_tmp__452 = (unsigned int )(((llvm_fcmp_oeq(llvm_cbe_tmp__450, llvm_cbe_tmp__451))) ? ((unsigned int )0u) : ((unsigned int )llvm_cbe_tmp__448));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__452);
if (AESL_DEBUG_TRACE)
printf("\n  %%77 = fpext float %%74 to double, !dbg !9 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1256_count);
  llvm_cbe_tmp__453 = (double )((double )llvm_cbe_tmp__451);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__453, *(long long*)(&llvm_cbe_tmp__453));
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([30 x i8]* @aesl_internal_.str4, i64 0, i64 0), i32 %%72, double %%77) nounwind, !dbg !9 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1257_count);
  printf(( char *)((&aesl_internal__OC_str4[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 30
#endif
])), llvm_cbe_tmp__449, llvm_cbe_tmp__453);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__449);
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__453, *(long long*)(&llvm_cbe_tmp__453));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__454);
}
  llvm_cbe_storemerge314__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe__2e_preheader;

llvm_cbe_tmp__565:
if (AESL_DEBUG_TRACE)
printf("\n  %%137 = add nsw i32 %%72, 1, !dbg !9 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1527_count);
  llvm_cbe_tmp__512 = (unsigned int )((unsigned int )(llvm_cbe_tmp__449&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__512&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond = and i1 %%138, %%13 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_or_2e_cond_count);
  llvm_cbe_or_2e_cond = (bool )((((llvm_cbe_tmp__452&4294967295U) != (0u&4294967295U)) & (((signed int )llvm_cbe_tmp__512) < ((signed int )50u)))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond = 0x%X\n", llvm_cbe_or_2e_cond);
  if (llvm_cbe_or_2e_cond) {
    llvm_cbe_tmp__448__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__452;   /* for PHI node */
    llvm_cbe_tmp__449__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__512;   /* for PHI node */
    llvm_cbe_tmp__450__PHI_TEMPORARY = (float )llvm_cbe_tmp__451;   /* for PHI node */
    goto llvm_cbe_tmp__564;
  } else {
    goto llvm_cbe__2e_critedge;
  }

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge314 = phi i32 [ 0, %%70 ], [ %%135, %%.preheader  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge314_count);
  llvm_cbe_storemerge314 = (unsigned int )llvm_cbe_storemerge314__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge314 = 0x%X",llvm_cbe_storemerge314);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__511);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%79 = shl i32 %%storemerge314, 3, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1292_count);
  llvm_cbe_tmp__455 = (unsigned int )llvm_cbe_storemerge314 << 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__455);
if (AESL_DEBUG_TRACE)
printf("\n  %%80 = sext i32 %%79 to i64, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1293_count);
  llvm_cbe_tmp__456 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__455);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__456);
if (AESL_DEBUG_TRACE)
printf("\n  %%81 = getelementptr inbounds [64 x float]* %%U_1, i64 0, i64 %%80, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1294_count);
  llvm_cbe_tmp__457 = (float *)(&llvm_cbe_U_1[(((signed long long )llvm_cbe_tmp__456))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__456));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__456) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_1' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = load float* %%81, align 16, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1295_count);
  llvm_cbe_tmp__458 = (float )*llvm_cbe_tmp__457;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__458, *(int*)(&llvm_cbe_tmp__458));
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = getelementptr inbounds [64 x float]* %%U_2, i64 0, i64 %%80, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1296_count);
  llvm_cbe_tmp__459 = (float *)(&llvm_cbe_U_2[(((signed long long )llvm_cbe_tmp__456))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__456));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__456) < 64 && "Write access out of array 'U_2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%82, float* %%83, align 16, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1297_count);
  *llvm_cbe_tmp__459 = llvm_cbe_tmp__458;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__458);
if (AESL_DEBUG_TRACE)
printf("\n  %%84 = getelementptr inbounds [64 x float]* %%U_0, i64 0, i64 %%80, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1298_count);
  llvm_cbe_tmp__460 = (float *)(&llvm_cbe_U_0[(((signed long long )llvm_cbe_tmp__456))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__456));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__456) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_0' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%85 = load float* %%84, align 16, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1299_count);
  llvm_cbe_tmp__461 = (float )*llvm_cbe_tmp__460;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__461, *(int*)(&llvm_cbe_tmp__461));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__456) < 64 && "Write access out of array 'U_1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%85, float* %%81, align 16, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1300_count);
  *llvm_cbe_tmp__457 = llvm_cbe_tmp__461;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__461);

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__456) < 64 && "Write access out of array 'U_0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* %%84, align 16, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1301_count);
  *llvm_cbe_tmp__460 = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  %%86 = or i32 %%79, 1, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1319_count);
  llvm_cbe_tmp__462 = (unsigned int )llvm_cbe_tmp__455 | 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__462);
if (AESL_DEBUG_TRACE)
printf("\n  %%87 = sext i32 %%86 to i64, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1320_count);
  llvm_cbe_tmp__463 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__462);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__463);
if (AESL_DEBUG_TRACE)
printf("\n  %%88 = getelementptr inbounds [64 x float]* %%U_1, i64 0, i64 %%87, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1321_count);
  llvm_cbe_tmp__464 = (float *)(&llvm_cbe_U_1[(((signed long long )llvm_cbe_tmp__463))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__463));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__463) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_1' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%89 = load float* %%88, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1322_count);
  llvm_cbe_tmp__465 = (float )*llvm_cbe_tmp__464;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__465, *(int*)(&llvm_cbe_tmp__465));
if (AESL_DEBUG_TRACE)
printf("\n  %%90 = getelementptr inbounds [64 x float]* %%U_2, i64 0, i64 %%87, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1323_count);
  llvm_cbe_tmp__466 = (float *)(&llvm_cbe_U_2[(((signed long long )llvm_cbe_tmp__463))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__463));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__463) < 64 && "Write access out of array 'U_2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%89, float* %%90, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1324_count);
  *llvm_cbe_tmp__466 = llvm_cbe_tmp__465;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__465);
if (AESL_DEBUG_TRACE)
printf("\n  %%91 = getelementptr inbounds [64 x float]* %%U_0, i64 0, i64 %%87, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1325_count);
  llvm_cbe_tmp__467 = (float *)(&llvm_cbe_U_0[(((signed long long )llvm_cbe_tmp__463))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__463));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__463) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_0' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%92 = load float* %%91, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1326_count);
  llvm_cbe_tmp__468 = (float )*llvm_cbe_tmp__467;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__468, *(int*)(&llvm_cbe_tmp__468));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__463) < 64 && "Write access out of array 'U_1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%92, float* %%88, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1327_count);
  *llvm_cbe_tmp__464 = llvm_cbe_tmp__468;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__468);

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__463) < 64 && "Write access out of array 'U_0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* %%91, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1328_count);
  *llvm_cbe_tmp__467 = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  %%93 = or i32 %%79, 2, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1346_count);
  llvm_cbe_tmp__469 = (unsigned int )llvm_cbe_tmp__455 | 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__469);
if (AESL_DEBUG_TRACE)
printf("\n  %%94 = sext i32 %%93 to i64, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1347_count);
  llvm_cbe_tmp__470 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__469);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__470);
if (AESL_DEBUG_TRACE)
printf("\n  %%95 = getelementptr inbounds [64 x float]* %%U_1, i64 0, i64 %%94, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1348_count);
  llvm_cbe_tmp__471 = (float *)(&llvm_cbe_U_1[(((signed long long )llvm_cbe_tmp__470))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__470));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__470) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_1' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%96 = load float* %%95, align 8, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1349_count);
  llvm_cbe_tmp__472 = (float )*llvm_cbe_tmp__471;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__472, *(int*)(&llvm_cbe_tmp__472));
if (AESL_DEBUG_TRACE)
printf("\n  %%97 = getelementptr inbounds [64 x float]* %%U_2, i64 0, i64 %%94, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1350_count);
  llvm_cbe_tmp__473 = (float *)(&llvm_cbe_U_2[(((signed long long )llvm_cbe_tmp__470))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__470));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__470) < 64 && "Write access out of array 'U_2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%96, float* %%97, align 8, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1351_count);
  *llvm_cbe_tmp__473 = llvm_cbe_tmp__472;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__472);
if (AESL_DEBUG_TRACE)
printf("\n  %%98 = getelementptr inbounds [64 x float]* %%U_0, i64 0, i64 %%94, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1352_count);
  llvm_cbe_tmp__474 = (float *)(&llvm_cbe_U_0[(((signed long long )llvm_cbe_tmp__470))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__470));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__470) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_0' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%99 = load float* %%98, align 8, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1353_count);
  llvm_cbe_tmp__475 = (float )*llvm_cbe_tmp__474;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__475, *(int*)(&llvm_cbe_tmp__475));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__470) < 64 && "Write access out of array 'U_1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%99, float* %%95, align 8, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1354_count);
  *llvm_cbe_tmp__471 = llvm_cbe_tmp__475;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__475);

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__470) < 64 && "Write access out of array 'U_0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* %%98, align 8, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1355_count);
  *llvm_cbe_tmp__474 = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  %%100 = or i32 %%79, 3, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1373_count);
  llvm_cbe_tmp__476 = (unsigned int )llvm_cbe_tmp__455 | 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__476);
if (AESL_DEBUG_TRACE)
printf("\n  %%101 = sext i32 %%100 to i64, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1374_count);
  llvm_cbe_tmp__477 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__476);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__477);
if (AESL_DEBUG_TRACE)
printf("\n  %%102 = getelementptr inbounds [64 x float]* %%U_1, i64 0, i64 %%101, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1375_count);
  llvm_cbe_tmp__478 = (float *)(&llvm_cbe_U_1[(((signed long long )llvm_cbe_tmp__477))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__477));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__477) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_1' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%103 = load float* %%102, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1376_count);
  llvm_cbe_tmp__479 = (float )*llvm_cbe_tmp__478;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__479, *(int*)(&llvm_cbe_tmp__479));
if (AESL_DEBUG_TRACE)
printf("\n  %%104 = getelementptr inbounds [64 x float]* %%U_2, i64 0, i64 %%101, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1377_count);
  llvm_cbe_tmp__480 = (float *)(&llvm_cbe_U_2[(((signed long long )llvm_cbe_tmp__477))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__477));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__477) < 64 && "Write access out of array 'U_2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%103, float* %%104, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1378_count);
  *llvm_cbe_tmp__480 = llvm_cbe_tmp__479;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__479);
if (AESL_DEBUG_TRACE)
printf("\n  %%105 = getelementptr inbounds [64 x float]* %%U_0, i64 0, i64 %%101, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1379_count);
  llvm_cbe_tmp__481 = (float *)(&llvm_cbe_U_0[(((signed long long )llvm_cbe_tmp__477))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__477));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__477) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_0' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%106 = load float* %%105, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1380_count);
  llvm_cbe_tmp__482 = (float )*llvm_cbe_tmp__481;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__482, *(int*)(&llvm_cbe_tmp__482));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__477) < 64 && "Write access out of array 'U_1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%106, float* %%102, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1381_count);
  *llvm_cbe_tmp__478 = llvm_cbe_tmp__482;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__482);

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__477) < 64 && "Write access out of array 'U_0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* %%105, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1382_count);
  *llvm_cbe_tmp__481 = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  %%107 = or i32 %%79, 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1400_count);
  llvm_cbe_tmp__483 = (unsigned int )llvm_cbe_tmp__455 | 4u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__483);
if (AESL_DEBUG_TRACE)
printf("\n  %%108 = sext i32 %%107 to i64, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1401_count);
  llvm_cbe_tmp__484 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__483);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__484);
if (AESL_DEBUG_TRACE)
printf("\n  %%109 = getelementptr inbounds [64 x float]* %%U_1, i64 0, i64 %%108, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1402_count);
  llvm_cbe_tmp__485 = (float *)(&llvm_cbe_U_1[(((signed long long )llvm_cbe_tmp__484))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__484));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__484) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_1' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%110 = load float* %%109, align 16, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1403_count);
  llvm_cbe_tmp__486 = (float )*llvm_cbe_tmp__485;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__486, *(int*)(&llvm_cbe_tmp__486));
if (AESL_DEBUG_TRACE)
printf("\n  %%111 = getelementptr inbounds [64 x float]* %%U_2, i64 0, i64 %%108, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1404_count);
  llvm_cbe_tmp__487 = (float *)(&llvm_cbe_U_2[(((signed long long )llvm_cbe_tmp__484))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__484));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__484) < 64 && "Write access out of array 'U_2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%110, float* %%111, align 16, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1405_count);
  *llvm_cbe_tmp__487 = llvm_cbe_tmp__486;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__486);
if (AESL_DEBUG_TRACE)
printf("\n  %%112 = getelementptr inbounds [64 x float]* %%U_0, i64 0, i64 %%108, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1406_count);
  llvm_cbe_tmp__488 = (float *)(&llvm_cbe_U_0[(((signed long long )llvm_cbe_tmp__484))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__484));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__484) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_0' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%113 = load float* %%112, align 16, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1407_count);
  llvm_cbe_tmp__489 = (float )*llvm_cbe_tmp__488;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__489, *(int*)(&llvm_cbe_tmp__489));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__484) < 64 && "Write access out of array 'U_1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%113, float* %%109, align 16, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1408_count);
  *llvm_cbe_tmp__485 = llvm_cbe_tmp__489;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__489);

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__484) < 64 && "Write access out of array 'U_0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* %%112, align 16, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1409_count);
  *llvm_cbe_tmp__488 = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  %%114 = or i32 %%79, 5, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1427_count);
  llvm_cbe_tmp__490 = (unsigned int )llvm_cbe_tmp__455 | 5u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__490);
if (AESL_DEBUG_TRACE)
printf("\n  %%115 = sext i32 %%114 to i64, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1428_count);
  llvm_cbe_tmp__491 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__490);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__491);
if (AESL_DEBUG_TRACE)
printf("\n  %%116 = getelementptr inbounds [64 x float]* %%U_1, i64 0, i64 %%115, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1429_count);
  llvm_cbe_tmp__492 = (float *)(&llvm_cbe_U_1[(((signed long long )llvm_cbe_tmp__491))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__491));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__491) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_1' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%117 = load float* %%116, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1430_count);
  llvm_cbe_tmp__493 = (float )*llvm_cbe_tmp__492;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__493, *(int*)(&llvm_cbe_tmp__493));
if (AESL_DEBUG_TRACE)
printf("\n  %%118 = getelementptr inbounds [64 x float]* %%U_2, i64 0, i64 %%115, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1431_count);
  llvm_cbe_tmp__494 = (float *)(&llvm_cbe_U_2[(((signed long long )llvm_cbe_tmp__491))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__491));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__491) < 64 && "Write access out of array 'U_2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%117, float* %%118, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1432_count);
  *llvm_cbe_tmp__494 = llvm_cbe_tmp__493;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__493);
if (AESL_DEBUG_TRACE)
printf("\n  %%119 = getelementptr inbounds [64 x float]* %%U_0, i64 0, i64 %%115, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1433_count);
  llvm_cbe_tmp__495 = (float *)(&llvm_cbe_U_0[(((signed long long )llvm_cbe_tmp__491))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__491));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__491) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_0' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%120 = load float* %%119, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1434_count);
  llvm_cbe_tmp__496 = (float )*llvm_cbe_tmp__495;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__496, *(int*)(&llvm_cbe_tmp__496));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__491) < 64 && "Write access out of array 'U_1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%120, float* %%116, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1435_count);
  *llvm_cbe_tmp__492 = llvm_cbe_tmp__496;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__496);

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__491) < 64 && "Write access out of array 'U_0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* %%119, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1436_count);
  *llvm_cbe_tmp__495 = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  %%121 = or i32 %%79, 6, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1454_count);
  llvm_cbe_tmp__497 = (unsigned int )llvm_cbe_tmp__455 | 6u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__497);
if (AESL_DEBUG_TRACE)
printf("\n  %%122 = sext i32 %%121 to i64, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1455_count);
  llvm_cbe_tmp__498 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__497);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__498);
if (AESL_DEBUG_TRACE)
printf("\n  %%123 = getelementptr inbounds [64 x float]* %%U_1, i64 0, i64 %%122, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1456_count);
  llvm_cbe_tmp__499 = (float *)(&llvm_cbe_U_1[(((signed long long )llvm_cbe_tmp__498))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__498));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__498) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_1' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%124 = load float* %%123, align 8, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1457_count);
  llvm_cbe_tmp__500 = (float )*llvm_cbe_tmp__499;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__500, *(int*)(&llvm_cbe_tmp__500));
if (AESL_DEBUG_TRACE)
printf("\n  %%125 = getelementptr inbounds [64 x float]* %%U_2, i64 0, i64 %%122, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1458_count);
  llvm_cbe_tmp__501 = (float *)(&llvm_cbe_U_2[(((signed long long )llvm_cbe_tmp__498))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__498));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__498) < 64 && "Write access out of array 'U_2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%124, float* %%125, align 8, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1459_count);
  *llvm_cbe_tmp__501 = llvm_cbe_tmp__500;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__500);
if (AESL_DEBUG_TRACE)
printf("\n  %%126 = getelementptr inbounds [64 x float]* %%U_0, i64 0, i64 %%122, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1460_count);
  llvm_cbe_tmp__502 = (float *)(&llvm_cbe_U_0[(((signed long long )llvm_cbe_tmp__498))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__498));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__498) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_0' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%127 = load float* %%126, align 8, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1461_count);
  llvm_cbe_tmp__503 = (float )*llvm_cbe_tmp__502;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__503, *(int*)(&llvm_cbe_tmp__503));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__498) < 64 && "Write access out of array 'U_1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%127, float* %%123, align 8, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1462_count);
  *llvm_cbe_tmp__499 = llvm_cbe_tmp__503;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__503);

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__498) < 64 && "Write access out of array 'U_0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* %%126, align 8, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1463_count);
  *llvm_cbe_tmp__502 = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  %%128 = or i32 %%79, 7, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1481_count);
  llvm_cbe_tmp__504 = (unsigned int )llvm_cbe_tmp__455 | 7u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__504);
if (AESL_DEBUG_TRACE)
printf("\n  %%129 = sext i32 %%128 to i64, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1482_count);
  llvm_cbe_tmp__505 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__504);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__505);
if (AESL_DEBUG_TRACE)
printf("\n  %%130 = getelementptr inbounds [64 x float]* %%U_1, i64 0, i64 %%129, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1483_count);
  llvm_cbe_tmp__506 = (float *)(&llvm_cbe_U_1[(((signed long long )llvm_cbe_tmp__505))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__505));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__505) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_1' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%131 = load float* %%130, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1484_count);
  llvm_cbe_tmp__507 = (float )*llvm_cbe_tmp__506;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__507, *(int*)(&llvm_cbe_tmp__507));
if (AESL_DEBUG_TRACE)
printf("\n  %%132 = getelementptr inbounds [64 x float]* %%U_2, i64 0, i64 %%129, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1485_count);
  llvm_cbe_tmp__508 = (float *)(&llvm_cbe_U_2[(((signed long long )llvm_cbe_tmp__505))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__505));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__505) < 64 && "Write access out of array 'U_2' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%131, float* %%132, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1486_count);
  *llvm_cbe_tmp__508 = llvm_cbe_tmp__507;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__507);
if (AESL_DEBUG_TRACE)
printf("\n  %%133 = getelementptr inbounds [64 x float]* %%U_0, i64 0, i64 %%129, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1487_count);
  llvm_cbe_tmp__509 = (float *)(&llvm_cbe_U_0[(((signed long long )llvm_cbe_tmp__505))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__505));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__505) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'U_0' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%134 = load float* %%133, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1488_count);
  llvm_cbe_tmp__510 = (float )*llvm_cbe_tmp__509;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__510, *(int*)(&llvm_cbe_tmp__510));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__505) < 64 && "Write access out of array 'U_1' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%134, float* %%130, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1489_count);
  *llvm_cbe_tmp__506 = llvm_cbe_tmp__510;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__510);

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__505) < 64 && "Write access out of array 'U_0' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float 0.000000e+00, float* %%133, align 4, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1490_count);
  *llvm_cbe_tmp__509 = 0x0p0;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", 0x0p0);
if (AESL_DEBUG_TRACE)
printf("\n  %%135 = add nsw i32 %%storemerge314, 1, !dbg !16 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1508_count);
  llvm_cbe_tmp__511 = (unsigned int )((unsigned int )(llvm_cbe_storemerge314&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__511&4294967295ull)));
  if (((llvm_cbe_tmp__511&4294967295U) == (8u&4294967295U))) {
    goto llvm_cbe_tmp__565;
  } else {
    llvm_cbe_storemerge314__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__511;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  } while (1); /* end of syntactic loop '.preheader' */
  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_critedge:
if (AESL_DEBUG_TRACE)
printf("\n  %%puts7 = call i32 @puts(i8* getelementptr inbounds ([6 x i8]* @aesl_internal_str2, i64 0, i64 0)), !dbg !19 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_puts7_count);
  puts(( char *)((&aesl_internal_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 6
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts7 = 0x%X",llvm_cbe_puts7);
}
  llvm_cbe_storemerge112__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__566;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__566:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge112 = phi i32 [ 0, %%.critedge ], [ %%197, %%140  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge112_count);
  llvm_cbe_storemerge112 = (unsigned int )llvm_cbe_storemerge112__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge112 = 0x%X",llvm_cbe_storemerge112);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__561);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%putchar8 = call i32 @putchar(i32 91) nounwind, !dbg !19 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_putchar8_count);
  putchar(91u);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",91u);
printf("\nReturn putchar8 = 0x%X",llvm_cbe_putchar8);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%141 = shl i32 %%storemerge112, 3, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1570_count);
  llvm_cbe_tmp__513 = (unsigned int )llvm_cbe_storemerge112 << 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__513);
if (AESL_DEBUG_TRACE)
printf("\n  %%142 = sext i32 %%141 to i64, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1571_count);
  llvm_cbe_tmp__514 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__513);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__514);
if (AESL_DEBUG_TRACE)
printf("\n  %%143 = getelementptr inbounds [64 x float]* %%V, i64 0, i64 %%142, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1572_count);
  llvm_cbe_tmp__515 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__514))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__514));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__514) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'V' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%144 = load float* %%143, align 16, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1573_count);
  llvm_cbe_tmp__516 = (float )*llvm_cbe_tmp__515;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__516, *(int*)(&llvm_cbe_tmp__516));
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge10 = select i1 %%145, float 1.000000e+00, float 0.000000e+00, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge10_count);
  llvm_cbe_storemerge10 = (float )(((llvm_fcmp_ogt(llvm_cbe_tmp__516, 0x1p-1))) ? ((float )0x1p0) : ((float )0x0p0));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10 = %f,  0x%x\n", llvm_cbe_storemerge10, *(int*)(&llvm_cbe_storemerge10));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__514) < 64 && "Write access out of array 'V' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%storemerge10, float* %%143, align 16, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1575_count);
  *llvm_cbe_tmp__515 = llvm_cbe_storemerge10;
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10 = %f\n", llvm_cbe_storemerge10);
if (AESL_DEBUG_TRACE)
printf("\n  %%146 = fpext float %%storemerge10 to double, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1576_count);
  llvm_cbe_tmp__517 = (double )((double )llvm_cbe_storemerge10);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__517, *(long long*)(&llvm_cbe_tmp__517));
if (AESL_DEBUG_TRACE)
printf("\n  %%147 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%146) nounwind, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1577_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__517);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__517, *(long long*)(&llvm_cbe_tmp__517));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__518);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%148 = or i32 %%141, 1, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1595_count);
  llvm_cbe_tmp__519 = (unsigned int )llvm_cbe_tmp__513 | 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__519);
if (AESL_DEBUG_TRACE)
printf("\n  %%149 = sext i32 %%148 to i64, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1596_count);
  llvm_cbe_tmp__520 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__519);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__520);
if (AESL_DEBUG_TRACE)
printf("\n  %%150 = getelementptr inbounds [64 x float]* %%V, i64 0, i64 %%149, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1597_count);
  llvm_cbe_tmp__521 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__520))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__520));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__520) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'V' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%151 = load float* %%150, align 4, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1598_count);
  llvm_cbe_tmp__522 = (float )*llvm_cbe_tmp__521;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__522, *(int*)(&llvm_cbe_tmp__522));
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge10.1 = select i1 %%152, float 1.000000e+00, float 0.000000e+00, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge10_2e_1_count);
  llvm_cbe_storemerge10_2e_1 = (float )(((llvm_fcmp_ogt(llvm_cbe_tmp__522, 0x1p-1))) ? ((float )0x1p0) : ((float )0x0p0));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10.1 = %f,  0x%x\n", llvm_cbe_storemerge10_2e_1, *(int*)(&llvm_cbe_storemerge10_2e_1));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__520) < 64 && "Write access out of array 'V' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%storemerge10.1, float* %%150, align 4, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1600_count);
  *llvm_cbe_tmp__521 = llvm_cbe_storemerge10_2e_1;
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10.1 = %f\n", llvm_cbe_storemerge10_2e_1);
if (AESL_DEBUG_TRACE)
printf("\n  %%153 = fpext float %%storemerge10.1 to double, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1601_count);
  llvm_cbe_tmp__523 = (double )((double )llvm_cbe_storemerge10_2e_1);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__523, *(long long*)(&llvm_cbe_tmp__523));
if (AESL_DEBUG_TRACE)
printf("\n  %%154 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%153) nounwind, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1602_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__523);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__523, *(long long*)(&llvm_cbe_tmp__523));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__524);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%155 = or i32 %%141, 2, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1620_count);
  llvm_cbe_tmp__525 = (unsigned int )llvm_cbe_tmp__513 | 2u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__525);
if (AESL_DEBUG_TRACE)
printf("\n  %%156 = sext i32 %%155 to i64, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1621_count);
  llvm_cbe_tmp__526 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__525);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__526);
if (AESL_DEBUG_TRACE)
printf("\n  %%157 = getelementptr inbounds [64 x float]* %%V, i64 0, i64 %%156, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1622_count);
  llvm_cbe_tmp__527 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__526))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__526));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__526) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'V' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%158 = load float* %%157, align 8, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1623_count);
  llvm_cbe_tmp__528 = (float )*llvm_cbe_tmp__527;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__528, *(int*)(&llvm_cbe_tmp__528));
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge10.2 = select i1 %%159, float 1.000000e+00, float 0.000000e+00, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge10_2e_2_count);
  llvm_cbe_storemerge10_2e_2 = (float )(((llvm_fcmp_ogt(llvm_cbe_tmp__528, 0x1p-1))) ? ((float )0x1p0) : ((float )0x0p0));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10.2 = %f,  0x%x\n", llvm_cbe_storemerge10_2e_2, *(int*)(&llvm_cbe_storemerge10_2e_2));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__526) < 64 && "Write access out of array 'V' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%storemerge10.2, float* %%157, align 8, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1625_count);
  *llvm_cbe_tmp__527 = llvm_cbe_storemerge10_2e_2;
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10.2 = %f\n", llvm_cbe_storemerge10_2e_2);
if (AESL_DEBUG_TRACE)
printf("\n  %%160 = fpext float %%storemerge10.2 to double, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1626_count);
  llvm_cbe_tmp__529 = (double )((double )llvm_cbe_storemerge10_2e_2);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__529, *(long long*)(&llvm_cbe_tmp__529));
if (AESL_DEBUG_TRACE)
printf("\n  %%161 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%160) nounwind, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1627_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__529);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__529, *(long long*)(&llvm_cbe_tmp__529));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__530);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%162 = or i32 %%141, 3, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1645_count);
  llvm_cbe_tmp__531 = (unsigned int )llvm_cbe_tmp__513 | 3u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__531);
if (AESL_DEBUG_TRACE)
printf("\n  %%163 = sext i32 %%162 to i64, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1646_count);
  llvm_cbe_tmp__532 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__531);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__532);
if (AESL_DEBUG_TRACE)
printf("\n  %%164 = getelementptr inbounds [64 x float]* %%V, i64 0, i64 %%163, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1647_count);
  llvm_cbe_tmp__533 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__532))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__532));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__532) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'V' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%165 = load float* %%164, align 4, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1648_count);
  llvm_cbe_tmp__534 = (float )*llvm_cbe_tmp__533;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__534, *(int*)(&llvm_cbe_tmp__534));
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge10.3 = select i1 %%166, float 1.000000e+00, float 0.000000e+00, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge10_2e_3_count);
  llvm_cbe_storemerge10_2e_3 = (float )(((llvm_fcmp_ogt(llvm_cbe_tmp__534, 0x1p-1))) ? ((float )0x1p0) : ((float )0x0p0));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10.3 = %f,  0x%x\n", llvm_cbe_storemerge10_2e_3, *(int*)(&llvm_cbe_storemerge10_2e_3));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__532) < 64 && "Write access out of array 'V' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%storemerge10.3, float* %%164, align 4, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1650_count);
  *llvm_cbe_tmp__533 = llvm_cbe_storemerge10_2e_3;
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10.3 = %f\n", llvm_cbe_storemerge10_2e_3);
if (AESL_DEBUG_TRACE)
printf("\n  %%167 = fpext float %%storemerge10.3 to double, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1651_count);
  llvm_cbe_tmp__535 = (double )((double )llvm_cbe_storemerge10_2e_3);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__535, *(long long*)(&llvm_cbe_tmp__535));
if (AESL_DEBUG_TRACE)
printf("\n  %%168 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%167) nounwind, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1652_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__535);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__535, *(long long*)(&llvm_cbe_tmp__535));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__536);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%169 = or i32 %%141, 4, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1670_count);
  llvm_cbe_tmp__537 = (unsigned int )llvm_cbe_tmp__513 | 4u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__537);
if (AESL_DEBUG_TRACE)
printf("\n  %%170 = sext i32 %%169 to i64, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1671_count);
  llvm_cbe_tmp__538 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__537);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__538);
if (AESL_DEBUG_TRACE)
printf("\n  %%171 = getelementptr inbounds [64 x float]* %%V, i64 0, i64 %%170, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1672_count);
  llvm_cbe_tmp__539 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__538))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__538));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__538) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'V' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%172 = load float* %%171, align 16, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1673_count);
  llvm_cbe_tmp__540 = (float )*llvm_cbe_tmp__539;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__540, *(int*)(&llvm_cbe_tmp__540));
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge10.4 = select i1 %%173, float 1.000000e+00, float 0.000000e+00, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge10_2e_4_count);
  llvm_cbe_storemerge10_2e_4 = (float )(((llvm_fcmp_ogt(llvm_cbe_tmp__540, 0x1p-1))) ? ((float )0x1p0) : ((float )0x0p0));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10.4 = %f,  0x%x\n", llvm_cbe_storemerge10_2e_4, *(int*)(&llvm_cbe_storemerge10_2e_4));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__538) < 64 && "Write access out of array 'V' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%storemerge10.4, float* %%171, align 16, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1675_count);
  *llvm_cbe_tmp__539 = llvm_cbe_storemerge10_2e_4;
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10.4 = %f\n", llvm_cbe_storemerge10_2e_4);
if (AESL_DEBUG_TRACE)
printf("\n  %%174 = fpext float %%storemerge10.4 to double, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1676_count);
  llvm_cbe_tmp__541 = (double )((double )llvm_cbe_storemerge10_2e_4);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__541, *(long long*)(&llvm_cbe_tmp__541));
if (AESL_DEBUG_TRACE)
printf("\n  %%175 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%174) nounwind, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1677_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__541);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__541, *(long long*)(&llvm_cbe_tmp__541));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__542);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%176 = or i32 %%141, 5, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1695_count);
  llvm_cbe_tmp__543 = (unsigned int )llvm_cbe_tmp__513 | 5u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__543);
if (AESL_DEBUG_TRACE)
printf("\n  %%177 = sext i32 %%176 to i64, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1696_count);
  llvm_cbe_tmp__544 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__543);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__544);
if (AESL_DEBUG_TRACE)
printf("\n  %%178 = getelementptr inbounds [64 x float]* %%V, i64 0, i64 %%177, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1697_count);
  llvm_cbe_tmp__545 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__544))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__544));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__544) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'V' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%179 = load float* %%178, align 4, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1698_count);
  llvm_cbe_tmp__546 = (float )*llvm_cbe_tmp__545;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__546, *(int*)(&llvm_cbe_tmp__546));
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge10.5 = select i1 %%180, float 1.000000e+00, float 0.000000e+00, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge10_2e_5_count);
  llvm_cbe_storemerge10_2e_5 = (float )(((llvm_fcmp_ogt(llvm_cbe_tmp__546, 0x1p-1))) ? ((float )0x1p0) : ((float )0x0p0));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10.5 = %f,  0x%x\n", llvm_cbe_storemerge10_2e_5, *(int*)(&llvm_cbe_storemerge10_2e_5));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__544) < 64 && "Write access out of array 'V' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%storemerge10.5, float* %%178, align 4, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1700_count);
  *llvm_cbe_tmp__545 = llvm_cbe_storemerge10_2e_5;
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10.5 = %f\n", llvm_cbe_storemerge10_2e_5);
if (AESL_DEBUG_TRACE)
printf("\n  %%181 = fpext float %%storemerge10.5 to double, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1701_count);
  llvm_cbe_tmp__547 = (double )((double )llvm_cbe_storemerge10_2e_5);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__547, *(long long*)(&llvm_cbe_tmp__547));
if (AESL_DEBUG_TRACE)
printf("\n  %%182 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%181) nounwind, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1702_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__547);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__547, *(long long*)(&llvm_cbe_tmp__547));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__548);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%183 = or i32 %%141, 6, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1720_count);
  llvm_cbe_tmp__549 = (unsigned int )llvm_cbe_tmp__513 | 6u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__549);
if (AESL_DEBUG_TRACE)
printf("\n  %%184 = sext i32 %%183 to i64, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1721_count);
  llvm_cbe_tmp__550 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__549);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__550);
if (AESL_DEBUG_TRACE)
printf("\n  %%185 = getelementptr inbounds [64 x float]* %%V, i64 0, i64 %%184, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1722_count);
  llvm_cbe_tmp__551 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__550))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__550));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__550) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'V' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%186 = load float* %%185, align 8, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1723_count);
  llvm_cbe_tmp__552 = (float )*llvm_cbe_tmp__551;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__552, *(int*)(&llvm_cbe_tmp__552));
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge10.6 = select i1 %%187, float 1.000000e+00, float 0.000000e+00, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge10_2e_6_count);
  llvm_cbe_storemerge10_2e_6 = (float )(((llvm_fcmp_ogt(llvm_cbe_tmp__552, 0x1p-1))) ? ((float )0x1p0) : ((float )0x0p0));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10.6 = %f,  0x%x\n", llvm_cbe_storemerge10_2e_6, *(int*)(&llvm_cbe_storemerge10_2e_6));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__550) < 64 && "Write access out of array 'V' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%storemerge10.6, float* %%185, align 8, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1725_count);
  *llvm_cbe_tmp__551 = llvm_cbe_storemerge10_2e_6;
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10.6 = %f\n", llvm_cbe_storemerge10_2e_6);
if (AESL_DEBUG_TRACE)
printf("\n  %%188 = fpext float %%storemerge10.6 to double, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1726_count);
  llvm_cbe_tmp__553 = (double )((double )llvm_cbe_storemerge10_2e_6);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__553, *(long long*)(&llvm_cbe_tmp__553));
if (AESL_DEBUG_TRACE)
printf("\n  %%189 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%188) nounwind, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1727_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__553);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__553, *(long long*)(&llvm_cbe_tmp__553));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__554);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%190 = or i32 %%141, 7, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1745_count);
  llvm_cbe_tmp__555 = (unsigned int )llvm_cbe_tmp__513 | 7u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__555);
if (AESL_DEBUG_TRACE)
printf("\n  %%191 = sext i32 %%190 to i64, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1746_count);
  llvm_cbe_tmp__556 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__555);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__556);
if (AESL_DEBUG_TRACE)
printf("\n  %%192 = getelementptr inbounds [64 x float]* %%V, i64 0, i64 %%191, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1747_count);
  llvm_cbe_tmp__557 = (float *)(&llvm_cbe_V[(((signed long long )llvm_cbe_tmp__556))
#ifdef AESL_BC_SIM
 % 64
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__556));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__556) < 64)) fprintf(stderr, "%s:%d: warning: Read access out of array 'V' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%193 = load float* %%192, align 4, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1748_count);
  llvm_cbe_tmp__558 = (float )*llvm_cbe_tmp__557;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__558, *(int*)(&llvm_cbe_tmp__558));
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge10.7 = select i1 %%194, float 1.000000e+00, float 0.000000e+00, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge10_2e_7_count);
  llvm_cbe_storemerge10_2e_7 = (float )(((llvm_fcmp_ogt(llvm_cbe_tmp__558, 0x1p-1))) ? ((float )0x1p0) : ((float )0x0p0));
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10.7 = %f,  0x%x\n", llvm_cbe_storemerge10_2e_7, *(int*)(&llvm_cbe_storemerge10_2e_7));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__556) < 64 && "Write access out of array 'V' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%storemerge10.7, float* %%192, align 4, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1750_count);
  *llvm_cbe_tmp__557 = llvm_cbe_storemerge10_2e_7;
if (AESL_DEBUG_TRACE)
printf("\nstoremerge10.7 = %f\n", llvm_cbe_storemerge10_2e_7);
if (AESL_DEBUG_TRACE)
printf("\n  %%195 = fpext float %%storemerge10.7 to double, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1751_count);
  llvm_cbe_tmp__559 = (double )((double )llvm_cbe_storemerge10_2e_7);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__559, *(long long*)(&llvm_cbe_tmp__559));
if (AESL_DEBUG_TRACE)
printf("\n  %%196 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @aesl_internal_.str2, i64 0, i64 0), double %%195) nounwind, !dbg !17 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1752_count);
  printf(( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 5
#endif
])), llvm_cbe_tmp__559);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__559, *(long long*)(&llvm_cbe_tmp__559));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__560);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%puts9 = call i32 @puts(i8* getelementptr inbounds ([2 x i8]* @aesl_internal_str3, i64 0, i64 0)), !dbg !19 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_puts9_count);
  puts(( char *)((&aesl_internal_str3[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 2
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts9 = 0x%X",llvm_cbe_puts9);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%197 = add nsw i32 %%storemerge112, 1, !dbg !18 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_1770_count);
  llvm_cbe_tmp__561 = (unsigned int )((unsigned int )(llvm_cbe_storemerge112&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__561&4294967295ull)));
  if (((llvm_cbe_tmp__561&4294967295U) == (8u&4294967295U))) {
    goto llvm_cbe_tmp__567;
  } else {
    llvm_cbe_storemerge112__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__561;   /* for PHI node */
    goto llvm_cbe_tmp__566;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__567:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @main}\n");
  return 0u;
}

