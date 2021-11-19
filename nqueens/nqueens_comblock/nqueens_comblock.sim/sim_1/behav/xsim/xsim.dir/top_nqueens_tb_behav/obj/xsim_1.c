/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_500(char*, char *);
extern void execute_501(char*, char *);
extern void execute_469(char*, char *);
extern void execute_470(char*, char *);
extern void execute_471(char*, char *);
extern void execute_472(char*, char *);
extern void execute_473(char*, char *);
extern void execute_474(char*, char *);
extern void execute_475(char*, char *);
extern void execute_476(char*, char *);
extern void execute_477(char*, char *);
extern void execute_478(char*, char *);
extern void execute_479(char*, char *);
extern void execute_480(char*, char *);
extern void execute_481(char*, char *);
extern void execute_482(char*, char *);
extern void execute_483(char*, char *);
extern void execute_484(char*, char *);
extern void execute_485(char*, char *);
extern void execute_486(char*, char *);
extern void execute_487(char*, char *);
extern void execute_488(char*, char *);
extern void execute_489(char*, char *);
extern void execute_490(char*, char *);
extern void execute_491(char*, char *);
extern void execute_492(char*, char *);
extern void execute_493(char*, char *);
extern void execute_494(char*, char *);
extern void execute_495(char*, char *);
extern void execute_496(char*, char *);
extern void execute_497(char*, char *);
extern void execute_498(char*, char *);
extern void execute_499(char*, char *);
extern void execute_60(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_63(char*, char *);
extern void execute_104(char*, char *);
extern void execute_105(char*, char *);
extern void execute_106(char*, char *);
extern void execute_107(char*, char *);
extern void execute_108(char*, char *);
extern void execute_65(char*, char *);
extern void execute_67(char*, char *);
extern void execute_69(char*, char *);
extern void execute_71(char*, char *);
extern void execute_73(char*, char *);
extern void execute_75(char*, char *);
extern void execute_77(char*, char *);
extern void execute_79(char*, char *);
extern void execute_81(char*, char *);
extern void execute_84(char*, char *);
extern void execute_86(char*, char *);
extern void execute_88(char*, char *);
extern void execute_90(char*, char *);
extern void execute_92(char*, char *);
extern void execute_94(char*, char *);
extern void execute_96(char*, char *);
extern void execute_98(char*, char *);
extern void execute_100(char*, char *);
extern void execute_102(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_50(char*, char *);
extern void execute_51(char*, char *);
extern void execute_53(char*, char *);
extern void execute_54(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_57(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_123(char*, char *);
extern void execute_124(char*, char *);
extern void execute_125(char*, char *);
extern void execute_126(char*, char *);
extern void execute_163(char*, char *);
extern void execute_164(char*, char *);
extern void execute_165(char*, char *);
extern void execute_166(char*, char *);
extern void execute_167(char*, char *);
extern void execute_128(char*, char *);
extern void execute_130(char*, char *);
extern void execute_132(char*, char *);
extern void execute_134(char*, char *);
extern void execute_136(char*, char *);
extern void execute_138(char*, char *);
extern void execute_140(char*, char *);
extern void execute_142(char*, char *);
extern void execute_145(char*, char *);
extern void execute_147(char*, char *);
extern void execute_149(char*, char *);
extern void execute_151(char*, char *);
extern void execute_153(char*, char *);
extern void execute_155(char*, char *);
extern void execute_157(char*, char *);
extern void execute_159(char*, char *);
extern void execute_161(char*, char *);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_119(char*, char *);
extern void execute_120(char*, char *);
extern void execute_121(char*, char *);
extern void execute_122(char*, char *);
extern void execute_182(char*, char *);
extern void execute_183(char*, char *);
extern void execute_184(char*, char *);
extern void execute_185(char*, char *);
extern void execute_218(char*, char *);
extern void execute_219(char*, char *);
extern void execute_220(char*, char *);
extern void execute_221(char*, char *);
extern void execute_222(char*, char *);
extern void execute_187(char*, char *);
extern void execute_189(char*, char *);
extern void execute_191(char*, char *);
extern void execute_193(char*, char *);
extern void execute_195(char*, char *);
extern void execute_197(char*, char *);
extern void execute_199(char*, char *);
extern void execute_202(char*, char *);
extern void execute_204(char*, char *);
extern void execute_206(char*, char *);
extern void execute_208(char*, char *);
extern void execute_210(char*, char *);
extern void execute_212(char*, char *);
extern void execute_214(char*, char *);
extern void execute_216(char*, char *);
extern void execute_175(char*, char *);
extern void execute_176(char*, char *);
extern void execute_177(char*, char *);
extern void execute_178(char*, char *);
extern void execute_179(char*, char *);
extern void execute_180(char*, char *);
extern void execute_181(char*, char *);
extern void execute_237(char*, char *);
extern void execute_238(char*, char *);
extern void execute_239(char*, char *);
extern void execute_240(char*, char *);
extern void execute_269(char*, char *);
extern void execute_270(char*, char *);
extern void execute_271(char*, char *);
extern void execute_272(char*, char *);
extern void execute_273(char*, char *);
extern void execute_242(char*, char *);
extern void execute_244(char*, char *);
extern void execute_246(char*, char *);
extern void execute_248(char*, char *);
extern void execute_250(char*, char *);
extern void execute_252(char*, char *);
extern void execute_255(char*, char *);
extern void execute_257(char*, char *);
extern void execute_259(char*, char *);
extern void execute_261(char*, char *);
extern void execute_263(char*, char *);
extern void execute_265(char*, char *);
extern void execute_267(char*, char *);
extern void execute_230(char*, char *);
extern void execute_231(char*, char *);
extern void execute_232(char*, char *);
extern void execute_233(char*, char *);
extern void execute_234(char*, char *);
extern void execute_235(char*, char *);
extern void execute_236(char*, char *);
extern void execute_288(char*, char *);
extern void execute_289(char*, char *);
extern void execute_290(char*, char *);
extern void execute_291(char*, char *);
extern void execute_316(char*, char *);
extern void execute_317(char*, char *);
extern void execute_318(char*, char *);
extern void execute_319(char*, char *);
extern void execute_320(char*, char *);
extern void execute_293(char*, char *);
extern void execute_295(char*, char *);
extern void execute_297(char*, char *);
extern void execute_299(char*, char *);
extern void execute_301(char*, char *);
extern void execute_304(char*, char *);
extern void execute_306(char*, char *);
extern void execute_308(char*, char *);
extern void execute_310(char*, char *);
extern void execute_312(char*, char *);
extern void execute_314(char*, char *);
extern void execute_281(char*, char *);
extern void execute_282(char*, char *);
extern void execute_283(char*, char *);
extern void execute_284(char*, char *);
extern void execute_285(char*, char *);
extern void execute_286(char*, char *);
extern void execute_287(char*, char *);
extern void execute_335(char*, char *);
extern void execute_336(char*, char *);
extern void execute_337(char*, char *);
extern void execute_338(char*, char *);
extern void execute_359(char*, char *);
extern void execute_360(char*, char *);
extern void execute_361(char*, char *);
extern void execute_362(char*, char *);
extern void execute_363(char*, char *);
extern void execute_340(char*, char *);
extern void execute_342(char*, char *);
extern void execute_344(char*, char *);
extern void execute_346(char*, char *);
extern void execute_349(char*, char *);
extern void execute_351(char*, char *);
extern void execute_353(char*, char *);
extern void execute_355(char*, char *);
extern void execute_357(char*, char *);
extern void execute_328(char*, char *);
extern void execute_329(char*, char *);
extern void execute_330(char*, char *);
extern void execute_331(char*, char *);
extern void execute_332(char*, char *);
extern void execute_333(char*, char *);
extern void execute_334(char*, char *);
extern void execute_378(char*, char *);
extern void execute_379(char*, char *);
extern void execute_380(char*, char *);
extern void execute_381(char*, char *);
extern void execute_398(char*, char *);
extern void execute_399(char*, char *);
extern void execute_400(char*, char *);
extern void execute_401(char*, char *);
extern void execute_402(char*, char *);
extern void execute_383(char*, char *);
extern void execute_385(char*, char *);
extern void execute_387(char*, char *);
extern void execute_390(char*, char *);
extern void execute_392(char*, char *);
extern void execute_394(char*, char *);
extern void execute_396(char*, char *);
extern void execute_371(char*, char *);
extern void execute_372(char*, char *);
extern void execute_373(char*, char *);
extern void execute_374(char*, char *);
extern void execute_375(char*, char *);
extern void execute_376(char*, char *);
extern void execute_377(char*, char *);
extern void execute_417(char*, char *);
extern void execute_418(char*, char *);
extern void execute_419(char*, char *);
extern void execute_420(char*, char *);
extern void execute_433(char*, char *);
extern void execute_434(char*, char *);
extern void execute_435(char*, char *);
extern void execute_436(char*, char *);
extern void execute_437(char*, char *);
extern void execute_422(char*, char *);
extern void execute_424(char*, char *);
extern void execute_427(char*, char *);
extern void execute_429(char*, char *);
extern void execute_431(char*, char *);
extern void execute_410(char*, char *);
extern void execute_411(char*, char *);
extern void execute_412(char*, char *);
extern void execute_413(char*, char *);
extern void execute_414(char*, char *);
extern void execute_415(char*, char *);
extern void execute_416(char*, char *);
extern void execute_452(char*, char *);
extern void execute_453(char*, char *);
extern void execute_454(char*, char *);
extern void execute_455(char*, char *);
extern void execute_464(char*, char *);
extern void execute_465(char*, char *);
extern void execute_466(char*, char *);
extern void execute_467(char*, char *);
extern void execute_468(char*, char *);
extern void execute_457(char*, char *);
extern void execute_460(char*, char *);
extern void execute_462(char*, char *);
extern void execute_445(char*, char *);
extern void execute_446(char*, char *);
extern void execute_447(char*, char *);
extern void execute_448(char*, char *);
extern void execute_449(char*, char *);
extern void execute_450(char*, char *);
extern void execute_451(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[291] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_500, (funcp)execute_501, (funcp)execute_469, (funcp)execute_470, (funcp)execute_471, (funcp)execute_472, (funcp)execute_473, (funcp)execute_474, (funcp)execute_475, (funcp)execute_476, (funcp)execute_477, (funcp)execute_478, (funcp)execute_479, (funcp)execute_480, (funcp)execute_481, (funcp)execute_482, (funcp)execute_483, (funcp)execute_484, (funcp)execute_485, (funcp)execute_486, (funcp)execute_487, (funcp)execute_488, (funcp)execute_489, (funcp)execute_490, (funcp)execute_491, (funcp)execute_492, (funcp)execute_493, (funcp)execute_494, (funcp)execute_495, (funcp)execute_496, (funcp)execute_497, (funcp)execute_498, (funcp)execute_499, (funcp)execute_60, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_104, (funcp)execute_105, (funcp)execute_106, (funcp)execute_107, (funcp)execute_108, (funcp)execute_65, (funcp)execute_67, (funcp)execute_69, (funcp)execute_71, (funcp)execute_73, (funcp)execute_75, (funcp)execute_77, (funcp)execute_79, (funcp)execute_81, (funcp)execute_84, (funcp)execute_86, (funcp)execute_88, (funcp)execute_90, (funcp)execute_92, (funcp)execute_94, (funcp)execute_96, (funcp)execute_98, (funcp)execute_100, (funcp)execute_102, (funcp)execute_48, (funcp)execute_49, (funcp)execute_50, (funcp)execute_51, (funcp)execute_53, (funcp)execute_54, (funcp)execute_55, (funcp)execute_56, (funcp)execute_57, (funcp)execute_58, (funcp)execute_59, (funcp)execute_123, (funcp)execute_124, (funcp)execute_125, (funcp)execute_126, (funcp)execute_163, (funcp)execute_164, (funcp)execute_165, (funcp)execute_166, (funcp)execute_167, (funcp)execute_128, (funcp)execute_130, (funcp)execute_132, (funcp)execute_134, (funcp)execute_136, (funcp)execute_138, (funcp)execute_140, (funcp)execute_142, (funcp)execute_145, (funcp)execute_147, (funcp)execute_149, (funcp)execute_151, (funcp)execute_153, (funcp)execute_155, (funcp)execute_157, (funcp)execute_159, (funcp)execute_161, (funcp)execute_116, (funcp)execute_117, (funcp)execute_118, (funcp)execute_119, (funcp)execute_120, (funcp)execute_121, (funcp)execute_122, (funcp)execute_182, (funcp)execute_183, (funcp)execute_184, (funcp)execute_185, (funcp)execute_218, (funcp)execute_219, (funcp)execute_220, (funcp)execute_221, (funcp)execute_222, (funcp)execute_187, (funcp)execute_189, (funcp)execute_191, (funcp)execute_193, (funcp)execute_195, (funcp)execute_197, (funcp)execute_199, (funcp)execute_202, (funcp)execute_204, (funcp)execute_206, (funcp)execute_208, (funcp)execute_210, (funcp)execute_212, (funcp)execute_214, (funcp)execute_216, (funcp)execute_175, (funcp)execute_176, (funcp)execute_177, (funcp)execute_178, (funcp)execute_179, (funcp)execute_180, (funcp)execute_181, (funcp)execute_237, (funcp)execute_238, (funcp)execute_239, (funcp)execute_240, (funcp)execute_269, (funcp)execute_270, (funcp)execute_271, (funcp)execute_272, (funcp)execute_273, (funcp)execute_242, (funcp)execute_244, (funcp)execute_246, (funcp)execute_248, (funcp)execute_250, (funcp)execute_252, (funcp)execute_255, (funcp)execute_257, (funcp)execute_259, (funcp)execute_261, (funcp)execute_263, (funcp)execute_265, (funcp)execute_267, (funcp)execute_230, (funcp)execute_231, (funcp)execute_232, (funcp)execute_233, (funcp)execute_234, (funcp)execute_235, (funcp)execute_236, (funcp)execute_288, (funcp)execute_289, (funcp)execute_290, (funcp)execute_291, (funcp)execute_316, (funcp)execute_317, (funcp)execute_318, (funcp)execute_319, (funcp)execute_320, (funcp)execute_293, (funcp)execute_295, (funcp)execute_297, (funcp)execute_299, (funcp)execute_301, (funcp)execute_304, (funcp)execute_306, (funcp)execute_308, (funcp)execute_310, (funcp)execute_312, (funcp)execute_314, (funcp)execute_281, (funcp)execute_282, (funcp)execute_283, (funcp)execute_284, (funcp)execute_285, (funcp)execute_286, (funcp)execute_287, (funcp)execute_335, (funcp)execute_336, (funcp)execute_337, (funcp)execute_338, (funcp)execute_359, (funcp)execute_360, (funcp)execute_361, (funcp)execute_362, (funcp)execute_363, (funcp)execute_340, (funcp)execute_342, (funcp)execute_344, (funcp)execute_346, (funcp)execute_349, (funcp)execute_351, (funcp)execute_353, (funcp)execute_355, (funcp)execute_357, (funcp)execute_328, (funcp)execute_329, (funcp)execute_330, (funcp)execute_331, (funcp)execute_332, (funcp)execute_333, (funcp)execute_334, (funcp)execute_378, (funcp)execute_379, (funcp)execute_380, (funcp)execute_381, (funcp)execute_398, (funcp)execute_399, (funcp)execute_400, (funcp)execute_401, (funcp)execute_402, (funcp)execute_383, (funcp)execute_385, (funcp)execute_387, (funcp)execute_390, (funcp)execute_392, (funcp)execute_394, (funcp)execute_396, (funcp)execute_371, (funcp)execute_372, (funcp)execute_373, (funcp)execute_374, (funcp)execute_375, (funcp)execute_376, (funcp)execute_377, (funcp)execute_417, (funcp)execute_418, (funcp)execute_419, (funcp)execute_420, (funcp)execute_433, (funcp)execute_434, (funcp)execute_435, (funcp)execute_436, (funcp)execute_437, (funcp)execute_422, (funcp)execute_424, (funcp)execute_427, (funcp)execute_429, (funcp)execute_431, (funcp)execute_410, (funcp)execute_411, (funcp)execute_412, (funcp)execute_413, (funcp)execute_414, (funcp)execute_415, (funcp)execute_416, (funcp)execute_452, (funcp)execute_453, (funcp)execute_454, (funcp)execute_455, (funcp)execute_464, (funcp)execute_465, (funcp)execute_466, (funcp)execute_467, (funcp)execute_468, (funcp)execute_457, (funcp)execute_460, (funcp)execute_462, (funcp)execute_445, (funcp)execute_446, (funcp)execute_447, (funcp)execute_448, (funcp)execute_449, (funcp)execute_450, (funcp)execute_451, (funcp)vlog_transfunc_eventcallback, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_36};
const int NumRelocateId= 291;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/top_nqueens_tb_behav/xsim.reloc",  (void **)funcTab, 291);
	iki_vhdl_file_variable_register(dp + 85088);
	iki_vhdl_file_variable_register(dp + 85144);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/top_nqueens_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/top_nqueens_tb_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstantiate();

extern void implicit_HDL_SCcleanup();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/top_nqueens_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/top_nqueens_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/top_nqueens_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
