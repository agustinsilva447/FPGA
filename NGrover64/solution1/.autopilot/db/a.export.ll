; ModuleID = 'C:/Users/caos1/Desktop/Tesis/Definitivo/NGrover64/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@one_half_table2 = internal unnamed_addr constant [64 x i53] [i53 1125899906842624, i53 562949953421312, i53 281474976710656, i53 140737488355328, i53 70368744177664, i53 35184372088832, i53 17592186044416, i53 8796093022208, i53 4398046511104, i53 2199023255552, i53 1099511627776, i53 549755813888, i53 274877906944, i53 137438953472, i53 68719476736, i53 34359738368, i53 17179869184, i53 8589934592, i53 4294967296, i53 2147483648, i53 1073741824, i53 536870912, i53 268435456, i53 134217728, i53 67108864, i53 33554432, i53 16777216, i53 8388608, i53 4194304, i53 2097152, i53 1048576, i53 524288, i53 262144, i53 131072, i53 65536, i53 32768, i53 16384, i53 8192, i53 4096, i53 2048, i53 1024, i53 512, i53 256, i53 128, i53 64, i53 32, i53 16, i53 8, i53 4, i53 2, i53 1, i53 0, i53 0, i53 0, i53 0, i53 0, i53 0, i53 0, i53 0, i53 0, i53 0, i53 0, i53 -4503599627370496, i53 2251799813685248]
@mask_table1 = internal unnamed_addr constant [64 x i52] [i52 2251799813685247, i52 1125899906842623, i52 562949953421311, i52 281474976710655, i52 140737488355327, i52 70368744177663, i52 35184372088831, i52 17592186044415, i52 8796093022207, i52 4398046511103, i52 2199023255551, i52 1099511627775, i52 549755813887, i52 274877906943, i52 137438953471, i52 68719476735, i52 34359738367, i52 17179869183, i52 8589934591, i52 4294967295, i52 2147483647, i52 1073741823, i52 536870911, i52 268435455, i52 134217727, i52 67108863, i52 33554431, i52 16777215, i52 8388607, i52 4194303, i52 2097151, i52 1048575, i52 524287, i52 262143, i52 131071, i52 65535, i52 32767, i52 16383, i52 8191, i52 4095, i52 2047, i52 1023, i52 511, i52 255, i52 127, i52 63, i52 31, i52 15, i52 7, i52 3, i52 1, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 0, i52 -1, i52 -1]
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1948]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@NGrover64_str = internal unnamed_addr constant [10 x i8] c"NGrover64\00"
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_4\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"bram\00", align 1
@p_str3 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1
@p_str2 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare float @llvm.sqrt.f32(float) nounwind readonly

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak float @_ssdm_op_Read.s_axilite.float(float) {
entry:
  ret float %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_6 = trunc i32 %empty to i8
  ret i8 %empty_6
}

define weak i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_7 = trunc i64 %empty to i6
  ret i6 %empty_7
}

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i12 @_ssdm_op_PartSelect.i12.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_8 = trunc i64 %empty to i12
  ret i12 %empty_8
}

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_9 = trunc i64 %empty to i11
  ret i11 %empty_9
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_10 = shl i64 1, %empty
  %empty_11 = and i64 %0, %empty_10
  %empty_12 = icmp ne i64 %empty_11, 0
  ret i1 %empty_12
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i12.i52(i12, i52) nounwind readnone {
entry:
  %empty = zext i12 %0 to i64
  %empty_13 = zext i52 %1 to i64
  %empty_14 = shl i64 %empty, 52
  %empty_15 = or i64 %empty_14, %empty_13
  ret i64 %empty_15
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1, i63) nounwind readnone {
entry:
  %empty = zext i1 %0 to i64
  %empty_16 = zext i63 %1 to i64
  %empty_17 = shl i64 %empty, 63
  %empty_18 = or i64 %empty_17, %empty_16
  ret i64 %empty_18
}

declare void @_GLOBAL__I_a1948() nounwind

declare void @_GLOBAL__I_a() nounwind

define void @NGrover64([64 x float]* %E1, [64 x float]* %B, float %C) nounwind {
_ifconv:
  call void (...)* @_ssdm_op_SpecBitsMap([64 x float]* %E1) nounwind, !map !1203
  call void (...)* @_ssdm_op_SpecBitsMap([64 x float]* %B) nounwind, !map !1209
  call void (...)* @_ssdm_op_SpecBitsMap(float %C) nounwind, !map !1213
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @NGrover64_str) nounwind
  %C_read = call float @_ssdm_op_Read.s_axilite.float(float %C) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float %C, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([64 x float]* %E1, [1 x i8]* @p_str1, [12 x i8]* @p_str3, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([64 x float]* %E1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([64 x float]* %B, [1 x i8]* @p_str1, [12 x i8]* @p_str3, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface([64 x float]* %B, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %E1_addr = getelementptr [64 x float]* %E1, i32 0, i32 0
  %E1_load = load float* %E1_addr, align 4
  %E1_load_to_int = bitcast float %E1_load to i32
  %tmp_10 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_to_int, i32 23, i32 30)
  %tmp_12 = trunc i32 %E1_load_to_int to i23
  %C_to_int = bitcast float %C_read to i32
  %tmp_16 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %C_to_int, i32 23, i32 30)
  %tmp_17 = trunc i32 %C_to_int to i23
  %notlhs = icmp ne i8 %tmp_10, -1
  %notrhs = icmp eq i23 %tmp_12, 0
  %tmp_18 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i8 %tmp_16, -1
  %notrhs1 = icmp eq i23 %tmp_17, 0
  %tmp_19 = or i1 %notrhs1, %notlhs1
  %tmp_20 = and i1 %tmp_18, %tmp_19
  %tmp_21 = fcmp ogt float %E1_load, %C_read
  %V_0 = and i1 %tmp_20, %tmp_21
  %M_1 = select i1 %V_0, float 1.000000e+00, float 0.000000e+00
  %E1_addr_1 = getelementptr [64 x float]* %E1, i32 0, i32 1
  %E1_load_1 = load float* %E1_addr_1, align 4
  %E1_load_1_to_int = bitcast float %E1_load_1 to i32
  %tmp_22 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_1_to_int, i32 23, i32 30)
  %tmp_23 = trunc i32 %E1_load_1_to_int to i23
  %notlhs2 = icmp ne i8 %tmp_22, -1
  %notrhs2 = icmp eq i23 %tmp_23, 0
  %tmp_24 = or i1 %notrhs2, %notlhs2
  %tmp_25 = and i1 %tmp_24, %tmp_19
  %tmp_26 = fcmp ogt float %E1_load_1, %C_read
  %tmp_27 = and i1 %tmp_25, %tmp_26
  %M_2_1 = fadd float %M_1, 1.000000e+00
  %M_1_1 = select i1 %tmp_27, float %M_2_1, float %M_1
  %E1_addr_2 = getelementptr [64 x float]* %E1, i32 0, i32 2
  %E1_load_2 = load float* %E1_addr_2, align 4
  %E1_load_2_to_int = bitcast float %E1_load_2 to i32
  %tmp_28 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_2_to_int, i32 23, i32 30)
  %tmp_29 = trunc i32 %E1_load_2_to_int to i23
  %notlhs4 = icmp ne i8 %tmp_28, -1
  %notrhs4 = icmp eq i23 %tmp_29, 0
  %tmp_30 = or i1 %notrhs4, %notlhs4
  %tmp_31 = and i1 %tmp_30, %tmp_19
  %tmp_32 = fcmp ogt float %E1_load_2, %C_read
  %tmp_33 = and i1 %tmp_31, %tmp_32
  %M_2_2 = fadd float %M_1_1, 1.000000e+00
  %M_1_2 = select i1 %tmp_33, float %M_2_2, float %M_1_1
  %E1_addr_3 = getelementptr [64 x float]* %E1, i32 0, i32 3
  %E1_load_3 = load float* %E1_addr_3, align 4
  %E1_load_3_to_int = bitcast float %E1_load_3 to i32
  %tmp_34 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_3_to_int, i32 23, i32 30)
  %tmp_35 = trunc i32 %E1_load_3_to_int to i23
  %notlhs6 = icmp ne i8 %tmp_34, -1
  %notrhs6 = icmp eq i23 %tmp_35, 0
  %tmp_36 = or i1 %notrhs6, %notlhs6
  %tmp_37 = and i1 %tmp_36, %tmp_19
  %tmp_38 = fcmp ogt float %E1_load_3, %C_read
  %tmp_39 = and i1 %tmp_37, %tmp_38
  %M_2_3 = fadd float %M_1_2, 1.000000e+00
  %M_1_3 = select i1 %tmp_39, float %M_2_3, float %M_1_2
  %E1_addr_4 = getelementptr [64 x float]* %E1, i32 0, i32 4
  %E1_load_4 = load float* %E1_addr_4, align 4
  %E1_load_4_to_int = bitcast float %E1_load_4 to i32
  %tmp_40 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_4_to_int, i32 23, i32 30)
  %tmp_41 = trunc i32 %E1_load_4_to_int to i23
  %notlhs8 = icmp ne i8 %tmp_40, -1
  %notrhs8 = icmp eq i23 %tmp_41, 0
  %tmp_42 = or i1 %notrhs8, %notlhs8
  %tmp_43 = and i1 %tmp_42, %tmp_19
  %tmp_44 = fcmp ogt float %E1_load_4, %C_read
  %tmp_45 = and i1 %tmp_43, %tmp_44
  %M_2_4 = fadd float %M_1_3, 1.000000e+00
  %M_1_4 = select i1 %tmp_45, float %M_2_4, float %M_1_3
  %E1_addr_5 = getelementptr [64 x float]* %E1, i32 0, i32 5
  %E1_load_5 = load float* %E1_addr_5, align 4
  %E1_load_5_to_int = bitcast float %E1_load_5 to i32
  %tmp_46 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_5_to_int, i32 23, i32 30)
  %tmp_47 = trunc i32 %E1_load_5_to_int to i23
  %notlhs3 = icmp ne i8 %tmp_46, -1
  %notrhs3 = icmp eq i23 %tmp_47, 0
  %tmp_48 = or i1 %notrhs3, %notlhs3
  %tmp_49 = and i1 %tmp_48, %tmp_19
  %tmp_50 = fcmp ogt float %E1_load_5, %C_read
  %tmp_51 = and i1 %tmp_49, %tmp_50
  %M_2_5 = fadd float %M_1_4, 1.000000e+00
  %M_1_5 = select i1 %tmp_51, float %M_2_5, float %M_1_4
  %E1_addr_6 = getelementptr [64 x float]* %E1, i32 0, i32 6
  %E1_load_6 = load float* %E1_addr_6, align 4
  %E1_load_6_to_int = bitcast float %E1_load_6 to i32
  %tmp_52 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_6_to_int, i32 23, i32 30)
  %tmp_53 = trunc i32 %E1_load_6_to_int to i23
  %notlhs5 = icmp ne i8 %tmp_52, -1
  %notrhs5 = icmp eq i23 %tmp_53, 0
  %tmp_54 = or i1 %notrhs5, %notlhs5
  %tmp_55 = and i1 %tmp_54, %tmp_19
  %tmp_56 = fcmp ogt float %E1_load_6, %C_read
  %tmp_57 = and i1 %tmp_55, %tmp_56
  %M_2_6 = fadd float %M_1_5, 1.000000e+00
  %M_1_6 = select i1 %tmp_57, float %M_2_6, float %M_1_5
  %E1_addr_7 = getelementptr [64 x float]* %E1, i32 0, i32 7
  %E1_load_7 = load float* %E1_addr_7, align 4
  %E1_load_7_to_int = bitcast float %E1_load_7 to i32
  %tmp_58 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_7_to_int, i32 23, i32 30)
  %tmp_59 = trunc i32 %E1_load_7_to_int to i23
  %notlhs7 = icmp ne i8 %tmp_58, -1
  %notrhs7 = icmp eq i23 %tmp_59, 0
  %tmp_60 = or i1 %notrhs7, %notlhs7
  %tmp_61 = and i1 %tmp_60, %tmp_19
  %tmp_62 = fcmp ogt float %E1_load_7, %C_read
  %tmp_63 = and i1 %tmp_61, %tmp_62
  %M_2_7 = fadd float %M_1_6, 1.000000e+00
  %M_1_7 = select i1 %tmp_63, float %M_2_7, float %M_1_6
  %E1_addr_8 = getelementptr [64 x float]* %E1, i32 0, i32 8
  %E1_load_8 = load float* %E1_addr_8, align 4
  %E1_load_8_to_int = bitcast float %E1_load_8 to i32
  %tmp_64 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_8_to_int, i32 23, i32 30)
  %tmp_65 = trunc i32 %E1_load_8_to_int to i23
  %notlhs9 = icmp ne i8 %tmp_64, -1
  %notrhs9 = icmp eq i23 %tmp_65, 0
  %tmp_66 = or i1 %notrhs9, %notlhs9
  %tmp_67 = and i1 %tmp_66, %tmp_19
  %tmp_68 = fcmp ogt float %E1_load_8, %C_read
  %tmp_69 = and i1 %tmp_67, %tmp_68
  %M_2_8 = fadd float %M_1_7, 1.000000e+00
  %M_1_8 = select i1 %tmp_69, float %M_2_8, float %M_1_7
  %E1_addr_9 = getelementptr [64 x float]* %E1, i32 0, i32 9
  %E1_load_9 = load float* %E1_addr_9, align 4
  %E1_load_9_to_int = bitcast float %E1_load_9 to i32
  %tmp_70 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_9_to_int, i32 23, i32 30)
  %tmp_71 = trunc i32 %E1_load_9_to_int to i23
  %notlhs10 = icmp ne i8 %tmp_70, -1
  %notrhs10 = icmp eq i23 %tmp_71, 0
  %tmp_72 = or i1 %notrhs10, %notlhs10
  %tmp_73 = and i1 %tmp_72, %tmp_19
  %tmp_74 = fcmp ogt float %E1_load_9, %C_read
  %tmp_75 = and i1 %tmp_73, %tmp_74
  %M_2_9 = fadd float %M_1_8, 1.000000e+00
  %M_1_9 = select i1 %tmp_75, float %M_2_9, float %M_1_8
  %E1_addr_10 = getelementptr [64 x float]* %E1, i32 0, i32 10
  %E1_load_10 = load float* %E1_addr_10, align 4
  %E1_load_10_to_int = bitcast float %E1_load_10 to i32
  %tmp_76 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_10_to_int, i32 23, i32 30)
  %tmp_77 = trunc i32 %E1_load_10_to_int to i23
  %notlhs11 = icmp ne i8 %tmp_76, -1
  %notrhs11 = icmp eq i23 %tmp_77, 0
  %tmp_78 = or i1 %notrhs11, %notlhs11
  %tmp_79 = and i1 %tmp_78, %tmp_19
  %tmp_80 = fcmp ogt float %E1_load_10, %C_read
  %tmp_81 = and i1 %tmp_79, %tmp_80
  %M_2_s = fadd float %M_1_9, 1.000000e+00
  %M_1_s = select i1 %tmp_81, float %M_2_s, float %M_1_9
  %E1_addr_11 = getelementptr [64 x float]* %E1, i32 0, i32 11
  %E1_load_11 = load float* %E1_addr_11, align 4
  %E1_load_11_to_int = bitcast float %E1_load_11 to i32
  %tmp_82 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_11_to_int, i32 23, i32 30)
  %tmp_83 = trunc i32 %E1_load_11_to_int to i23
  %notlhs12 = icmp ne i8 %tmp_82, -1
  %notrhs12 = icmp eq i23 %tmp_83, 0
  %tmp_84 = or i1 %notrhs12, %notlhs12
  %tmp_85 = and i1 %tmp_84, %tmp_19
  %tmp_86 = fcmp ogt float %E1_load_11, %C_read
  %tmp_87 = and i1 %tmp_85, %tmp_86
  %M_2_10 = fadd float %M_1_s, 1.000000e+00
  %M_1_10 = select i1 %tmp_87, float %M_2_10, float %M_1_s
  %E1_addr_12 = getelementptr [64 x float]* %E1, i32 0, i32 12
  %E1_load_12 = load float* %E1_addr_12, align 4
  %E1_load_12_to_int = bitcast float %E1_load_12 to i32
  %tmp_88 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_12_to_int, i32 23, i32 30)
  %tmp_89 = trunc i32 %E1_load_12_to_int to i23
  %notlhs13 = icmp ne i8 %tmp_88, -1
  %notrhs13 = icmp eq i23 %tmp_89, 0
  %tmp_90 = or i1 %notrhs13, %notlhs13
  %tmp_91 = and i1 %tmp_90, %tmp_19
  %tmp_92 = fcmp ogt float %E1_load_12, %C_read
  %tmp_93 = and i1 %tmp_91, %tmp_92
  %M_2_11 = fadd float %M_1_10, 1.000000e+00
  %M_1_11 = select i1 %tmp_93, float %M_2_11, float %M_1_10
  %E1_addr_13 = getelementptr [64 x float]* %E1, i32 0, i32 13
  %E1_load_13 = load float* %E1_addr_13, align 4
  %E1_load_13_to_int = bitcast float %E1_load_13 to i32
  %tmp_94 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_13_to_int, i32 23, i32 30)
  %tmp_95 = trunc i32 %E1_load_13_to_int to i23
  %notlhs14 = icmp ne i8 %tmp_94, -1
  %notrhs14 = icmp eq i23 %tmp_95, 0
  %tmp_96 = or i1 %notrhs14, %notlhs14
  %tmp_97 = and i1 %tmp_96, %tmp_19
  %tmp_98 = fcmp ogt float %E1_load_13, %C_read
  %tmp_99 = and i1 %tmp_97, %tmp_98
  %M_2_12 = fadd float %M_1_11, 1.000000e+00
  %M_1_12 = select i1 %tmp_99, float %M_2_12, float %M_1_11
  %E1_addr_14 = getelementptr [64 x float]* %E1, i32 0, i32 14
  %E1_load_14 = load float* %E1_addr_14, align 4
  %E1_load_14_to_int = bitcast float %E1_load_14 to i32
  %tmp_100 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_14_to_int, i32 23, i32 30)
  %tmp_101 = trunc i32 %E1_load_14_to_int to i23
  %notlhs15 = icmp ne i8 %tmp_100, -1
  %notrhs15 = icmp eq i23 %tmp_101, 0
  %tmp_102 = or i1 %notrhs15, %notlhs15
  %tmp_103 = and i1 %tmp_102, %tmp_19
  %tmp_104 = fcmp ogt float %E1_load_14, %C_read
  %tmp_105 = and i1 %tmp_103, %tmp_104
  %M_2_13 = fadd float %M_1_12, 1.000000e+00
  %M_1_13 = select i1 %tmp_105, float %M_2_13, float %M_1_12
  %E1_addr_15 = getelementptr [64 x float]* %E1, i32 0, i32 15
  %E1_load_15 = load float* %E1_addr_15, align 4
  %E1_load_15_to_int = bitcast float %E1_load_15 to i32
  %tmp_106 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_15_to_int, i32 23, i32 30)
  %tmp_107 = trunc i32 %E1_load_15_to_int to i23
  %notlhs16 = icmp ne i8 %tmp_106, -1
  %notrhs16 = icmp eq i23 %tmp_107, 0
  %tmp_108 = or i1 %notrhs16, %notlhs16
  %tmp_109 = and i1 %tmp_108, %tmp_19
  %tmp_110 = fcmp ogt float %E1_load_15, %C_read
  %tmp_111 = and i1 %tmp_109, %tmp_110
  %M_2_14 = fadd float %M_1_13, 1.000000e+00
  %M_1_14 = select i1 %tmp_111, float %M_2_14, float %M_1_13
  %E1_addr_16 = getelementptr [64 x float]* %E1, i32 0, i32 16
  %E1_load_16 = load float* %E1_addr_16, align 4
  %E1_load_16_to_int = bitcast float %E1_load_16 to i32
  %tmp_112 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_16_to_int, i32 23, i32 30)
  %tmp_113 = trunc i32 %E1_load_16_to_int to i23
  %notlhs17 = icmp ne i8 %tmp_112, -1
  %notrhs17 = icmp eq i23 %tmp_113, 0
  %tmp_114 = or i1 %notrhs17, %notlhs17
  %tmp_115 = and i1 %tmp_114, %tmp_19
  %tmp_116 = fcmp ogt float %E1_load_16, %C_read
  %tmp_117 = and i1 %tmp_115, %tmp_116
  %M_2_15 = fadd float %M_1_14, 1.000000e+00
  %M_1_15 = select i1 %tmp_117, float %M_2_15, float %M_1_14
  %E1_addr_17 = getelementptr [64 x float]* %E1, i32 0, i32 17
  %E1_load_17 = load float* %E1_addr_17, align 4
  %E1_load_17_to_int = bitcast float %E1_load_17 to i32
  %tmp_118 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_17_to_int, i32 23, i32 30)
  %tmp_119 = trunc i32 %E1_load_17_to_int to i23
  %notlhs18 = icmp ne i8 %tmp_118, -1
  %notrhs18 = icmp eq i23 %tmp_119, 0
  %tmp_120 = or i1 %notrhs18, %notlhs18
  %tmp_121 = and i1 %tmp_120, %tmp_19
  %tmp_122 = fcmp ogt float %E1_load_17, %C_read
  %tmp_123 = and i1 %tmp_121, %tmp_122
  %M_2_16 = fadd float %M_1_15, 1.000000e+00
  %M_1_16 = select i1 %tmp_123, float %M_2_16, float %M_1_15
  %E1_addr_18 = getelementptr [64 x float]* %E1, i32 0, i32 18
  %E1_load_18 = load float* %E1_addr_18, align 4
  %E1_load_18_to_int = bitcast float %E1_load_18 to i32
  %tmp_124 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_18_to_int, i32 23, i32 30)
  %tmp_125 = trunc i32 %E1_load_18_to_int to i23
  %notlhs19 = icmp ne i8 %tmp_124, -1
  %notrhs19 = icmp eq i23 %tmp_125, 0
  %tmp_126 = or i1 %notrhs19, %notlhs19
  %tmp_127 = and i1 %tmp_126, %tmp_19
  %tmp_128 = fcmp ogt float %E1_load_18, %C_read
  %tmp_129 = and i1 %tmp_127, %tmp_128
  %M_2_17 = fadd float %M_1_16, 1.000000e+00
  %M_1_17 = select i1 %tmp_129, float %M_2_17, float %M_1_16
  %E1_addr_19 = getelementptr [64 x float]* %E1, i32 0, i32 19
  %E1_load_19 = load float* %E1_addr_19, align 4
  %E1_load_19_to_int = bitcast float %E1_load_19 to i32
  %tmp_130 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_19_to_int, i32 23, i32 30)
  %tmp_131 = trunc i32 %E1_load_19_to_int to i23
  %notlhs20 = icmp ne i8 %tmp_130, -1
  %notrhs20 = icmp eq i23 %tmp_131, 0
  %tmp_132 = or i1 %notrhs20, %notlhs20
  %tmp_133 = and i1 %tmp_132, %tmp_19
  %tmp_134 = fcmp ogt float %E1_load_19, %C_read
  %tmp_135 = and i1 %tmp_133, %tmp_134
  %M_2_18 = fadd float %M_1_17, 1.000000e+00
  %M_1_18 = select i1 %tmp_135, float %M_2_18, float %M_1_17
  %E1_addr_20 = getelementptr [64 x float]* %E1, i32 0, i32 20
  %E1_load_20 = load float* %E1_addr_20, align 4
  %E1_load_20_to_int = bitcast float %E1_load_20 to i32
  %tmp_136 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_20_to_int, i32 23, i32 30)
  %tmp_137 = trunc i32 %E1_load_20_to_int to i23
  %notlhs21 = icmp ne i8 %tmp_136, -1
  %notrhs21 = icmp eq i23 %tmp_137, 0
  %tmp_138 = or i1 %notrhs21, %notlhs21
  %tmp_139 = and i1 %tmp_138, %tmp_19
  %tmp_140 = fcmp ogt float %E1_load_20, %C_read
  %tmp_141 = and i1 %tmp_139, %tmp_140
  %M_2_19 = fadd float %M_1_18, 1.000000e+00
  %M_1_19 = select i1 %tmp_141, float %M_2_19, float %M_1_18
  %E1_addr_21 = getelementptr [64 x float]* %E1, i32 0, i32 21
  %E1_load_21 = load float* %E1_addr_21, align 4
  %E1_load_21_to_int = bitcast float %E1_load_21 to i32
  %tmp_142 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_21_to_int, i32 23, i32 30)
  %tmp_143 = trunc i32 %E1_load_21_to_int to i23
  %notlhs22 = icmp ne i8 %tmp_142, -1
  %notrhs22 = icmp eq i23 %tmp_143, 0
  %tmp_144 = or i1 %notrhs22, %notlhs22
  %tmp_145 = and i1 %tmp_144, %tmp_19
  %tmp_146 = fcmp ogt float %E1_load_21, %C_read
  %tmp_147 = and i1 %tmp_145, %tmp_146
  %M_2_20 = fadd float %M_1_19, 1.000000e+00
  %M_1_20 = select i1 %tmp_147, float %M_2_20, float %M_1_19
  %E1_addr_22 = getelementptr [64 x float]* %E1, i32 0, i32 22
  %E1_load_22 = load float* %E1_addr_22, align 4
  %E1_load_22_to_int = bitcast float %E1_load_22 to i32
  %tmp_148 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_22_to_int, i32 23, i32 30)
  %tmp_149 = trunc i32 %E1_load_22_to_int to i23
  %notlhs23 = icmp ne i8 %tmp_148, -1
  %notrhs23 = icmp eq i23 %tmp_149, 0
  %tmp_150 = or i1 %notrhs23, %notlhs23
  %tmp_151 = and i1 %tmp_150, %tmp_19
  %tmp_152 = fcmp ogt float %E1_load_22, %C_read
  %tmp_153 = and i1 %tmp_151, %tmp_152
  %M_2_21 = fadd float %M_1_20, 1.000000e+00
  %M_1_21 = select i1 %tmp_153, float %M_2_21, float %M_1_20
  %E1_addr_23 = getelementptr [64 x float]* %E1, i32 0, i32 23
  %E1_load_23 = load float* %E1_addr_23, align 4
  %E1_load_23_to_int = bitcast float %E1_load_23 to i32
  %tmp_154 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_23_to_int, i32 23, i32 30)
  %tmp_155 = trunc i32 %E1_load_23_to_int to i23
  %notlhs24 = icmp ne i8 %tmp_154, -1
  %notrhs24 = icmp eq i23 %tmp_155, 0
  %tmp_156 = or i1 %notrhs24, %notlhs24
  %tmp_157 = and i1 %tmp_156, %tmp_19
  %tmp_158 = fcmp ogt float %E1_load_23, %C_read
  %tmp_159 = and i1 %tmp_157, %tmp_158
  %M_2_22 = fadd float %M_1_21, 1.000000e+00
  %M_1_22 = select i1 %tmp_159, float %M_2_22, float %M_1_21
  %E1_addr_24 = getelementptr [64 x float]* %E1, i32 0, i32 24
  %E1_load_24 = load float* %E1_addr_24, align 4
  %E1_load_24_to_int = bitcast float %E1_load_24 to i32
  %tmp_160 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_24_to_int, i32 23, i32 30)
  %tmp_161 = trunc i32 %E1_load_24_to_int to i23
  %notlhs25 = icmp ne i8 %tmp_160, -1
  %notrhs25 = icmp eq i23 %tmp_161, 0
  %tmp_162 = or i1 %notrhs25, %notlhs25
  %tmp_163 = and i1 %tmp_162, %tmp_19
  %tmp_164 = fcmp ogt float %E1_load_24, %C_read
  %tmp_165 = and i1 %tmp_163, %tmp_164
  %M_2_23 = fadd float %M_1_22, 1.000000e+00
  %M_1_23 = select i1 %tmp_165, float %M_2_23, float %M_1_22
  %E1_addr_25 = getelementptr [64 x float]* %E1, i32 0, i32 25
  %E1_load_25 = load float* %E1_addr_25, align 4
  %E1_load_25_to_int = bitcast float %E1_load_25 to i32
  %tmp_166 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_25_to_int, i32 23, i32 30)
  %tmp_167 = trunc i32 %E1_load_25_to_int to i23
  %notlhs26 = icmp ne i8 %tmp_166, -1
  %notrhs26 = icmp eq i23 %tmp_167, 0
  %tmp_168 = or i1 %notrhs26, %notlhs26
  %tmp_169 = and i1 %tmp_168, %tmp_19
  %tmp_170 = fcmp ogt float %E1_load_25, %C_read
  %tmp_171 = and i1 %tmp_169, %tmp_170
  %M_2_24 = fadd float %M_1_23, 1.000000e+00
  %M_1_24 = select i1 %tmp_171, float %M_2_24, float %M_1_23
  %E1_addr_26 = getelementptr [64 x float]* %E1, i32 0, i32 26
  %E1_load_26 = load float* %E1_addr_26, align 4
  %E1_load_26_to_int = bitcast float %E1_load_26 to i32
  %tmp_172 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_26_to_int, i32 23, i32 30)
  %tmp_173 = trunc i32 %E1_load_26_to_int to i23
  %notlhs27 = icmp ne i8 %tmp_172, -1
  %notrhs27 = icmp eq i23 %tmp_173, 0
  %tmp_174 = or i1 %notrhs27, %notlhs27
  %tmp_175 = and i1 %tmp_174, %tmp_19
  %tmp_176 = fcmp ogt float %E1_load_26, %C_read
  %tmp_177 = and i1 %tmp_175, %tmp_176
  %M_2_25 = fadd float %M_1_24, 1.000000e+00
  %M_1_25 = select i1 %tmp_177, float %M_2_25, float %M_1_24
  %E1_addr_27 = getelementptr [64 x float]* %E1, i32 0, i32 27
  %E1_load_27 = load float* %E1_addr_27, align 4
  %E1_load_27_to_int = bitcast float %E1_load_27 to i32
  %tmp_178 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_27_to_int, i32 23, i32 30)
  %tmp_179 = trunc i32 %E1_load_27_to_int to i23
  %notlhs28 = icmp ne i8 %tmp_178, -1
  %notrhs28 = icmp eq i23 %tmp_179, 0
  %tmp_180 = or i1 %notrhs28, %notlhs28
  %tmp_181 = and i1 %tmp_180, %tmp_19
  %tmp_182 = fcmp ogt float %E1_load_27, %C_read
  %tmp_183 = and i1 %tmp_181, %tmp_182
  %M_2_26 = fadd float %M_1_25, 1.000000e+00
  %M_1_26 = select i1 %tmp_183, float %M_2_26, float %M_1_25
  %E1_addr_28 = getelementptr [64 x float]* %E1, i32 0, i32 28
  %E1_load_28 = load float* %E1_addr_28, align 4
  %E1_load_28_to_int = bitcast float %E1_load_28 to i32
  %tmp_184 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_28_to_int, i32 23, i32 30)
  %tmp_185 = trunc i32 %E1_load_28_to_int to i23
  %notlhs29 = icmp ne i8 %tmp_184, -1
  %notrhs29 = icmp eq i23 %tmp_185, 0
  %tmp_186 = or i1 %notrhs29, %notlhs29
  %tmp_187 = and i1 %tmp_186, %tmp_19
  %tmp_188 = fcmp ogt float %E1_load_28, %C_read
  %tmp_189 = and i1 %tmp_187, %tmp_188
  %M_2_27 = fadd float %M_1_26, 1.000000e+00
  %M_1_27 = select i1 %tmp_189, float %M_2_27, float %M_1_26
  %E1_addr_29 = getelementptr [64 x float]* %E1, i32 0, i32 29
  %E1_load_29 = load float* %E1_addr_29, align 4
  %E1_load_29_to_int = bitcast float %E1_load_29 to i32
  %tmp_190 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_29_to_int, i32 23, i32 30)
  %tmp_191 = trunc i32 %E1_load_29_to_int to i23
  %notlhs30 = icmp ne i8 %tmp_190, -1
  %notrhs30 = icmp eq i23 %tmp_191, 0
  %tmp_192 = or i1 %notrhs30, %notlhs30
  %tmp_193 = and i1 %tmp_192, %tmp_19
  %tmp_194 = fcmp ogt float %E1_load_29, %C_read
  %tmp_195 = and i1 %tmp_193, %tmp_194
  %M_2_28 = fadd float %M_1_27, 1.000000e+00
  %M_1_28 = select i1 %tmp_195, float %M_2_28, float %M_1_27
  %E1_addr_30 = getelementptr [64 x float]* %E1, i32 0, i32 30
  %E1_load_30 = load float* %E1_addr_30, align 4
  %E1_load_30_to_int = bitcast float %E1_load_30 to i32
  %tmp_196 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_30_to_int, i32 23, i32 30)
  %tmp_197 = trunc i32 %E1_load_30_to_int to i23
  %notlhs31 = icmp ne i8 %tmp_196, -1
  %notrhs31 = icmp eq i23 %tmp_197, 0
  %tmp_198 = or i1 %notrhs31, %notlhs31
  %tmp_199 = and i1 %tmp_198, %tmp_19
  %tmp_200 = fcmp ogt float %E1_load_30, %C_read
  %tmp_201 = and i1 %tmp_199, %tmp_200
  %M_2_29 = fadd float %M_1_28, 1.000000e+00
  %M_1_29 = select i1 %tmp_201, float %M_2_29, float %M_1_28
  %E1_addr_31 = getelementptr [64 x float]* %E1, i32 0, i32 31
  %E1_load_31 = load float* %E1_addr_31, align 4
  %E1_load_31_to_int = bitcast float %E1_load_31 to i32
  %tmp_202 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_31_to_int, i32 23, i32 30)
  %tmp_203 = trunc i32 %E1_load_31_to_int to i23
  %notlhs32 = icmp ne i8 %tmp_202, -1
  %notrhs32 = icmp eq i23 %tmp_203, 0
  %tmp_204 = or i1 %notrhs32, %notlhs32
  %tmp_205 = and i1 %tmp_204, %tmp_19
  %tmp_206 = fcmp ogt float %E1_load_31, %C_read
  %tmp_207 = and i1 %tmp_205, %tmp_206
  %M_2_30 = fadd float %M_1_29, 1.000000e+00
  %M_1_30 = select i1 %tmp_207, float %M_2_30, float %M_1_29
  %E1_addr_32 = getelementptr [64 x float]* %E1, i32 0, i32 32
  %E1_load_32 = load float* %E1_addr_32, align 4
  %E1_load_32_to_int = bitcast float %E1_load_32 to i32
  %tmp_208 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_32_to_int, i32 23, i32 30)
  %tmp_209 = trunc i32 %E1_load_32_to_int to i23
  %notlhs33 = icmp ne i8 %tmp_208, -1
  %notrhs33 = icmp eq i23 %tmp_209, 0
  %tmp_210 = or i1 %notrhs33, %notlhs33
  %tmp_211 = and i1 %tmp_210, %tmp_19
  %tmp_212 = fcmp ogt float %E1_load_32, %C_read
  %tmp_213 = and i1 %tmp_211, %tmp_212
  %M_2_31 = fadd float %M_1_30, 1.000000e+00
  %M_1_31 = select i1 %tmp_213, float %M_2_31, float %M_1_30
  %E1_addr_33 = getelementptr [64 x float]* %E1, i32 0, i32 33
  %E1_load_33 = load float* %E1_addr_33, align 4
  %E1_load_33_to_int = bitcast float %E1_load_33 to i32
  %tmp_214 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_33_to_int, i32 23, i32 30)
  %tmp_215 = trunc i32 %E1_load_33_to_int to i23
  %notlhs34 = icmp ne i8 %tmp_214, -1
  %notrhs34 = icmp eq i23 %tmp_215, 0
  %tmp_216 = or i1 %notrhs34, %notlhs34
  %tmp_217 = and i1 %tmp_216, %tmp_19
  %tmp_218 = fcmp ogt float %E1_load_33, %C_read
  %tmp_219 = and i1 %tmp_217, %tmp_218
  %M_2_32 = fadd float %M_1_31, 1.000000e+00
  %M_1_32 = select i1 %tmp_219, float %M_2_32, float %M_1_31
  %E1_addr_34 = getelementptr [64 x float]* %E1, i32 0, i32 34
  %E1_load_34 = load float* %E1_addr_34, align 4
  %E1_load_34_to_int = bitcast float %E1_load_34 to i32
  %tmp_220 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_34_to_int, i32 23, i32 30)
  %tmp_221 = trunc i32 %E1_load_34_to_int to i23
  %notlhs35 = icmp ne i8 %tmp_220, -1
  %notrhs35 = icmp eq i23 %tmp_221, 0
  %tmp_222 = or i1 %notrhs35, %notlhs35
  %tmp_223 = and i1 %tmp_222, %tmp_19
  %tmp_224 = fcmp ogt float %E1_load_34, %C_read
  %tmp_225 = and i1 %tmp_223, %tmp_224
  %M_2_33 = fadd float %M_1_32, 1.000000e+00
  %M_1_33 = select i1 %tmp_225, float %M_2_33, float %M_1_32
  %E1_addr_35 = getelementptr [64 x float]* %E1, i32 0, i32 35
  %E1_load_35 = load float* %E1_addr_35, align 4
  %E1_load_35_to_int = bitcast float %E1_load_35 to i32
  %tmp_226 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_35_to_int, i32 23, i32 30)
  %tmp_227 = trunc i32 %E1_load_35_to_int to i23
  %notlhs36 = icmp ne i8 %tmp_226, -1
  %notrhs36 = icmp eq i23 %tmp_227, 0
  %tmp_228 = or i1 %notrhs36, %notlhs36
  %tmp_229 = and i1 %tmp_228, %tmp_19
  %tmp_230 = fcmp ogt float %E1_load_35, %C_read
  %tmp_231 = and i1 %tmp_229, %tmp_230
  %M_2_34 = fadd float %M_1_33, 1.000000e+00
  %M_1_34 = select i1 %tmp_231, float %M_2_34, float %M_1_33
  %E1_addr_36 = getelementptr [64 x float]* %E1, i32 0, i32 36
  %E1_load_36 = load float* %E1_addr_36, align 4
  %E1_load_36_to_int = bitcast float %E1_load_36 to i32
  %tmp_232 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_36_to_int, i32 23, i32 30)
  %tmp_233 = trunc i32 %E1_load_36_to_int to i23
  %notlhs37 = icmp ne i8 %tmp_232, -1
  %notrhs37 = icmp eq i23 %tmp_233, 0
  %tmp_234 = or i1 %notrhs37, %notlhs37
  %tmp_235 = and i1 %tmp_234, %tmp_19
  %tmp_236 = fcmp ogt float %E1_load_36, %C_read
  %tmp_237 = and i1 %tmp_235, %tmp_236
  %M_2_35 = fadd float %M_1_34, 1.000000e+00
  %M_1_35 = select i1 %tmp_237, float %M_2_35, float %M_1_34
  %E1_addr_37 = getelementptr [64 x float]* %E1, i32 0, i32 37
  %E1_load_37 = load float* %E1_addr_37, align 4
  %E1_load_37_to_int = bitcast float %E1_load_37 to i32
  %tmp_238 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_37_to_int, i32 23, i32 30)
  %tmp_239 = trunc i32 %E1_load_37_to_int to i23
  %notlhs38 = icmp ne i8 %tmp_238, -1
  %notrhs38 = icmp eq i23 %tmp_239, 0
  %tmp_240 = or i1 %notrhs38, %notlhs38
  %tmp_241 = and i1 %tmp_240, %tmp_19
  %tmp_242 = fcmp ogt float %E1_load_37, %C_read
  %tmp_243 = and i1 %tmp_241, %tmp_242
  %M_2_36 = fadd float %M_1_35, 1.000000e+00
  %M_1_36 = select i1 %tmp_243, float %M_2_36, float %M_1_35
  %E1_addr_38 = getelementptr [64 x float]* %E1, i32 0, i32 38
  %E1_load_38 = load float* %E1_addr_38, align 4
  %E1_load_38_to_int = bitcast float %E1_load_38 to i32
  %tmp_244 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_38_to_int, i32 23, i32 30)
  %tmp_245 = trunc i32 %E1_load_38_to_int to i23
  %notlhs39 = icmp ne i8 %tmp_244, -1
  %notrhs39 = icmp eq i23 %tmp_245, 0
  %tmp_246 = or i1 %notrhs39, %notlhs39
  %tmp_247 = and i1 %tmp_246, %tmp_19
  %tmp_248 = fcmp ogt float %E1_load_38, %C_read
  %tmp_249 = and i1 %tmp_247, %tmp_248
  %M_2_37 = fadd float %M_1_36, 1.000000e+00
  %M_1_37 = select i1 %tmp_249, float %M_2_37, float %M_1_36
  %E1_addr_39 = getelementptr [64 x float]* %E1, i32 0, i32 39
  %E1_load_39 = load float* %E1_addr_39, align 4
  %E1_load_39_to_int = bitcast float %E1_load_39 to i32
  %tmp_250 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_39_to_int, i32 23, i32 30)
  %tmp_251 = trunc i32 %E1_load_39_to_int to i23
  %notlhs40 = icmp ne i8 %tmp_250, -1
  %notrhs40 = icmp eq i23 %tmp_251, 0
  %tmp_252 = or i1 %notrhs40, %notlhs40
  %tmp_253 = and i1 %tmp_252, %tmp_19
  %tmp_254 = fcmp ogt float %E1_load_39, %C_read
  %tmp_255 = and i1 %tmp_253, %tmp_254
  %M_2_38 = fadd float %M_1_37, 1.000000e+00
  %M_1_38 = select i1 %tmp_255, float %M_2_38, float %M_1_37
  %E1_addr_40 = getelementptr [64 x float]* %E1, i32 0, i32 40
  %E1_load_40 = load float* %E1_addr_40, align 4
  %E1_load_40_to_int = bitcast float %E1_load_40 to i32
  %tmp_256 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_40_to_int, i32 23, i32 30)
  %tmp_257 = trunc i32 %E1_load_40_to_int to i23
  %notlhs41 = icmp ne i8 %tmp_256, -1
  %notrhs41 = icmp eq i23 %tmp_257, 0
  %tmp_258 = or i1 %notrhs41, %notlhs41
  %tmp_259 = and i1 %tmp_258, %tmp_19
  %tmp_260 = fcmp ogt float %E1_load_40, %C_read
  %tmp_261 = and i1 %tmp_259, %tmp_260
  %M_2_39 = fadd float %M_1_38, 1.000000e+00
  %M_1_39 = select i1 %tmp_261, float %M_2_39, float %M_1_38
  %E1_addr_41 = getelementptr [64 x float]* %E1, i32 0, i32 41
  %E1_load_41 = load float* %E1_addr_41, align 4
  %E1_load_41_to_int = bitcast float %E1_load_41 to i32
  %tmp_262 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_41_to_int, i32 23, i32 30)
  %tmp_263 = trunc i32 %E1_load_41_to_int to i23
  %notlhs42 = icmp ne i8 %tmp_262, -1
  %notrhs42 = icmp eq i23 %tmp_263, 0
  %tmp_264 = or i1 %notrhs42, %notlhs42
  %tmp_265 = and i1 %tmp_264, %tmp_19
  %tmp_266 = fcmp ogt float %E1_load_41, %C_read
  %tmp_267 = and i1 %tmp_265, %tmp_266
  %M_2_40 = fadd float %M_1_39, 1.000000e+00
  %M_1_40 = select i1 %tmp_267, float %M_2_40, float %M_1_39
  %E1_addr_42 = getelementptr [64 x float]* %E1, i32 0, i32 42
  %E1_load_42 = load float* %E1_addr_42, align 4
  %E1_load_42_to_int = bitcast float %E1_load_42 to i32
  %tmp_268 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_42_to_int, i32 23, i32 30)
  %tmp_269 = trunc i32 %E1_load_42_to_int to i23
  %notlhs43 = icmp ne i8 %tmp_268, -1
  %notrhs43 = icmp eq i23 %tmp_269, 0
  %tmp_270 = or i1 %notrhs43, %notlhs43
  %tmp_271 = and i1 %tmp_270, %tmp_19
  %tmp_272 = fcmp ogt float %E1_load_42, %C_read
  %tmp_273 = and i1 %tmp_271, %tmp_272
  %M_2_41 = fadd float %M_1_40, 1.000000e+00
  %M_1_41 = select i1 %tmp_273, float %M_2_41, float %M_1_40
  %E1_addr_43 = getelementptr [64 x float]* %E1, i32 0, i32 43
  %E1_load_43 = load float* %E1_addr_43, align 4
  %E1_load_43_to_int = bitcast float %E1_load_43 to i32
  %tmp_274 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_43_to_int, i32 23, i32 30)
  %tmp_275 = trunc i32 %E1_load_43_to_int to i23
  %notlhs44 = icmp ne i8 %tmp_274, -1
  %notrhs44 = icmp eq i23 %tmp_275, 0
  %tmp_276 = or i1 %notrhs44, %notlhs44
  %tmp_277 = and i1 %tmp_276, %tmp_19
  %tmp_278 = fcmp ogt float %E1_load_43, %C_read
  %tmp_279 = and i1 %tmp_277, %tmp_278
  %M_2_42 = fadd float %M_1_41, 1.000000e+00
  %M_1_42 = select i1 %tmp_279, float %M_2_42, float %M_1_41
  %E1_addr_44 = getelementptr [64 x float]* %E1, i32 0, i32 44
  %E1_load_44 = load float* %E1_addr_44, align 4
  %E1_load_44_to_int = bitcast float %E1_load_44 to i32
  %tmp_280 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_44_to_int, i32 23, i32 30)
  %tmp_281 = trunc i32 %E1_load_44_to_int to i23
  %notlhs45 = icmp ne i8 %tmp_280, -1
  %notrhs45 = icmp eq i23 %tmp_281, 0
  %tmp_282 = or i1 %notrhs45, %notlhs45
  %tmp_283 = and i1 %tmp_282, %tmp_19
  %tmp_284 = fcmp ogt float %E1_load_44, %C_read
  %tmp_285 = and i1 %tmp_283, %tmp_284
  %M_2_43 = fadd float %M_1_42, 1.000000e+00
  %M_1_43 = select i1 %tmp_285, float %M_2_43, float %M_1_42
  %E1_addr_45 = getelementptr [64 x float]* %E1, i32 0, i32 45
  %E1_load_45 = load float* %E1_addr_45, align 4
  %E1_load_45_to_int = bitcast float %E1_load_45 to i32
  %tmp_286 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_45_to_int, i32 23, i32 30)
  %tmp_287 = trunc i32 %E1_load_45_to_int to i23
  %notlhs46 = icmp ne i8 %tmp_286, -1
  %notrhs46 = icmp eq i23 %tmp_287, 0
  %tmp_288 = or i1 %notrhs46, %notlhs46
  %tmp_289 = and i1 %tmp_288, %tmp_19
  %tmp_290 = fcmp ogt float %E1_load_45, %C_read
  %tmp_291 = and i1 %tmp_289, %tmp_290
  %M_2_44 = fadd float %M_1_43, 1.000000e+00
  %M_1_44 = select i1 %tmp_291, float %M_2_44, float %M_1_43
  %E1_addr_46 = getelementptr [64 x float]* %E1, i32 0, i32 46
  %E1_load_46 = load float* %E1_addr_46, align 4
  %E1_load_46_to_int = bitcast float %E1_load_46 to i32
  %tmp_292 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_46_to_int, i32 23, i32 30)
  %tmp_293 = trunc i32 %E1_load_46_to_int to i23
  %notlhs47 = icmp ne i8 %tmp_292, -1
  %notrhs47 = icmp eq i23 %tmp_293, 0
  %tmp_294 = or i1 %notrhs47, %notlhs47
  %tmp_295 = and i1 %tmp_294, %tmp_19
  %tmp_296 = fcmp ogt float %E1_load_46, %C_read
  %tmp_297 = and i1 %tmp_295, %tmp_296
  %M_2_45 = fadd float %M_1_44, 1.000000e+00
  %M_1_45 = select i1 %tmp_297, float %M_2_45, float %M_1_44
  %E1_addr_47 = getelementptr [64 x float]* %E1, i32 0, i32 47
  %E1_load_47 = load float* %E1_addr_47, align 4
  %E1_load_47_to_int = bitcast float %E1_load_47 to i32
  %tmp_298 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_47_to_int, i32 23, i32 30)
  %tmp_299 = trunc i32 %E1_load_47_to_int to i23
  %notlhs48 = icmp ne i8 %tmp_298, -1
  %notrhs48 = icmp eq i23 %tmp_299, 0
  %tmp_300 = or i1 %notrhs48, %notlhs48
  %tmp_301 = and i1 %tmp_300, %tmp_19
  %tmp_302 = fcmp ogt float %E1_load_47, %C_read
  %tmp_303 = and i1 %tmp_301, %tmp_302
  %M_2_46 = fadd float %M_1_45, 1.000000e+00
  %M_1_46 = select i1 %tmp_303, float %M_2_46, float %M_1_45
  %E1_addr_48 = getelementptr [64 x float]* %E1, i32 0, i32 48
  %E1_load_48 = load float* %E1_addr_48, align 4
  %E1_load_48_to_int = bitcast float %E1_load_48 to i32
  %tmp_304 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_48_to_int, i32 23, i32 30)
  %tmp_305 = trunc i32 %E1_load_48_to_int to i23
  %notlhs49 = icmp ne i8 %tmp_304, -1
  %notrhs49 = icmp eq i23 %tmp_305, 0
  %tmp_306 = or i1 %notrhs49, %notlhs49
  %tmp_307 = and i1 %tmp_306, %tmp_19
  %tmp_308 = fcmp ogt float %E1_load_48, %C_read
  %tmp_309 = and i1 %tmp_307, %tmp_308
  %M_2_47 = fadd float %M_1_46, 1.000000e+00
  %M_1_47 = select i1 %tmp_309, float %M_2_47, float %M_1_46
  %E1_addr_49 = getelementptr [64 x float]* %E1, i32 0, i32 49
  %E1_load_49 = load float* %E1_addr_49, align 4
  %E1_load_49_to_int = bitcast float %E1_load_49 to i32
  %tmp_310 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_49_to_int, i32 23, i32 30)
  %tmp_311 = trunc i32 %E1_load_49_to_int to i23
  %notlhs50 = icmp ne i8 %tmp_310, -1
  %notrhs50 = icmp eq i23 %tmp_311, 0
  %tmp_312 = or i1 %notrhs50, %notlhs50
  %tmp_313 = and i1 %tmp_312, %tmp_19
  %tmp_314 = fcmp ogt float %E1_load_49, %C_read
  %tmp_315 = and i1 %tmp_313, %tmp_314
  %M_2_48 = fadd float %M_1_47, 1.000000e+00
  %M_1_48 = select i1 %tmp_315, float %M_2_48, float %M_1_47
  %E1_addr_50 = getelementptr [64 x float]* %E1, i32 0, i32 50
  %E1_load_50 = load float* %E1_addr_50, align 4
  %E1_load_50_to_int = bitcast float %E1_load_50 to i32
  %tmp_316 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_50_to_int, i32 23, i32 30)
  %tmp_317 = trunc i32 %E1_load_50_to_int to i23
  %notlhs51 = icmp ne i8 %tmp_316, -1
  %notrhs51 = icmp eq i23 %tmp_317, 0
  %tmp_318 = or i1 %notrhs51, %notlhs51
  %tmp_319 = and i1 %tmp_318, %tmp_19
  %tmp_320 = fcmp ogt float %E1_load_50, %C_read
  %tmp_321 = and i1 %tmp_319, %tmp_320
  %M_2_49 = fadd float %M_1_48, 1.000000e+00
  %M_1_49 = select i1 %tmp_321, float %M_2_49, float %M_1_48
  %E1_addr_51 = getelementptr [64 x float]* %E1, i32 0, i32 51
  %E1_load_51 = load float* %E1_addr_51, align 4
  %E1_load_51_to_int = bitcast float %E1_load_51 to i32
  %tmp_322 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_51_to_int, i32 23, i32 30)
  %tmp_323 = trunc i32 %E1_load_51_to_int to i23
  %notlhs52 = icmp ne i8 %tmp_322, -1
  %notrhs52 = icmp eq i23 %tmp_323, 0
  %tmp_324 = or i1 %notrhs52, %notlhs52
  %tmp_325 = and i1 %tmp_324, %tmp_19
  %tmp_326 = fcmp ogt float %E1_load_51, %C_read
  %tmp_327 = and i1 %tmp_325, %tmp_326
  %M_2_50 = fadd float %M_1_49, 1.000000e+00
  %M_1_50 = select i1 %tmp_327, float %M_2_50, float %M_1_49
  %E1_addr_52 = getelementptr [64 x float]* %E1, i32 0, i32 52
  %E1_load_52 = load float* %E1_addr_52, align 4
  %E1_load_52_to_int = bitcast float %E1_load_52 to i32
  %tmp_328 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_52_to_int, i32 23, i32 30)
  %tmp_329 = trunc i32 %E1_load_52_to_int to i23
  %notlhs53 = icmp ne i8 %tmp_328, -1
  %notrhs53 = icmp eq i23 %tmp_329, 0
  %tmp_330 = or i1 %notrhs53, %notlhs53
  %tmp_331 = and i1 %tmp_330, %tmp_19
  %tmp_332 = fcmp ogt float %E1_load_52, %C_read
  %tmp_333 = and i1 %tmp_331, %tmp_332
  %M_2_51 = fadd float %M_1_50, 1.000000e+00
  %M_1_51 = select i1 %tmp_333, float %M_2_51, float %M_1_50
  %E1_addr_53 = getelementptr [64 x float]* %E1, i32 0, i32 53
  %E1_load_53 = load float* %E1_addr_53, align 4
  %E1_load_53_to_int = bitcast float %E1_load_53 to i32
  %tmp_334 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_53_to_int, i32 23, i32 30)
  %tmp_335 = trunc i32 %E1_load_53_to_int to i23
  %notlhs54 = icmp ne i8 %tmp_334, -1
  %notrhs54 = icmp eq i23 %tmp_335, 0
  %tmp_336 = or i1 %notrhs54, %notlhs54
  %tmp_337 = and i1 %tmp_336, %tmp_19
  %tmp_338 = fcmp ogt float %E1_load_53, %C_read
  %tmp_339 = and i1 %tmp_337, %tmp_338
  %M_2_52 = fadd float %M_1_51, 1.000000e+00
  %M_1_52 = select i1 %tmp_339, float %M_2_52, float %M_1_51
  %E1_addr_54 = getelementptr [64 x float]* %E1, i32 0, i32 54
  %E1_load_54 = load float* %E1_addr_54, align 4
  %E1_load_54_to_int = bitcast float %E1_load_54 to i32
  %tmp_340 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_54_to_int, i32 23, i32 30)
  %tmp_341 = trunc i32 %E1_load_54_to_int to i23
  %notlhs55 = icmp ne i8 %tmp_340, -1
  %notrhs55 = icmp eq i23 %tmp_341, 0
  %tmp_342 = or i1 %notrhs55, %notlhs55
  %tmp_343 = and i1 %tmp_342, %tmp_19
  %tmp_344 = fcmp ogt float %E1_load_54, %C_read
  %tmp_345 = and i1 %tmp_343, %tmp_344
  %M_2_53 = fadd float %M_1_52, 1.000000e+00
  %M_1_53 = select i1 %tmp_345, float %M_2_53, float %M_1_52
  %E1_addr_55 = getelementptr [64 x float]* %E1, i32 0, i32 55
  %E1_load_55 = load float* %E1_addr_55, align 4
  %E1_load_55_to_int = bitcast float %E1_load_55 to i32
  %tmp_346 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_55_to_int, i32 23, i32 30)
  %tmp_347 = trunc i32 %E1_load_55_to_int to i23
  %notlhs56 = icmp ne i8 %tmp_346, -1
  %notrhs56 = icmp eq i23 %tmp_347, 0
  %tmp_348 = or i1 %notrhs56, %notlhs56
  %tmp_349 = and i1 %tmp_348, %tmp_19
  %tmp_350 = fcmp ogt float %E1_load_55, %C_read
  %tmp_351 = and i1 %tmp_349, %tmp_350
  %M_2_54 = fadd float %M_1_53, 1.000000e+00
  %M_1_54 = select i1 %tmp_351, float %M_2_54, float %M_1_53
  %E1_addr_56 = getelementptr [64 x float]* %E1, i32 0, i32 56
  %E1_load_56 = load float* %E1_addr_56, align 4
  %E1_load_56_to_int = bitcast float %E1_load_56 to i32
  %tmp_352 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_56_to_int, i32 23, i32 30)
  %tmp_353 = trunc i32 %E1_load_56_to_int to i23
  %notlhs57 = icmp ne i8 %tmp_352, -1
  %notrhs57 = icmp eq i23 %tmp_353, 0
  %tmp_354 = or i1 %notrhs57, %notlhs57
  %tmp_355 = and i1 %tmp_354, %tmp_19
  %tmp_356 = fcmp ogt float %E1_load_56, %C_read
  %tmp_357 = and i1 %tmp_355, %tmp_356
  %M_2_55 = fadd float %M_1_54, 1.000000e+00
  %M_1_55 = select i1 %tmp_357, float %M_2_55, float %M_1_54
  %E1_addr_57 = getelementptr [64 x float]* %E1, i32 0, i32 57
  %E1_load_57 = load float* %E1_addr_57, align 4
  %E1_load_57_to_int = bitcast float %E1_load_57 to i32
  %tmp_358 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_57_to_int, i32 23, i32 30)
  %tmp_359 = trunc i32 %E1_load_57_to_int to i23
  %notlhs58 = icmp ne i8 %tmp_358, -1
  %notrhs58 = icmp eq i23 %tmp_359, 0
  %tmp_360 = or i1 %notrhs58, %notlhs58
  %tmp_361 = and i1 %tmp_360, %tmp_19
  %tmp_362 = fcmp ogt float %E1_load_57, %C_read
  %tmp_363 = and i1 %tmp_361, %tmp_362
  %M_2_56 = fadd float %M_1_55, 1.000000e+00
  %M_1_56 = select i1 %tmp_363, float %M_2_56, float %M_1_55
  %E1_addr_58 = getelementptr [64 x float]* %E1, i32 0, i32 58
  %E1_load_58 = load float* %E1_addr_58, align 4
  %E1_load_58_to_int = bitcast float %E1_load_58 to i32
  %tmp_364 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_58_to_int, i32 23, i32 30)
  %tmp_365 = trunc i32 %E1_load_58_to_int to i23
  %notlhs59 = icmp ne i8 %tmp_364, -1
  %notrhs59 = icmp eq i23 %tmp_365, 0
  %tmp_366 = or i1 %notrhs59, %notlhs59
  %tmp_367 = and i1 %tmp_366, %tmp_19
  %tmp_368 = fcmp ogt float %E1_load_58, %C_read
  %tmp_369 = and i1 %tmp_367, %tmp_368
  %M_2_57 = fadd float %M_1_56, 1.000000e+00
  %M_1_57 = select i1 %tmp_369, float %M_2_57, float %M_1_56
  %E1_addr_59 = getelementptr [64 x float]* %E1, i32 0, i32 59
  %E1_load_59 = load float* %E1_addr_59, align 4
  %E1_load_59_to_int = bitcast float %E1_load_59 to i32
  %tmp_370 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_59_to_int, i32 23, i32 30)
  %tmp_371 = trunc i32 %E1_load_59_to_int to i23
  %notlhs60 = icmp ne i8 %tmp_370, -1
  %notrhs60 = icmp eq i23 %tmp_371, 0
  %tmp_372 = or i1 %notrhs60, %notlhs60
  %tmp_373 = and i1 %tmp_372, %tmp_19
  %tmp_374 = fcmp ogt float %E1_load_59, %C_read
  %tmp_375 = and i1 %tmp_373, %tmp_374
  %M_2_58 = fadd float %M_1_57, 1.000000e+00
  %M_1_58 = select i1 %tmp_375, float %M_2_58, float %M_1_57
  %E1_addr_60 = getelementptr [64 x float]* %E1, i32 0, i32 60
  %E1_load_60 = load float* %E1_addr_60, align 4
  %E1_load_60_to_int = bitcast float %E1_load_60 to i32
  %tmp_376 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_60_to_int, i32 23, i32 30)
  %tmp_377 = trunc i32 %E1_load_60_to_int to i23
  %notlhs61 = icmp ne i8 %tmp_376, -1
  %notrhs61 = icmp eq i23 %tmp_377, 0
  %tmp_378 = or i1 %notrhs61, %notlhs61
  %tmp_379 = and i1 %tmp_378, %tmp_19
  %tmp_380 = fcmp ogt float %E1_load_60, %C_read
  %tmp_381 = and i1 %tmp_379, %tmp_380
  %M_2_59 = fadd float %M_1_58, 1.000000e+00
  %M_1_59 = select i1 %tmp_381, float %M_2_59, float %M_1_58
  %E1_addr_61 = getelementptr [64 x float]* %E1, i32 0, i32 61
  %E1_load_61 = load float* %E1_addr_61, align 4
  %E1_load_61_to_int = bitcast float %E1_load_61 to i32
  %tmp_382 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_61_to_int, i32 23, i32 30)
  %tmp_383 = trunc i32 %E1_load_61_to_int to i23
  %notlhs62 = icmp ne i8 %tmp_382, -1
  %notrhs62 = icmp eq i23 %tmp_383, 0
  %tmp_384 = or i1 %notrhs62, %notlhs62
  %tmp_385 = and i1 %tmp_384, %tmp_19
  %tmp_386 = fcmp ogt float %E1_load_61, %C_read
  %tmp_387 = and i1 %tmp_385, %tmp_386
  %M_2_60 = fadd float %M_1_59, 1.000000e+00
  %M_1_60 = select i1 %tmp_387, float %M_2_60, float %M_1_59
  %E1_addr_62 = getelementptr [64 x float]* %E1, i32 0, i32 62
  %E1_load_62 = load float* %E1_addr_62, align 4
  %E1_load_62_to_int = bitcast float %E1_load_62 to i32
  %tmp_388 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_62_to_int, i32 23, i32 30)
  %tmp_389 = trunc i32 %E1_load_62_to_int to i23
  %notlhs63 = icmp ne i8 %tmp_388, -1
  %notrhs63 = icmp eq i23 %tmp_389, 0
  %tmp_390 = or i1 %notrhs63, %notlhs63
  %tmp_391 = and i1 %tmp_390, %tmp_19
  %tmp_392 = fcmp ogt float %E1_load_62, %C_read
  %tmp_393 = and i1 %tmp_391, %tmp_392
  %M_2_61 = fadd float %M_1_60, 1.000000e+00
  %M_1_61 = select i1 %tmp_393, float %M_2_61, float %M_1_60
  %E1_addr_63 = getelementptr [64 x float]* %E1, i32 0, i32 63
  %E1_load_63 = load float* %E1_addr_63, align 4
  %E1_load_63_to_int = bitcast float %E1_load_63 to i32
  %tmp_394 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %E1_load_63_to_int, i32 23, i32 30)
  %tmp_395 = trunc i32 %E1_load_63_to_int to i23
  %notlhs64 = icmp ne i8 %tmp_394, -1
  %notrhs64 = icmp eq i23 %tmp_395, 0
  %tmp_396 = or i1 %notrhs64, %notlhs64
  %tmp_397 = and i1 %tmp_396, %tmp_19
  %tmp_398 = fcmp ogt float %E1_load_63, %C_read
  %tmp_399 = and i1 %tmp_397, %tmp_398
  %M_2_62 = fadd float %M_1_61, 1.000000e+00
  %M_1_62 = select i1 %tmp_399, float %M_2_62, float %M_1_61
  %tmp_s = fmul float %M_1_62, 1.562500e-02
  %K2 = call float @llvm.sqrt.f32(float %tmp_s)
  %tmp_6 = fpext float %K2 to double
  %pow = fmul double %tmp_6, %tmp_6
  %tmp_7 = fmul double %pow, %tmp_6
  %tmp_8 = fmul double %tmp_7, 0.000000e+00
  %tmp_9 = fadd double %tmp_6, %tmp_8
  %pow1 = fmul double %tmp_7, %tmp_6
  %tmp_1 = fmul double %pow1, %tmp_6
  %tmp_2 = fmul double %tmp_1, 0.000000e+00
  %tmp_3 = fadd double %tmp_9, %tmp_2
  %K1 = fptrunc double %tmp_3 to float
  %tmp_4 = fmul float %K1, 4.000000e+00
  %tmp_5 = fpext float %tmp_4 to double
  %x_assign = fdiv double 3.141600e+00, %tmp_5
  %t_V_1 = bitcast double %x_assign to i64
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %t_V_1, i32 63)
  %loc_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %t_V_1, i32 52, i32 62) nounwind
  %tmp_i_i = icmp ult i11 %loc_V, 1022
  %p_Result_7 = call i64 @_ssdm_op_BitConcatenate.i64.i1.i63(i1 %p_Result_s, i63 0)
  %tmp_2_i_i = icmp ugt i11 %loc_V, -973
  %index_V = call i6 @_ssdm_op_PartSelect.i6.i64.i32.i32(i64 %t_V_1, i32 52, i32 57) nounwind
  %tmp_4_i_i = zext i6 %index_V to i32
  %mask_table1_addr = getelementptr [64 x i52]* @mask_table1, i32 0, i32 %tmp_4_i_i
  %mask = load i52* %mask_table1_addr, align 8
  %one_half_table2_addr = getelementptr [64 x i53]* @one_half_table2, i32 0, i32 %tmp_4_i_i
  %one_half = load i53* %one_half_table2_addr, align 8
  %one_half_cast = zext i53 %one_half to i64
  %p_Val2_s = add i64 %one_half_cast, %t_V_1
  %loc_V_1 = trunc i64 %p_Val2_s to i52
  %tmp_i_i_19 = xor i52 %mask, -1
  %xs_sig_V = and i52 %loc_V_1, %tmp_i_i_19
  %tmp_400 = call i12 @_ssdm_op_PartSelect.i12.i64.i32.i32(i64 %p_Val2_s, i32 52, i32 63)
  %p_Result_8 = call i64 @_ssdm_op_BitConcatenate.i64.i12.i52(i12 %tmp_400, i52 %xs_sig_V)
  %sel_tmp_v = select i1 %tmp_i_i, i64 %p_Result_7, i64 %p_Result_8
  %sel_tmp = bitcast i64 %sel_tmp_v to double
  %sel_tmp1 = xor i1 %tmp_i_i, true
  %sel_tmp2 = and i1 %tmp_2_i_i, %sel_tmp1
  %p_i_i = select i1 %sel_tmp2, double %x_assign, double %sel_tmp
  %K = fptrunc double %p_i_i to float
  %B_addr = getelementptr [64 x float]* %B, i32 0, i32 0
  %B_addr_1 = getelementptr [64 x float]* %B, i32 0, i32 1
  %B_addr_2 = getelementptr [64 x float]* %B, i32 0, i32 2
  %B_addr_3 = getelementptr [64 x float]* %B, i32 0, i32 3
  %B_addr_4 = getelementptr [64 x float]* %B, i32 0, i32 4
  %B_addr_5 = getelementptr [64 x float]* %B, i32 0, i32 5
  %B_addr_6 = getelementptr [64 x float]* %B, i32 0, i32 6
  %B_addr_7 = getelementptr [64 x float]* %B, i32 0, i32 7
  %B_addr_8 = getelementptr [64 x float]* %B, i32 0, i32 8
  %B_addr_9 = getelementptr [64 x float]* %B, i32 0, i32 9
  %B_addr_10 = getelementptr [64 x float]* %B, i32 0, i32 10
  %B_addr_11 = getelementptr [64 x float]* %B, i32 0, i32 11
  %B_addr_12 = getelementptr [64 x float]* %B, i32 0, i32 12
  %B_addr_13 = getelementptr [64 x float]* %B, i32 0, i32 13
  %B_addr_14 = getelementptr [64 x float]* %B, i32 0, i32 14
  %B_addr_15 = getelementptr [64 x float]* %B, i32 0, i32 15
  %B_addr_16 = getelementptr [64 x float]* %B, i32 0, i32 16
  %B_addr_17 = getelementptr [64 x float]* %B, i32 0, i32 17
  %B_addr_18 = getelementptr [64 x float]* %B, i32 0, i32 18
  %B_addr_19 = getelementptr [64 x float]* %B, i32 0, i32 19
  %B_addr_20 = getelementptr [64 x float]* %B, i32 0, i32 20
  %B_addr_21 = getelementptr [64 x float]* %B, i32 0, i32 21
  %B_addr_22 = getelementptr [64 x float]* %B, i32 0, i32 22
  %B_addr_23 = getelementptr [64 x float]* %B, i32 0, i32 23
  %B_addr_24 = getelementptr [64 x float]* %B, i32 0, i32 24
  %B_addr_25 = getelementptr [64 x float]* %B, i32 0, i32 25
  %B_addr_26 = getelementptr [64 x float]* %B, i32 0, i32 26
  %B_addr_27 = getelementptr [64 x float]* %B, i32 0, i32 27
  %B_addr_28 = getelementptr [64 x float]* %B, i32 0, i32 28
  %B_addr_29 = getelementptr [64 x float]* %B, i32 0, i32 29
  %B_addr_30 = getelementptr [64 x float]* %B, i32 0, i32 30
  %B_addr_31 = getelementptr [64 x float]* %B, i32 0, i32 31
  %B_addr_32 = getelementptr [64 x float]* %B, i32 0, i32 32
  %B_addr_33 = getelementptr [64 x float]* %B, i32 0, i32 33
  %B_addr_34 = getelementptr [64 x float]* %B, i32 0, i32 34
  %B_addr_35 = getelementptr [64 x float]* %B, i32 0, i32 35
  %B_addr_36 = getelementptr [64 x float]* %B, i32 0, i32 36
  %B_addr_37 = getelementptr [64 x float]* %B, i32 0, i32 37
  %B_addr_38 = getelementptr [64 x float]* %B, i32 0, i32 38
  %B_addr_39 = getelementptr [64 x float]* %B, i32 0, i32 39
  %B_addr_40 = getelementptr [64 x float]* %B, i32 0, i32 40
  %B_addr_41 = getelementptr [64 x float]* %B, i32 0, i32 41
  %B_addr_42 = getelementptr [64 x float]* %B, i32 0, i32 42
  %B_addr_43 = getelementptr [64 x float]* %B, i32 0, i32 43
  %B_addr_44 = getelementptr [64 x float]* %B, i32 0, i32 44
  %B_addr_45 = getelementptr [64 x float]* %B, i32 0, i32 45
  %B_addr_46 = getelementptr [64 x float]* %B, i32 0, i32 46
  %B_addr_47 = getelementptr [64 x float]* %B, i32 0, i32 47
  %B_addr_48 = getelementptr [64 x float]* %B, i32 0, i32 48
  %B_addr_49 = getelementptr [64 x float]* %B, i32 0, i32 49
  %B_addr_50 = getelementptr [64 x float]* %B, i32 0, i32 50
  %B_addr_51 = getelementptr [64 x float]* %B, i32 0, i32 51
  %B_addr_52 = getelementptr [64 x float]* %B, i32 0, i32 52
  %B_addr_53 = getelementptr [64 x float]* %B, i32 0, i32 53
  %B_addr_54 = getelementptr [64 x float]* %B, i32 0, i32 54
  %B_addr_55 = getelementptr [64 x float]* %B, i32 0, i32 55
  %B_addr_56 = getelementptr [64 x float]* %B, i32 0, i32 56
  %B_addr_57 = getelementptr [64 x float]* %B, i32 0, i32 57
  %B_addr_58 = getelementptr [64 x float]* %B, i32 0, i32 58
  %B_addr_59 = getelementptr [64 x float]* %B, i32 0, i32 59
  %B_addr_60 = getelementptr [64 x float]* %B, i32 0, i32 60
  %B_addr_61 = getelementptr [64 x float]* %B, i32 0, i32 61
  %B_addr_62 = getelementptr [64 x float]* %B, i32 0, i32 62
  %B_addr_63 = getelementptr [64 x float]* %B, i32 0, i32 63
  %K_to_int = bitcast float %K to i32
  %tmp_401 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %K_to_int, i32 23, i32 30)
  %tmp_410 = trunc i32 %K_to_int to i23
  %notlhs65 = icmp ne i8 %tmp_401, -1
  %notrhs65 = icmp eq i23 %tmp_410, 0
  %tmp_402 = or i1 %notrhs65, %notlhs65
  br label %0

; <label>:0                                       ; preds = %._crit_edge.63, %_ifconv
  %i_1 = phi i32 [ 0, %_ifconv ], [ %i, %._crit_edge.63 ]
  %tmp_11 = sitofp i32 %i_1 to float
  %tmp_11_to_int = bitcast float %tmp_11 to i32
  %tmp_403 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_11_to_int, i32 23, i32 30)
  %tmp_411 = trunc i32 %tmp_11_to_int to i23
  %notlhs66 = icmp ne i8 %tmp_403, -1
  %notrhs66 = icmp eq i23 %tmp_411, 0
  %tmp_404 = or i1 %notrhs66, %notlhs66
  %tmp_405 = and i1 %tmp_404, %tmp_402
  %tmp_406 = fcmp olt float %tmp_11, %K
  %tmp_407 = and i1 %tmp_405, %tmp_406
  %i = add nsw i32 1, %i_1
  br i1 %tmp_407, label %1, label %66

; <label>:1                                       ; preds = %0
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  br i1 %V_0, label %2, label %._crit_edge.0

._crit_edge.0:                                    ; preds = %2, %1
  br i1 %tmp_27, label %3, label %._crit_edge.1

; <label>:2                                       ; preds = %1
  %B_load = load float* %B_addr, align 4
  %tmp_20_to_int = bitcast float %B_load to i32
  %tmp_20_neg = xor i32 %tmp_20_to_int, -2147483648
  %tmp_13 = bitcast i32 %tmp_20_neg to float
  store float %tmp_13, float* %B_addr, align 4
  br label %._crit_edge.0

._crit_edge.1:                                    ; preds = %3, %._crit_edge.0
  br i1 %tmp_33, label %4, label %._crit_edge.2

; <label>:3                                       ; preds = %._crit_edge.0
  %B_load_1 = load float* %B_addr_1, align 4
  %tmp_20_to_int_1 = bitcast float %B_load_1 to i32
  %tmp_20_neg_1 = xor i32 %tmp_20_to_int_1, -2147483648
  %tmp_20_1 = bitcast i32 %tmp_20_neg_1 to float
  store float %tmp_20_1, float* %B_addr_1, align 4
  br label %._crit_edge.1

._crit_edge.2:                                    ; preds = %4, %._crit_edge.1
  br i1 %tmp_39, label %5, label %._crit_edge.3

; <label>:4                                       ; preds = %._crit_edge.1
  %B_load_2 = load float* %B_addr_2, align 4
  %tmp_20_to_int_2 = bitcast float %B_load_2 to i32
  %tmp_20_neg_2 = xor i32 %tmp_20_to_int_2, -2147483648
  %tmp_20_2 = bitcast i32 %tmp_20_neg_2 to float
  store float %tmp_20_2, float* %B_addr_2, align 4
  br label %._crit_edge.2

._crit_edge.3:                                    ; preds = %5, %._crit_edge.2
  br i1 %tmp_45, label %6, label %._crit_edge.4

; <label>:5                                       ; preds = %._crit_edge.2
  %B_load_3 = load float* %B_addr_3, align 4
  %tmp_20_to_int_3 = bitcast float %B_load_3 to i32
  %tmp_20_neg_3 = xor i32 %tmp_20_to_int_3, -2147483648
  %tmp_20_3 = bitcast i32 %tmp_20_neg_3 to float
  store float %tmp_20_3, float* %B_addr_3, align 4
  br label %._crit_edge.3

._crit_edge.4:                                    ; preds = %6, %._crit_edge.3
  br i1 %tmp_51, label %7, label %._crit_edge.5

; <label>:6                                       ; preds = %._crit_edge.3
  %B_load_4 = load float* %B_addr_4, align 4
  %tmp_20_to_int_4 = bitcast float %B_load_4 to i32
  %tmp_20_neg_4 = xor i32 %tmp_20_to_int_4, -2147483648
  %tmp_20_4 = bitcast i32 %tmp_20_neg_4 to float
  store float %tmp_20_4, float* %B_addr_4, align 4
  br label %._crit_edge.4

._crit_edge.5:                                    ; preds = %7, %._crit_edge.4
  br i1 %tmp_57, label %8, label %._crit_edge.6

; <label>:7                                       ; preds = %._crit_edge.4
  %B_load_5 = load float* %B_addr_5, align 4
  %tmp_20_to_int_5 = bitcast float %B_load_5 to i32
  %tmp_20_neg_5 = xor i32 %tmp_20_to_int_5, -2147483648
  %tmp_20_5 = bitcast i32 %tmp_20_neg_5 to float
  store float %tmp_20_5, float* %B_addr_5, align 4
  br label %._crit_edge.5

._crit_edge.6:                                    ; preds = %8, %._crit_edge.5
  br i1 %tmp_63, label %9, label %._crit_edge.7

; <label>:8                                       ; preds = %._crit_edge.5
  %B_load_6 = load float* %B_addr_6, align 4
  %tmp_20_to_int_6 = bitcast float %B_load_6 to i32
  %tmp_20_neg_6 = xor i32 %tmp_20_to_int_6, -2147483648
  %tmp_20_6 = bitcast i32 %tmp_20_neg_6 to float
  store float %tmp_20_6, float* %B_addr_6, align 4
  br label %._crit_edge.6

._crit_edge.7:                                    ; preds = %9, %._crit_edge.6
  br i1 %tmp_69, label %10, label %._crit_edge.8

; <label>:9                                       ; preds = %._crit_edge.6
  %B_load_7 = load float* %B_addr_7, align 4
  %tmp_20_to_int_7 = bitcast float %B_load_7 to i32
  %tmp_20_neg_7 = xor i32 %tmp_20_to_int_7, -2147483648
  %tmp_20_7 = bitcast i32 %tmp_20_neg_7 to float
  store float %tmp_20_7, float* %B_addr_7, align 4
  br label %._crit_edge.7

._crit_edge.8:                                    ; preds = %10, %._crit_edge.7
  br i1 %tmp_75, label %11, label %._crit_edge.9

; <label>:10                                      ; preds = %._crit_edge.7
  %B_load_8 = load float* %B_addr_8, align 4
  %tmp_20_to_int_8 = bitcast float %B_load_8 to i32
  %tmp_20_neg_8 = xor i32 %tmp_20_to_int_8, -2147483648
  %tmp_20_8 = bitcast i32 %tmp_20_neg_8 to float
  store float %tmp_20_8, float* %B_addr_8, align 4
  br label %._crit_edge.8

._crit_edge.9:                                    ; preds = %11, %._crit_edge.8
  br i1 %tmp_81, label %12, label %._crit_edge.10

; <label>:11                                      ; preds = %._crit_edge.8
  %B_load_9 = load float* %B_addr_9, align 4
  %tmp_20_to_int_9 = bitcast float %B_load_9 to i32
  %tmp_20_neg_9 = xor i32 %tmp_20_to_int_9, -2147483648
  %tmp_20_9 = bitcast i32 %tmp_20_neg_9 to float
  store float %tmp_20_9, float* %B_addr_9, align 4
  br label %._crit_edge.9

._crit_edge.10:                                   ; preds = %12, %._crit_edge.9
  br i1 %tmp_87, label %13, label %._crit_edge.11

; <label>:12                                      ; preds = %._crit_edge.9
  %B_load_10 = load float* %B_addr_10, align 4
  %tmp_20_to_int_s = bitcast float %B_load_10 to i32
  %tmp_20_neg_s = xor i32 %tmp_20_to_int_s, -2147483648
  %tmp_20_s = bitcast i32 %tmp_20_neg_s to float
  store float %tmp_20_s, float* %B_addr_10, align 4
  br label %._crit_edge.10

._crit_edge.11:                                   ; preds = %13, %._crit_edge.10
  br i1 %tmp_93, label %14, label %._crit_edge.12

; <label>:13                                      ; preds = %._crit_edge.10
  %B_load_11 = load float* %B_addr_11, align 4
  %tmp_20_to_int_10 = bitcast float %B_load_11 to i32
  %tmp_20_neg_10 = xor i32 %tmp_20_to_int_10, -2147483648
  %tmp_20_10 = bitcast i32 %tmp_20_neg_10 to float
  store float %tmp_20_10, float* %B_addr_11, align 4
  br label %._crit_edge.11

._crit_edge.12:                                   ; preds = %14, %._crit_edge.11
  br i1 %tmp_99, label %15, label %._crit_edge.13

; <label>:14                                      ; preds = %._crit_edge.11
  %B_load_12 = load float* %B_addr_12, align 4
  %tmp_20_to_int_11 = bitcast float %B_load_12 to i32
  %tmp_20_neg_11 = xor i32 %tmp_20_to_int_11, -2147483648
  %tmp_20_11 = bitcast i32 %tmp_20_neg_11 to float
  store float %tmp_20_11, float* %B_addr_12, align 4
  br label %._crit_edge.12

._crit_edge.13:                                   ; preds = %15, %._crit_edge.12
  br i1 %tmp_105, label %16, label %._crit_edge.14

; <label>:15                                      ; preds = %._crit_edge.12
  %B_load_13 = load float* %B_addr_13, align 4
  %tmp_20_to_int_12 = bitcast float %B_load_13 to i32
  %tmp_20_neg_12 = xor i32 %tmp_20_to_int_12, -2147483648
  %tmp_20_12 = bitcast i32 %tmp_20_neg_12 to float
  store float %tmp_20_12, float* %B_addr_13, align 4
  br label %._crit_edge.13

._crit_edge.14:                                   ; preds = %16, %._crit_edge.13
  br i1 %tmp_111, label %17, label %._crit_edge.15

; <label>:16                                      ; preds = %._crit_edge.13
  %B_load_14 = load float* %B_addr_14, align 4
  %tmp_20_to_int_13 = bitcast float %B_load_14 to i32
  %tmp_20_neg_13 = xor i32 %tmp_20_to_int_13, -2147483648
  %tmp_20_13 = bitcast i32 %tmp_20_neg_13 to float
  store float %tmp_20_13, float* %B_addr_14, align 4
  br label %._crit_edge.14

._crit_edge.15:                                   ; preds = %17, %._crit_edge.14
  br i1 %tmp_117, label %18, label %._crit_edge.16

; <label>:17                                      ; preds = %._crit_edge.14
  %B_load_15 = load float* %B_addr_15, align 4
  %tmp_20_to_int_14 = bitcast float %B_load_15 to i32
  %tmp_20_neg_14 = xor i32 %tmp_20_to_int_14, -2147483648
  %tmp_20_14 = bitcast i32 %tmp_20_neg_14 to float
  store float %tmp_20_14, float* %B_addr_15, align 4
  br label %._crit_edge.15

._crit_edge.16:                                   ; preds = %18, %._crit_edge.15
  br i1 %tmp_123, label %19, label %._crit_edge.17

; <label>:18                                      ; preds = %._crit_edge.15
  %B_load_16 = load float* %B_addr_16, align 4
  %tmp_20_to_int_15 = bitcast float %B_load_16 to i32
  %tmp_20_neg_15 = xor i32 %tmp_20_to_int_15, -2147483648
  %tmp_20_15 = bitcast i32 %tmp_20_neg_15 to float
  store float %tmp_20_15, float* %B_addr_16, align 4
  br label %._crit_edge.16

._crit_edge.17:                                   ; preds = %19, %._crit_edge.16
  br i1 %tmp_129, label %20, label %._crit_edge.18

; <label>:19                                      ; preds = %._crit_edge.16
  %B_load_17 = load float* %B_addr_17, align 4
  %tmp_20_to_int_16 = bitcast float %B_load_17 to i32
  %tmp_20_neg_16 = xor i32 %tmp_20_to_int_16, -2147483648
  %tmp_20_16 = bitcast i32 %tmp_20_neg_16 to float
  store float %tmp_20_16, float* %B_addr_17, align 4
  br label %._crit_edge.17

._crit_edge.18:                                   ; preds = %20, %._crit_edge.17
  br i1 %tmp_135, label %21, label %._crit_edge.19

; <label>:20                                      ; preds = %._crit_edge.17
  %B_load_18 = load float* %B_addr_18, align 4
  %tmp_20_to_int_17 = bitcast float %B_load_18 to i32
  %tmp_20_neg_17 = xor i32 %tmp_20_to_int_17, -2147483648
  %tmp_20_17 = bitcast i32 %tmp_20_neg_17 to float
  store float %tmp_20_17, float* %B_addr_18, align 4
  br label %._crit_edge.18

._crit_edge.19:                                   ; preds = %21, %._crit_edge.18
  br i1 %tmp_141, label %22, label %._crit_edge.20

; <label>:21                                      ; preds = %._crit_edge.18
  %B_load_19 = load float* %B_addr_19, align 4
  %tmp_20_to_int_18 = bitcast float %B_load_19 to i32
  %tmp_20_neg_18 = xor i32 %tmp_20_to_int_18, -2147483648
  %tmp_20_18 = bitcast i32 %tmp_20_neg_18 to float
  store float %tmp_20_18, float* %B_addr_19, align 4
  br label %._crit_edge.19

._crit_edge.20:                                   ; preds = %22, %._crit_edge.19
  br i1 %tmp_147, label %23, label %._crit_edge.21

; <label>:22                                      ; preds = %._crit_edge.19
  %B_load_20 = load float* %B_addr_20, align 4
  %tmp_20_to_int_19 = bitcast float %B_load_20 to i32
  %tmp_20_neg_19 = xor i32 %tmp_20_to_int_19, -2147483648
  %tmp_20_19 = bitcast i32 %tmp_20_neg_19 to float
  store float %tmp_20_19, float* %B_addr_20, align 4
  br label %._crit_edge.20

._crit_edge.21:                                   ; preds = %23, %._crit_edge.20
  br i1 %tmp_153, label %24, label %._crit_edge.22

; <label>:23                                      ; preds = %._crit_edge.20
  %B_load_21 = load float* %B_addr_21, align 4
  %tmp_20_to_int_20 = bitcast float %B_load_21 to i32
  %tmp_20_neg_20 = xor i32 %tmp_20_to_int_20, -2147483648
  %tmp_20_20 = bitcast i32 %tmp_20_neg_20 to float
  store float %tmp_20_20, float* %B_addr_21, align 4
  br label %._crit_edge.21

._crit_edge.22:                                   ; preds = %24, %._crit_edge.21
  br i1 %tmp_159, label %25, label %._crit_edge.23

; <label>:24                                      ; preds = %._crit_edge.21
  %B_load_22 = load float* %B_addr_22, align 4
  %tmp_20_to_int_21 = bitcast float %B_load_22 to i32
  %tmp_20_neg_21 = xor i32 %tmp_20_to_int_21, -2147483648
  %tmp_20_21 = bitcast i32 %tmp_20_neg_21 to float
  store float %tmp_20_21, float* %B_addr_22, align 4
  br label %._crit_edge.22

._crit_edge.23:                                   ; preds = %25, %._crit_edge.22
  br i1 %tmp_165, label %26, label %._crit_edge.24

; <label>:25                                      ; preds = %._crit_edge.22
  %B_load_23 = load float* %B_addr_23, align 4
  %tmp_20_to_int_22 = bitcast float %B_load_23 to i32
  %tmp_20_neg_22 = xor i32 %tmp_20_to_int_22, -2147483648
  %tmp_20_22 = bitcast i32 %tmp_20_neg_22 to float
  store float %tmp_20_22, float* %B_addr_23, align 4
  br label %._crit_edge.23

._crit_edge.24:                                   ; preds = %26, %._crit_edge.23
  br i1 %tmp_171, label %27, label %._crit_edge.25

; <label>:26                                      ; preds = %._crit_edge.23
  %B_load_24 = load float* %B_addr_24, align 4
  %tmp_20_to_int_23 = bitcast float %B_load_24 to i32
  %tmp_20_neg_23 = xor i32 %tmp_20_to_int_23, -2147483648
  %tmp_20_23 = bitcast i32 %tmp_20_neg_23 to float
  store float %tmp_20_23, float* %B_addr_24, align 4
  br label %._crit_edge.24

._crit_edge.25:                                   ; preds = %27, %._crit_edge.24
  br i1 %tmp_177, label %28, label %._crit_edge.26

; <label>:27                                      ; preds = %._crit_edge.24
  %B_load_25 = load float* %B_addr_25, align 4
  %tmp_20_to_int_24 = bitcast float %B_load_25 to i32
  %tmp_20_neg_24 = xor i32 %tmp_20_to_int_24, -2147483648
  %tmp_20_24 = bitcast i32 %tmp_20_neg_24 to float
  store float %tmp_20_24, float* %B_addr_25, align 4
  br label %._crit_edge.25

._crit_edge.26:                                   ; preds = %28, %._crit_edge.25
  br i1 %tmp_183, label %29, label %._crit_edge.27

; <label>:28                                      ; preds = %._crit_edge.25
  %B_load_26 = load float* %B_addr_26, align 4
  %tmp_20_to_int_25 = bitcast float %B_load_26 to i32
  %tmp_20_neg_25 = xor i32 %tmp_20_to_int_25, -2147483648
  %tmp_20_25 = bitcast i32 %tmp_20_neg_25 to float
  store float %tmp_20_25, float* %B_addr_26, align 4
  br label %._crit_edge.26

._crit_edge.27:                                   ; preds = %29, %._crit_edge.26
  br i1 %tmp_189, label %30, label %._crit_edge.28

; <label>:29                                      ; preds = %._crit_edge.26
  %B_load_27 = load float* %B_addr_27, align 4
  %tmp_20_to_int_26 = bitcast float %B_load_27 to i32
  %tmp_20_neg_26 = xor i32 %tmp_20_to_int_26, -2147483648
  %tmp_20_26 = bitcast i32 %tmp_20_neg_26 to float
  store float %tmp_20_26, float* %B_addr_27, align 4
  br label %._crit_edge.27

._crit_edge.28:                                   ; preds = %30, %._crit_edge.27
  br i1 %tmp_195, label %31, label %._crit_edge.29

; <label>:30                                      ; preds = %._crit_edge.27
  %B_load_28 = load float* %B_addr_28, align 4
  %tmp_20_to_int_27 = bitcast float %B_load_28 to i32
  %tmp_20_neg_27 = xor i32 %tmp_20_to_int_27, -2147483648
  %tmp_20_27 = bitcast i32 %tmp_20_neg_27 to float
  store float %tmp_20_27, float* %B_addr_28, align 4
  br label %._crit_edge.28

._crit_edge.29:                                   ; preds = %31, %._crit_edge.28
  br i1 %tmp_201, label %32, label %._crit_edge.30

; <label>:31                                      ; preds = %._crit_edge.28
  %B_load_29 = load float* %B_addr_29, align 4
  %tmp_20_to_int_28 = bitcast float %B_load_29 to i32
  %tmp_20_neg_28 = xor i32 %tmp_20_to_int_28, -2147483648
  %tmp_20_28 = bitcast i32 %tmp_20_neg_28 to float
  store float %tmp_20_28, float* %B_addr_29, align 4
  br label %._crit_edge.29

._crit_edge.30:                                   ; preds = %32, %._crit_edge.29
  br i1 %tmp_207, label %33, label %._crit_edge.31

; <label>:32                                      ; preds = %._crit_edge.29
  %B_load_30 = load float* %B_addr_30, align 4
  %tmp_20_to_int_29 = bitcast float %B_load_30 to i32
  %tmp_20_neg_29 = xor i32 %tmp_20_to_int_29, -2147483648
  %tmp_20_29 = bitcast i32 %tmp_20_neg_29 to float
  store float %tmp_20_29, float* %B_addr_30, align 4
  br label %._crit_edge.30

._crit_edge.31:                                   ; preds = %33, %._crit_edge.30
  br i1 %tmp_213, label %34, label %._crit_edge.32

; <label>:33                                      ; preds = %._crit_edge.30
  %B_load_31 = load float* %B_addr_31, align 4
  %tmp_20_to_int_30 = bitcast float %B_load_31 to i32
  %tmp_20_neg_30 = xor i32 %tmp_20_to_int_30, -2147483648
  %tmp_20_30 = bitcast i32 %tmp_20_neg_30 to float
  store float %tmp_20_30, float* %B_addr_31, align 4
  br label %._crit_edge.31

._crit_edge.32:                                   ; preds = %34, %._crit_edge.31
  br i1 %tmp_219, label %35, label %._crit_edge.33

; <label>:34                                      ; preds = %._crit_edge.31
  %B_load_32 = load float* %B_addr_32, align 4
  %tmp_20_to_int_31 = bitcast float %B_load_32 to i32
  %tmp_20_neg_31 = xor i32 %tmp_20_to_int_31, -2147483648
  %tmp_20_31 = bitcast i32 %tmp_20_neg_31 to float
  store float %tmp_20_31, float* %B_addr_32, align 4
  br label %._crit_edge.32

._crit_edge.33:                                   ; preds = %35, %._crit_edge.32
  br i1 %tmp_225, label %36, label %._crit_edge.34

; <label>:35                                      ; preds = %._crit_edge.32
  %B_load_33 = load float* %B_addr_33, align 4
  %tmp_20_to_int_32 = bitcast float %B_load_33 to i32
  %tmp_20_neg_32 = xor i32 %tmp_20_to_int_32, -2147483648
  %tmp_20_32 = bitcast i32 %tmp_20_neg_32 to float
  store float %tmp_20_32, float* %B_addr_33, align 4
  br label %._crit_edge.33

._crit_edge.34:                                   ; preds = %36, %._crit_edge.33
  br i1 %tmp_231, label %37, label %._crit_edge.35

; <label>:36                                      ; preds = %._crit_edge.33
  %B_load_34 = load float* %B_addr_34, align 4
  %tmp_20_to_int_33 = bitcast float %B_load_34 to i32
  %tmp_20_neg_33 = xor i32 %tmp_20_to_int_33, -2147483648
  %tmp_20_33 = bitcast i32 %tmp_20_neg_33 to float
  store float %tmp_20_33, float* %B_addr_34, align 4
  br label %._crit_edge.34

._crit_edge.35:                                   ; preds = %37, %._crit_edge.34
  br i1 %tmp_237, label %38, label %._crit_edge.36

; <label>:37                                      ; preds = %._crit_edge.34
  %B_load_35 = load float* %B_addr_35, align 4
  %tmp_20_to_int_34 = bitcast float %B_load_35 to i32
  %tmp_20_neg_34 = xor i32 %tmp_20_to_int_34, -2147483648
  %tmp_20_34 = bitcast i32 %tmp_20_neg_34 to float
  store float %tmp_20_34, float* %B_addr_35, align 4
  br label %._crit_edge.35

._crit_edge.36:                                   ; preds = %38, %._crit_edge.35
  br i1 %tmp_243, label %39, label %._crit_edge.37

; <label>:38                                      ; preds = %._crit_edge.35
  %B_load_36 = load float* %B_addr_36, align 4
  %tmp_20_to_int_35 = bitcast float %B_load_36 to i32
  %tmp_20_neg_35 = xor i32 %tmp_20_to_int_35, -2147483648
  %tmp_20_35 = bitcast i32 %tmp_20_neg_35 to float
  store float %tmp_20_35, float* %B_addr_36, align 4
  br label %._crit_edge.36

._crit_edge.37:                                   ; preds = %39, %._crit_edge.36
  br i1 %tmp_249, label %40, label %._crit_edge.38

; <label>:39                                      ; preds = %._crit_edge.36
  %B_load_37 = load float* %B_addr_37, align 4
  %tmp_20_to_int_36 = bitcast float %B_load_37 to i32
  %tmp_20_neg_36 = xor i32 %tmp_20_to_int_36, -2147483648
  %tmp_20_36 = bitcast i32 %tmp_20_neg_36 to float
  store float %tmp_20_36, float* %B_addr_37, align 4
  br label %._crit_edge.37

._crit_edge.38:                                   ; preds = %40, %._crit_edge.37
  br i1 %tmp_255, label %41, label %._crit_edge.39

; <label>:40                                      ; preds = %._crit_edge.37
  %B_load_38 = load float* %B_addr_38, align 4
  %tmp_20_to_int_37 = bitcast float %B_load_38 to i32
  %tmp_20_neg_37 = xor i32 %tmp_20_to_int_37, -2147483648
  %tmp_20_37 = bitcast i32 %tmp_20_neg_37 to float
  store float %tmp_20_37, float* %B_addr_38, align 4
  br label %._crit_edge.38

._crit_edge.39:                                   ; preds = %41, %._crit_edge.38
  br i1 %tmp_261, label %42, label %._crit_edge.40

; <label>:41                                      ; preds = %._crit_edge.38
  %B_load_39 = load float* %B_addr_39, align 4
  %tmp_20_to_int_38 = bitcast float %B_load_39 to i32
  %tmp_20_neg_38 = xor i32 %tmp_20_to_int_38, -2147483648
  %tmp_20_38 = bitcast i32 %tmp_20_neg_38 to float
  store float %tmp_20_38, float* %B_addr_39, align 4
  br label %._crit_edge.39

._crit_edge.40:                                   ; preds = %42, %._crit_edge.39
  br i1 %tmp_267, label %43, label %._crit_edge.41

; <label>:42                                      ; preds = %._crit_edge.39
  %B_load_40 = load float* %B_addr_40, align 4
  %tmp_20_to_int_39 = bitcast float %B_load_40 to i32
  %tmp_20_neg_39 = xor i32 %tmp_20_to_int_39, -2147483648
  %tmp_20_39 = bitcast i32 %tmp_20_neg_39 to float
  store float %tmp_20_39, float* %B_addr_40, align 4
  br label %._crit_edge.40

._crit_edge.41:                                   ; preds = %43, %._crit_edge.40
  br i1 %tmp_273, label %44, label %._crit_edge.42

; <label>:43                                      ; preds = %._crit_edge.40
  %B_load_41 = load float* %B_addr_41, align 4
  %tmp_20_to_int_40 = bitcast float %B_load_41 to i32
  %tmp_20_neg_40 = xor i32 %tmp_20_to_int_40, -2147483648
  %tmp_20_40 = bitcast i32 %tmp_20_neg_40 to float
  store float %tmp_20_40, float* %B_addr_41, align 4
  br label %._crit_edge.41

._crit_edge.42:                                   ; preds = %44, %._crit_edge.41
  br i1 %tmp_279, label %45, label %._crit_edge.43

; <label>:44                                      ; preds = %._crit_edge.41
  %B_load_42 = load float* %B_addr_42, align 4
  %tmp_20_to_int_41 = bitcast float %B_load_42 to i32
  %tmp_20_neg_41 = xor i32 %tmp_20_to_int_41, -2147483648
  %tmp_20_41 = bitcast i32 %tmp_20_neg_41 to float
  store float %tmp_20_41, float* %B_addr_42, align 4
  br label %._crit_edge.42

._crit_edge.43:                                   ; preds = %45, %._crit_edge.42
  br i1 %tmp_285, label %46, label %._crit_edge.44

; <label>:45                                      ; preds = %._crit_edge.42
  %B_load_43 = load float* %B_addr_43, align 4
  %tmp_20_to_int_42 = bitcast float %B_load_43 to i32
  %tmp_20_neg_42 = xor i32 %tmp_20_to_int_42, -2147483648
  %tmp_20_42 = bitcast i32 %tmp_20_neg_42 to float
  store float %tmp_20_42, float* %B_addr_43, align 4
  br label %._crit_edge.43

._crit_edge.44:                                   ; preds = %46, %._crit_edge.43
  br i1 %tmp_291, label %47, label %._crit_edge.45

; <label>:46                                      ; preds = %._crit_edge.43
  %B_load_44 = load float* %B_addr_44, align 4
  %tmp_20_to_int_43 = bitcast float %B_load_44 to i32
  %tmp_20_neg_43 = xor i32 %tmp_20_to_int_43, -2147483648
  %tmp_20_43 = bitcast i32 %tmp_20_neg_43 to float
  store float %tmp_20_43, float* %B_addr_44, align 4
  br label %._crit_edge.44

._crit_edge.45:                                   ; preds = %47, %._crit_edge.44
  br i1 %tmp_297, label %48, label %._crit_edge.46

; <label>:47                                      ; preds = %._crit_edge.44
  %B_load_45 = load float* %B_addr_45, align 4
  %tmp_20_to_int_44 = bitcast float %B_load_45 to i32
  %tmp_20_neg_44 = xor i32 %tmp_20_to_int_44, -2147483648
  %tmp_20_44 = bitcast i32 %tmp_20_neg_44 to float
  store float %tmp_20_44, float* %B_addr_45, align 4
  br label %._crit_edge.45

._crit_edge.46:                                   ; preds = %48, %._crit_edge.45
  br i1 %tmp_303, label %49, label %._crit_edge.47

; <label>:48                                      ; preds = %._crit_edge.45
  %B_load_46 = load float* %B_addr_46, align 4
  %tmp_20_to_int_45 = bitcast float %B_load_46 to i32
  %tmp_20_neg_45 = xor i32 %tmp_20_to_int_45, -2147483648
  %tmp_20_45 = bitcast i32 %tmp_20_neg_45 to float
  store float %tmp_20_45, float* %B_addr_46, align 4
  br label %._crit_edge.46

._crit_edge.47:                                   ; preds = %49, %._crit_edge.46
  br i1 %tmp_309, label %50, label %._crit_edge.48

; <label>:49                                      ; preds = %._crit_edge.46
  %B_load_47 = load float* %B_addr_47, align 4
  %tmp_20_to_int_46 = bitcast float %B_load_47 to i32
  %tmp_20_neg_46 = xor i32 %tmp_20_to_int_46, -2147483648
  %tmp_20_46 = bitcast i32 %tmp_20_neg_46 to float
  store float %tmp_20_46, float* %B_addr_47, align 4
  br label %._crit_edge.47

._crit_edge.48:                                   ; preds = %50, %._crit_edge.47
  br i1 %tmp_315, label %51, label %._crit_edge.49

; <label>:50                                      ; preds = %._crit_edge.47
  %B_load_48 = load float* %B_addr_48, align 4
  %tmp_20_to_int_47 = bitcast float %B_load_48 to i32
  %tmp_20_neg_47 = xor i32 %tmp_20_to_int_47, -2147483648
  %tmp_20_47 = bitcast i32 %tmp_20_neg_47 to float
  store float %tmp_20_47, float* %B_addr_48, align 4
  br label %._crit_edge.48

._crit_edge.49:                                   ; preds = %51, %._crit_edge.48
  br i1 %tmp_321, label %52, label %._crit_edge.50

; <label>:51                                      ; preds = %._crit_edge.48
  %B_load_49 = load float* %B_addr_49, align 4
  %tmp_20_to_int_48 = bitcast float %B_load_49 to i32
  %tmp_20_neg_48 = xor i32 %tmp_20_to_int_48, -2147483648
  %tmp_20_48 = bitcast i32 %tmp_20_neg_48 to float
  store float %tmp_20_48, float* %B_addr_49, align 4
  br label %._crit_edge.49

._crit_edge.50:                                   ; preds = %52, %._crit_edge.49
  br i1 %tmp_327, label %53, label %._crit_edge.51

; <label>:52                                      ; preds = %._crit_edge.49
  %B_load_50 = load float* %B_addr_50, align 4
  %tmp_20_to_int_49 = bitcast float %B_load_50 to i32
  %tmp_20_neg_49 = xor i32 %tmp_20_to_int_49, -2147483648
  %tmp_20_49 = bitcast i32 %tmp_20_neg_49 to float
  store float %tmp_20_49, float* %B_addr_50, align 4
  br label %._crit_edge.50

._crit_edge.51:                                   ; preds = %53, %._crit_edge.50
  br i1 %tmp_333, label %54, label %._crit_edge.52

; <label>:53                                      ; preds = %._crit_edge.50
  %B_load_51 = load float* %B_addr_51, align 4
  %tmp_20_to_int_50 = bitcast float %B_load_51 to i32
  %tmp_20_neg_50 = xor i32 %tmp_20_to_int_50, -2147483648
  %tmp_20_50 = bitcast i32 %tmp_20_neg_50 to float
  store float %tmp_20_50, float* %B_addr_51, align 4
  br label %._crit_edge.51

._crit_edge.52:                                   ; preds = %54, %._crit_edge.51
  br i1 %tmp_339, label %55, label %._crit_edge.53

; <label>:54                                      ; preds = %._crit_edge.51
  %B_load_52 = load float* %B_addr_52, align 4
  %tmp_20_to_int_51 = bitcast float %B_load_52 to i32
  %tmp_20_neg_51 = xor i32 %tmp_20_to_int_51, -2147483648
  %tmp_20_51 = bitcast i32 %tmp_20_neg_51 to float
  store float %tmp_20_51, float* %B_addr_52, align 4
  br label %._crit_edge.52

._crit_edge.53:                                   ; preds = %55, %._crit_edge.52
  br i1 %tmp_345, label %56, label %._crit_edge.54

; <label>:55                                      ; preds = %._crit_edge.52
  %B_load_53 = load float* %B_addr_53, align 4
  %tmp_20_to_int_52 = bitcast float %B_load_53 to i32
  %tmp_20_neg_52 = xor i32 %tmp_20_to_int_52, -2147483648
  %tmp_20_52 = bitcast i32 %tmp_20_neg_52 to float
  store float %tmp_20_52, float* %B_addr_53, align 4
  br label %._crit_edge.53

._crit_edge.54:                                   ; preds = %56, %._crit_edge.53
  br i1 %tmp_351, label %57, label %._crit_edge.55

; <label>:56                                      ; preds = %._crit_edge.53
  %B_load_54 = load float* %B_addr_54, align 4
  %tmp_20_to_int_53 = bitcast float %B_load_54 to i32
  %tmp_20_neg_53 = xor i32 %tmp_20_to_int_53, -2147483648
  %tmp_20_53 = bitcast i32 %tmp_20_neg_53 to float
  store float %tmp_20_53, float* %B_addr_54, align 4
  br label %._crit_edge.54

._crit_edge.55:                                   ; preds = %57, %._crit_edge.54
  br i1 %tmp_357, label %58, label %._crit_edge.56

; <label>:57                                      ; preds = %._crit_edge.54
  %B_load_55 = load float* %B_addr_55, align 4
  %tmp_20_to_int_54 = bitcast float %B_load_55 to i32
  %tmp_20_neg_54 = xor i32 %tmp_20_to_int_54, -2147483648
  %tmp_20_54 = bitcast i32 %tmp_20_neg_54 to float
  store float %tmp_20_54, float* %B_addr_55, align 4
  br label %._crit_edge.55

._crit_edge.56:                                   ; preds = %58, %._crit_edge.55
  br i1 %tmp_363, label %59, label %._crit_edge.57

; <label>:58                                      ; preds = %._crit_edge.55
  %B_load_56 = load float* %B_addr_56, align 4
  %tmp_20_to_int_55 = bitcast float %B_load_56 to i32
  %tmp_20_neg_55 = xor i32 %tmp_20_to_int_55, -2147483648
  %tmp_20_55 = bitcast i32 %tmp_20_neg_55 to float
  store float %tmp_20_55, float* %B_addr_56, align 4
  br label %._crit_edge.56

._crit_edge.57:                                   ; preds = %59, %._crit_edge.56
  br i1 %tmp_369, label %60, label %._crit_edge.58

; <label>:59                                      ; preds = %._crit_edge.56
  %B_load_57 = load float* %B_addr_57, align 4
  %tmp_20_to_int_56 = bitcast float %B_load_57 to i32
  %tmp_20_neg_56 = xor i32 %tmp_20_to_int_56, -2147483648
  %tmp_20_56 = bitcast i32 %tmp_20_neg_56 to float
  store float %tmp_20_56, float* %B_addr_57, align 4
  br label %._crit_edge.57

._crit_edge.58:                                   ; preds = %60, %._crit_edge.57
  br i1 %tmp_375, label %61, label %._crit_edge.59

; <label>:60                                      ; preds = %._crit_edge.57
  %B_load_58 = load float* %B_addr_58, align 4
  %tmp_20_to_int_57 = bitcast float %B_load_58 to i32
  %tmp_20_neg_57 = xor i32 %tmp_20_to_int_57, -2147483648
  %tmp_20_57 = bitcast i32 %tmp_20_neg_57 to float
  store float %tmp_20_57, float* %B_addr_58, align 4
  br label %._crit_edge.58

._crit_edge.59:                                   ; preds = %61, %._crit_edge.58
  br i1 %tmp_381, label %62, label %._crit_edge.60

; <label>:61                                      ; preds = %._crit_edge.58
  %B_load_59 = load float* %B_addr_59, align 4
  %tmp_20_to_int_58 = bitcast float %B_load_59 to i32
  %tmp_20_neg_58 = xor i32 %tmp_20_to_int_58, -2147483648
  %tmp_20_58 = bitcast i32 %tmp_20_neg_58 to float
  store float %tmp_20_58, float* %B_addr_59, align 4
  br label %._crit_edge.59

._crit_edge.60:                                   ; preds = %62, %._crit_edge.59
  br i1 %tmp_387, label %63, label %._crit_edge.61

; <label>:62                                      ; preds = %._crit_edge.59
  %B_load_60 = load float* %B_addr_60, align 4
  %tmp_20_to_int_59 = bitcast float %B_load_60 to i32
  %tmp_20_neg_59 = xor i32 %tmp_20_to_int_59, -2147483648
  %tmp_20_59 = bitcast i32 %tmp_20_neg_59 to float
  store float %tmp_20_59, float* %B_addr_60, align 4
  br label %._crit_edge.60

._crit_edge.61:                                   ; preds = %63, %._crit_edge.60
  br i1 %tmp_393, label %64, label %._crit_edge.62

; <label>:63                                      ; preds = %._crit_edge.60
  %B_load_61 = load float* %B_addr_61, align 4
  %tmp_20_to_int_60 = bitcast float %B_load_61 to i32
  %tmp_20_neg_60 = xor i32 %tmp_20_to_int_60, -2147483648
  %tmp_20_60 = bitcast i32 %tmp_20_neg_60 to float
  store float %tmp_20_60, float* %B_addr_61, align 4
  br label %._crit_edge.61

._crit_edge.62:                                   ; preds = %64, %._crit_edge.61
  br i1 %tmp_399, label %65, label %._crit_edge.63

; <label>:64                                      ; preds = %._crit_edge.61
  %B_load_62 = load float* %B_addr_62, align 4
  %tmp_20_to_int_61 = bitcast float %B_load_62 to i32
  %tmp_20_neg_61 = xor i32 %tmp_20_to_int_61, -2147483648
  %tmp_20_61 = bitcast i32 %tmp_20_neg_61 to float
  store float %tmp_20_61, float* %B_addr_62, align 4
  br label %._crit_edge.62

._crit_edge.63:                                   ; preds = %65, %._crit_edge.62
  %B_load_64 = load float* %B_addr, align 4
  %A_2 = fadd float %B_load_64, 0.000000e+00
  %B_load_65 = load float* %B_addr_1, align 4
  %A_2_1 = fadd float %B_load_65, %A_2
  %B_load_66 = load float* %B_addr_2, align 4
  %A_2_2 = fadd float %B_load_66, %A_2_1
  %B_load_67 = load float* %B_addr_3, align 4
  %A_2_3 = fadd float %B_load_67, %A_2_2
  %B_load_68 = load float* %B_addr_4, align 4
  %A_2_4 = fadd float %B_load_68, %A_2_3
  %B_load_69 = load float* %B_addr_5, align 4
  %A_2_5 = fadd float %B_load_69, %A_2_4
  %B_load_70 = load float* %B_addr_6, align 4
  %A_2_6 = fadd float %B_load_70, %A_2_5
  %B_load_71 = load float* %B_addr_7, align 4
  %A_2_7 = fadd float %B_load_71, %A_2_6
  %B_load_72 = load float* %B_addr_8, align 4
  %A_2_8 = fadd float %B_load_72, %A_2_7
  %B_load_73 = load float* %B_addr_9, align 4
  %A_2_9 = fadd float %B_load_73, %A_2_8
  %B_load_74 = load float* %B_addr_10, align 4
  %A_2_s = fadd float %B_load_74, %A_2_9
  %B_load_75 = load float* %B_addr_11, align 4
  %A_2_10 = fadd float %B_load_75, %A_2_s
  %B_load_76 = load float* %B_addr_12, align 4
  %A_2_11 = fadd float %B_load_76, %A_2_10
  %B_load_77 = load float* %B_addr_13, align 4
  %A_2_12 = fadd float %B_load_77, %A_2_11
  %B_load_78 = load float* %B_addr_14, align 4
  %A_2_13 = fadd float %B_load_78, %A_2_12
  %B_load_79 = load float* %B_addr_15, align 4
  %A_2_14 = fadd float %B_load_79, %A_2_13
  %B_load_80 = load float* %B_addr_16, align 4
  %A_2_15 = fadd float %B_load_80, %A_2_14
  %B_load_81 = load float* %B_addr_17, align 4
  %A_2_16 = fadd float %B_load_81, %A_2_15
  %B_load_82 = load float* %B_addr_18, align 4
  %A_2_17 = fadd float %B_load_82, %A_2_16
  %B_load_83 = load float* %B_addr_19, align 4
  %A_2_18 = fadd float %B_load_83, %A_2_17
  %B_load_84 = load float* %B_addr_20, align 4
  %A_2_19 = fadd float %B_load_84, %A_2_18
  %B_load_85 = load float* %B_addr_21, align 4
  %A_2_20 = fadd float %B_load_85, %A_2_19
  %B_load_86 = load float* %B_addr_22, align 4
  %A_2_21 = fadd float %B_load_86, %A_2_20
  %B_load_87 = load float* %B_addr_23, align 4
  %A_2_22 = fadd float %B_load_87, %A_2_21
  %B_load_88 = load float* %B_addr_24, align 4
  %A_2_23 = fadd float %B_load_88, %A_2_22
  %B_load_89 = load float* %B_addr_25, align 4
  %A_2_24 = fadd float %B_load_89, %A_2_23
  %B_load_90 = load float* %B_addr_26, align 4
  %A_2_25 = fadd float %B_load_90, %A_2_24
  %B_load_91 = load float* %B_addr_27, align 4
  %A_2_26 = fadd float %B_load_91, %A_2_25
  %B_load_92 = load float* %B_addr_28, align 4
  %A_2_27 = fadd float %B_load_92, %A_2_26
  %B_load_93 = load float* %B_addr_29, align 4
  %A_2_28 = fadd float %B_load_93, %A_2_27
  %B_load_94 = load float* %B_addr_30, align 4
  %A_2_29 = fadd float %B_load_94, %A_2_28
  %B_load_95 = load float* %B_addr_31, align 4
  %A_2_30 = fadd float %B_load_95, %A_2_29
  %B_load_96 = load float* %B_addr_32, align 4
  %A_2_31 = fadd float %B_load_96, %A_2_30
  %B_load_97 = load float* %B_addr_33, align 4
  %A_2_32 = fadd float %B_load_97, %A_2_31
  %B_load_98 = load float* %B_addr_34, align 4
  %A_2_33 = fadd float %B_load_98, %A_2_32
  %B_load_99 = load float* %B_addr_35, align 4
  %A_2_34 = fadd float %B_load_99, %A_2_33
  %B_load_100 = load float* %B_addr_36, align 4
  %A_2_35 = fadd float %B_load_100, %A_2_34
  %B_load_101 = load float* %B_addr_37, align 4
  %A_2_36 = fadd float %B_load_101, %A_2_35
  %B_load_102 = load float* %B_addr_38, align 4
  %A_2_37 = fadd float %B_load_102, %A_2_36
  %B_load_103 = load float* %B_addr_39, align 4
  %A_2_38 = fadd float %B_load_103, %A_2_37
  %B_load_104 = load float* %B_addr_40, align 4
  %A_2_39 = fadd float %B_load_104, %A_2_38
  %B_load_105 = load float* %B_addr_41, align 4
  %A_2_40 = fadd float %B_load_105, %A_2_39
  %B_load_106 = load float* %B_addr_42, align 4
  %A_2_41 = fadd float %B_load_106, %A_2_40
  %B_load_107 = load float* %B_addr_43, align 4
  %A_2_42 = fadd float %B_load_107, %A_2_41
  %B_load_108 = load float* %B_addr_44, align 4
  %A_2_43 = fadd float %B_load_108, %A_2_42
  %B_load_109 = load float* %B_addr_45, align 4
  %A_2_44 = fadd float %B_load_109, %A_2_43
  %B_load_110 = load float* %B_addr_46, align 4
  %A_2_45 = fadd float %B_load_110, %A_2_44
  %B_load_111 = load float* %B_addr_47, align 4
  %A_2_46 = fadd float %B_load_111, %A_2_45
  %B_load_112 = load float* %B_addr_48, align 4
  %A_2_47 = fadd float %B_load_112, %A_2_46
  %B_load_113 = load float* %B_addr_49, align 4
  %A_2_48 = fadd float %B_load_113, %A_2_47
  %B_load_114 = load float* %B_addr_50, align 4
  %A_2_49 = fadd float %B_load_114, %A_2_48
  %B_load_115 = load float* %B_addr_51, align 4
  %A_2_50 = fadd float %B_load_115, %A_2_49
  %B_load_116 = load float* %B_addr_52, align 4
  %A_2_51 = fadd float %B_load_116, %A_2_50
  %B_load_117 = load float* %B_addr_53, align 4
  %A_2_52 = fadd float %B_load_117, %A_2_51
  %B_load_118 = load float* %B_addr_54, align 4
  %A_2_53 = fadd float %B_load_118, %A_2_52
  %B_load_119 = load float* %B_addr_55, align 4
  %A_2_54 = fadd float %B_load_119, %A_2_53
  %B_load_120 = load float* %B_addr_56, align 4
  %A_2_55 = fadd float %B_load_120, %A_2_54
  %B_load_121 = load float* %B_addr_57, align 4
  %A_2_56 = fadd float %B_load_121, %A_2_55
  %B_load_122 = load float* %B_addr_58, align 4
  %A_2_57 = fadd float %B_load_122, %A_2_56
  %B_load_123 = load float* %B_addr_59, align 4
  %A_2_58 = fadd float %B_load_123, %A_2_57
  %B_load_124 = load float* %B_addr_60, align 4
  %A_2_59 = fadd float %B_load_124, %A_2_58
  %B_load_125 = load float* %B_addr_61, align 4
  %A_2_60 = fadd float %B_load_125, %A_2_59
  %B_load_126 = load float* %B_addr_62, align 4
  %A_2_61 = fadd float %B_load_126, %A_2_60
  %B_load_127 = load float* %B_addr_63, align 4
  %A_2_62 = fadd float %B_load_127, %A_2_61
  %A = fmul float %A_2_62, 1.562500e-02
  %tmp_14 = fmul float %A, 2.000000e+00
  %tmp_15 = fsub float %tmp_14, %B_load_64
  store float %tmp_15, float* %B_addr, align 4
  %tmp_22_1 = fsub float %tmp_14, %B_load_65
  store float %tmp_22_1, float* %B_addr_1, align 4
  %tmp_22_2 = fsub float %tmp_14, %B_load_66
  store float %tmp_22_2, float* %B_addr_2, align 4
  %tmp_22_3 = fsub float %tmp_14, %B_load_67
  store float %tmp_22_3, float* %B_addr_3, align 4
  %tmp_22_4 = fsub float %tmp_14, %B_load_68
  store float %tmp_22_4, float* %B_addr_4, align 4
  %tmp_22_5 = fsub float %tmp_14, %B_load_69
  store float %tmp_22_5, float* %B_addr_5, align 4
  %tmp_22_6 = fsub float %tmp_14, %B_load_70
  store float %tmp_22_6, float* %B_addr_6, align 4
  %tmp_22_7 = fsub float %tmp_14, %B_load_71
  store float %tmp_22_7, float* %B_addr_7, align 4
  %tmp_22_8 = fsub float %tmp_14, %B_load_72
  store float %tmp_22_8, float* %B_addr_8, align 4
  %tmp_22_9 = fsub float %tmp_14, %B_load_73
  store float %tmp_22_9, float* %B_addr_9, align 4
  %tmp_22_s = fsub float %tmp_14, %B_load_74
  store float %tmp_22_s, float* %B_addr_10, align 4
  %tmp_22_10 = fsub float %tmp_14, %B_load_75
  store float %tmp_22_10, float* %B_addr_11, align 4
  %tmp_22_11 = fsub float %tmp_14, %B_load_76
  store float %tmp_22_11, float* %B_addr_12, align 4
  %tmp_22_12 = fsub float %tmp_14, %B_load_77
  store float %tmp_22_12, float* %B_addr_13, align 4
  %tmp_22_13 = fsub float %tmp_14, %B_load_78
  store float %tmp_22_13, float* %B_addr_14, align 4
  %tmp_22_14 = fsub float %tmp_14, %B_load_79
  store float %tmp_22_14, float* %B_addr_15, align 4
  %tmp_22_15 = fsub float %tmp_14, %B_load_80
  store float %tmp_22_15, float* %B_addr_16, align 4
  %tmp_22_16 = fsub float %tmp_14, %B_load_81
  store float %tmp_22_16, float* %B_addr_17, align 4
  %tmp_22_17 = fsub float %tmp_14, %B_load_82
  store float %tmp_22_17, float* %B_addr_18, align 4
  %tmp_22_18 = fsub float %tmp_14, %B_load_83
  store float %tmp_22_18, float* %B_addr_19, align 4
  %tmp_22_19 = fsub float %tmp_14, %B_load_84
  store float %tmp_22_19, float* %B_addr_20, align 4
  %tmp_22_20 = fsub float %tmp_14, %B_load_85
  store float %tmp_22_20, float* %B_addr_21, align 4
  %tmp_22_21 = fsub float %tmp_14, %B_load_86
  store float %tmp_22_21, float* %B_addr_22, align 4
  %tmp_22_22 = fsub float %tmp_14, %B_load_87
  store float %tmp_22_22, float* %B_addr_23, align 4
  %tmp_22_23 = fsub float %tmp_14, %B_load_88
  store float %tmp_22_23, float* %B_addr_24, align 4
  %tmp_22_24 = fsub float %tmp_14, %B_load_89
  store float %tmp_22_24, float* %B_addr_25, align 4
  %tmp_22_25 = fsub float %tmp_14, %B_load_90
  store float %tmp_22_25, float* %B_addr_26, align 4
  %tmp_22_26 = fsub float %tmp_14, %B_load_91
  store float %tmp_22_26, float* %B_addr_27, align 4
  %tmp_22_27 = fsub float %tmp_14, %B_load_92
  store float %tmp_22_27, float* %B_addr_28, align 4
  %tmp_22_28 = fsub float %tmp_14, %B_load_93
  store float %tmp_22_28, float* %B_addr_29, align 4
  %tmp_22_29 = fsub float %tmp_14, %B_load_94
  store float %tmp_22_29, float* %B_addr_30, align 4
  %tmp_22_30 = fsub float %tmp_14, %B_load_95
  store float %tmp_22_30, float* %B_addr_31, align 4
  %tmp_22_31 = fsub float %tmp_14, %B_load_96
  store float %tmp_22_31, float* %B_addr_32, align 4
  %tmp_22_32 = fsub float %tmp_14, %B_load_97
  store float %tmp_22_32, float* %B_addr_33, align 4
  %tmp_22_33 = fsub float %tmp_14, %B_load_98
  store float %tmp_22_33, float* %B_addr_34, align 4
  %tmp_22_34 = fsub float %tmp_14, %B_load_99
  store float %tmp_22_34, float* %B_addr_35, align 4
  %tmp_22_35 = fsub float %tmp_14, %B_load_100
  store float %tmp_22_35, float* %B_addr_36, align 4
  %tmp_22_36 = fsub float %tmp_14, %B_load_101
  store float %tmp_22_36, float* %B_addr_37, align 4
  %tmp_22_37 = fsub float %tmp_14, %B_load_102
  store float %tmp_22_37, float* %B_addr_38, align 4
  %tmp_22_38 = fsub float %tmp_14, %B_load_103
  store float %tmp_22_38, float* %B_addr_39, align 4
  %tmp_22_39 = fsub float %tmp_14, %B_load_104
  store float %tmp_22_39, float* %B_addr_40, align 4
  %tmp_22_40 = fsub float %tmp_14, %B_load_105
  store float %tmp_22_40, float* %B_addr_41, align 4
  %tmp_22_41 = fsub float %tmp_14, %B_load_106
  store float %tmp_22_41, float* %B_addr_42, align 4
  %tmp_22_42 = fsub float %tmp_14, %B_load_107
  store float %tmp_22_42, float* %B_addr_43, align 4
  %tmp_22_43 = fsub float %tmp_14, %B_load_108
  store float %tmp_22_43, float* %B_addr_44, align 4
  %tmp_22_44 = fsub float %tmp_14, %B_load_109
  store float %tmp_22_44, float* %B_addr_45, align 4
  %tmp_22_45 = fsub float %tmp_14, %B_load_110
  store float %tmp_22_45, float* %B_addr_46, align 4
  %tmp_22_46 = fsub float %tmp_14, %B_load_111
  store float %tmp_22_46, float* %B_addr_47, align 4
  %tmp_22_47 = fsub float %tmp_14, %B_load_112
  store float %tmp_22_47, float* %B_addr_48, align 4
  %tmp_22_48 = fsub float %tmp_14, %B_load_113
  store float %tmp_22_48, float* %B_addr_49, align 4
  %tmp_22_49 = fsub float %tmp_14, %B_load_114
  store float %tmp_22_49, float* %B_addr_50, align 4
  %tmp_22_50 = fsub float %tmp_14, %B_load_115
  store float %tmp_22_50, float* %B_addr_51, align 4
  %tmp_22_51 = fsub float %tmp_14, %B_load_116
  store float %tmp_22_51, float* %B_addr_52, align 4
  %tmp_22_52 = fsub float %tmp_14, %B_load_117
  store float %tmp_22_52, float* %B_addr_53, align 4
  %tmp_22_53 = fsub float %tmp_14, %B_load_118
  store float %tmp_22_53, float* %B_addr_54, align 4
  %tmp_22_54 = fsub float %tmp_14, %B_load_119
  store float %tmp_22_54, float* %B_addr_55, align 4
  %tmp_22_55 = fsub float %tmp_14, %B_load_120
  store float %tmp_22_55, float* %B_addr_56, align 4
  %tmp_22_56 = fsub float %tmp_14, %B_load_121
  store float %tmp_22_56, float* %B_addr_57, align 4
  %tmp_22_57 = fsub float %tmp_14, %B_load_122
  store float %tmp_22_57, float* %B_addr_58, align 4
  %tmp_22_58 = fsub float %tmp_14, %B_load_123
  store float %tmp_22_58, float* %B_addr_59, align 4
  %tmp_22_59 = fsub float %tmp_14, %B_load_124
  store float %tmp_22_59, float* %B_addr_60, align 4
  %tmp_22_60 = fsub float %tmp_14, %B_load_125
  store float %tmp_22_60, float* %B_addr_61, align 4
  %tmp_22_61 = fsub float %tmp_14, %B_load_126
  store float %tmp_22_61, float* %B_addr_62, align 4
  %tmp_22_62 = fsub float %tmp_14, %B_load_127
  store float %tmp_22_62, float* %B_addr_63, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp) nounwind
  br label %0

; <label>:65                                      ; preds = %._crit_edge.62
  %B_load_63 = load float* %B_addr_63, align 4
  %tmp_20_to_int_62 = bitcast float %B_load_63 to i32
  %tmp_20_neg_62 = xor i32 %tmp_20_to_int_62, -2147483648
  %tmp_20_62 = bitcast i32 %tmp_20_neg_62 to float
  store float %tmp_20_62, float* %B_addr_63, align 4
  br label %._crit_edge.63

; <label>:66                                      ; preds = %0
  ret void
}

!opencl.kernels = !{!0, !7, !13, !13, !7, !13, !13, !13, !15, !21, !13, !13, !23, !27, !7, !13, !29, !31, !29, !31, !29, !31, !7, !13, !7, !13, !7, !13, !7, !13, !7, !13, !7, !7, !13, !13, !32, !36, !32, !36, !38, !41, !43, !45, !7, !13, !7, !13, !7, !13, !47, !49, !47, !49, !47, !49, !49, !47, !49, !49, !47, !49, !47, !49, !50, !50, !55, !55, !57, !59, !65, !65, !59, !68, !59, !59, !59, !71, !71, !73, !73, !75, !59, !59, !59, !78, !65, !65, !59, !81, !59, !59, !59, !83, !83, !85, !85, !87, !59, !59, !59, !59, !59, !59, !89, !59, !59, !59, !59, !55, !55, !57, !89, !59, !55, !55, !57, !89, !59, !91, !91, !91, !59, !91, !91, !91, !59, !91, !91, !91, !59, !91, !91, !91, !91, !91, !91, !91, !91, !91, !59, !91, !91, !91, !59, !91, !91, !91, !59, !91, !91, !91, !59, !91, !91, !91, !59, !91, !91, !91, !91, !91, !91, !93, !93, !93, !59, !91, !91, !91, !59, !91, !91, !91, !59, !91, !91, !91, !59, !93, !93, !93, !59, !93, !93, !93, !98, !59, !59, !59, !59, !100, !100, !103, !103, !107, !110, !110, !59, !59, !59, !59, !112, !114, !114, !59, !100, !100, !115, !115, !117, !119, !119, !59, !59, !59, !59, !120, !122, !122, !100, !123, !123, !125, !59, !127, !127, !130, !125, !132, !132, !59, !59, !59, !134, !134, !59, !135, !134, !134, !137, !134, !134, !139, !59, !59, !59, !59, !59, !59, !59, !59, !98, !59, !59, !59, !59, !100, !100, !141, !141, !143, !145, !145, !59, !59, !59, !59, !146, !148, !148, !100, !100, !149, !149, !151, !153, !153, !59, !154, !85, !85, !100, !155, !155, !130, !125, !157, !157, !59, !59, !134, !134, !159, !134, !134, !161, !59, !59, !59, !59, !59, !59, !49, !163, !165, !166, !165, !167, !167, !169, !171, !171, !59, !172, !174, !174, !100, !169, !172, !174, !174, !100, !175, !59, !130, !125, !130, !130, !47, !177, !165, !179, !165, !181, !181, !182, !184, !184, !59, !59, !185, !187, !187, !100, !182, !185, !187, !187, !100, !188, !59, !190, !190, !49, !166, !165, !47, !179, !165, !49, !163, !165, !47, !177, !165, !49, !47, !49, !47, !192, !59, !59, !194, !59, !13, !7, !13, !7, !13, !13, !7, !7, !45, !59, !43, !59, !41, !190, !190, !59, !59, !195, !196, !122, !122, !38, !190, !190, !59, !36, !198, !200, !200, !201, !59, !59, !59, !187, !187, !203, !203, !205, !205, !208, !177, !114, !114, !59, !211, !213, !59, !59, !59, !83, !83, !215, !215, !59, !100, !100, !216, !216, !218, !220, !187, !187, !59, !222, !59, !59, !59, !114, !114, !73, !73, !224, !224, !59, !119, !119, !119, !59, !226, !228, !226, !228, !226, !228, !229, !32, !163, !148, !148, !59, !100, !100, !216, !216, !232, !234, !174, !174, !59, !153, !153, !153, !236, !228, !236, !228, !238, !36, !32, !13, !240, !59, !59, !59, !244, !65, !65, !59, !59, !247, !247, !59, !249, !249, !249, !251, !253, !253, !247, !59, !130, !125, !255, !255, !134, !134, !59, !257, !259, !259, !261, !263, !263, !59, !265, !265, !267, !265, !265, !267, !269, !275, !59, !59, !59, !277, !65, !65, !279, !59, !59, !59, !281, !281, !281, !59, !130, !283, !284, !284, !107, !112, !114, !114, !59, !59, !100, !286, !286, !288, !288, !289, !291, !291, !292, !294, !294, !292, !13, !296, !59, !59, !59, !244, !59, !298, !298, !300, !300, !300, !302, !304, !304, !298, !59, !130, !125, !306, !306, !134, !134, !59, !308, !261, !310, !310, !59, !312, !312, !314, !312, !312, !314, !269, !316, !59, !59, !59, !318, !65, !65, !279, !59, !59, !59, !320, !320, !320, !294, !294, !292, !7, !322, !324, !324, !326, !324, !324, !326, !328, !59, !59, !59, !330, !65, !65, !279, !59, !59, !59, !332, !332, !332, !59, !130, !283, !334, !334, !143, !146, !148, !148, !59, !59, !100, !336, !336, !288, !288, !289, !291, !291, !338, !340, !340, !338, !7, !342, !344, !344, !346, !344, !344, !346, !348, !59, !59, !59, !350, !65, !65, !279, !59, !59, !59, !352, !352, !352, !340, !340, !338, !13, !229, !7, !354, !356, !59, !59, !59, !174, !174, !358, !358, !360, !360, !362, !238, !13, !7, !13, !7, !13, !7, !13, !7, !31, !59, !364, !165, !366, !369, !59, !114, !114, !83, !83, !29, !59, !371, !373, !31, !29, !31, !29, !47, !49, !27, !375, !59, !59, !377, !130, !125, !378, !378, !380, !380, !59, !59, !59, !59, !382, !59, !59, !59, !384, !384, !73, !73, !386, !59, !59, !59, !388, !390, !390, !391, !391, !59, !59, !388, !390, !390, !59, !59, !393, !393, !393, !59, !395, !59, !59, !59, !59, !59, !59, !397, !397, !397, !59, !399, !59, !59, !59, !59, !59, !59, !59, !59, !401, !401, !401, !403, !403, !405, !407, !59, !410, !261, !291, !291, !59, !412, !412, !414, !416, !100, !419, !419, !421, !421, !423, !59, !294, !294, !292, !100, !424, !424, !426, !428, !426, !426, !59, !59, !59, !59, !59, !59, !279, !59, !59, !390, !390, !430, !412, !412, !414, !59, !100, !432, !432, !434, !434, !434, !59, !428, !436, !436, !437, !414, !414, !438, !438, !59, !59, !437, !414, !414, !59, !59, !440, !442, !444, !444, !59, !291, !291, !59, !59, !445, !445, !445, !447, !59, !59, !449, !449, !449, !451, !59, !59, !59, !59, !59, !59, !59, !59, !453, !453, !453, !59, !455, !455, !457, !459, !59, !59, !59, !59, !59, !461, !461, !461, !59, !463, !463, !465, !59, !467, !467, !469, !59, !59, !100, !470, !470, !472, !472, !474, !59, !59, !475, !481, !279, !59, !59, !59, !469, !469, !469, !482, !482, !484, !59, !59, !59, !59, !485, !485, !485, !487, !490, !490, !492, !467, !494, !59, !100, !496, !496, !498, !500, !500, !59, !59, !59, !59, !501, !503, !503, !130, !125, !504, !504, !59, !100, !506, !506, !508, !508, !508, !59, !59, !59, !510, !512, !512, !100, !59, !59, !190, !190, !59, !513, !515, !485, !485, !59, !291, !291, !59, !59, !516, !516, !516, !518, !125, !520, !520, !522, !59, !524, !524, !526, !244, !65, !65, !59, !59, !134, !134, !59, !528, !524, !524, !526, !100, !529, !529, !531, !533, !533, !59, !59, !59, !59, !534, !59, !100, !536, !536, !538, !538, !541, !543, !543, !100, !544, !544, !546, !548, !548, !59, !59, !59, !59, !549, !550, !543, !543, !100, !552, !552, !554, !557, !557, !59, !59, !59, !59, !559, !561, !561, !563, !563, !565, !565, !566, !59, !59, !568, !100, !571, !571, !100, !573, !573, !575, !575, !575, !59, !59, !59, !577, !59, !59, !59, !579, !579, !579, !59, !581, !581, !165, !134, !134, !583, !130, !125, !585, !585, !107, !112, !100, !587, !587, !59, !59, !59, !59, !59, !59, !59, !134, !134, !59, !59, !589, !59, !59, !59, !59, !59, !59, !59, !59, !59, !23, !591, !593, !166, !165, !59, !595, !595, !59, !597, !59, !600, !165, !602, !602, !602, !59, !59, !604, !606, !606, !607, !279, !59, !59, !609, !609, !59, !602, !604, !606, !606, !134, !134, !100, !611, !611, !613, !615, !615, !59, !604, !100, !616, !616, !59, !59, !134, !134, !600, !618, !59, !59, !59, !620, !620, !606, !606, !622, !622, !59, !59, !134, !134, !624, !59, !620, !620, !624, !165, !626, !626, !628, !59, !59, !59, !59, !629, !632, !635, !637, !637, !638, !638, !59, !59, !640, !640, !642, !59, !640, !640, !640, !59, !59, !59, !644, !644, !646, !487, !648, !59, !59, !59, !59, !650, !652, !59, !640, !640, !640, !653, !642, !642, !279, !59, !59, !638, !638, !283, !655, !655, !657, !657, !659, !59, !660, !620, !620, !288, !288, !289, !291, !291, !638, !661, !100, !100, !663, !165, !228, !228, !59, !665, !73, !73, !87, !83, !83, !125, !59, !579, !579, !667, !669, !669, !59, !100, !670, !670, !59, !59, !600, !606, !606, !672, !59, !59, !673, !676, !677, !148, !148, !606, !606, !100, !679, !679, !681, !681, !681, !59, !683, !685, !685, !622, !622, !100, !687, !687, !689, !689, !689, !59, !59, !59, !59, !691, !693, !693, !695, !697, !697, !697, !100, !699, !699, !701, !703, !703, !59, !59, !59, !59, !704, !706, !706, !59, !100, !707, !707, !709, !711, !706, !706, !713, !713, !715, !59, !59, !100, !717, !717, !719, !722, !722, !59, !59, !59, !59, !724, !59, !59, !726, !726, !728, !728, !59, !730, !59, !59, !59, !59, !731, !731, !100, !733, !733, !735, !735, !735, !59, !59, !59, !59, !100, !737, !737, !739, !739, !739, !59, !59, !59, !59, !741, !743, !743, !745, !747, !747, !749, !751, !751, !100, !752, !752, !754, !756, !756, !59, !59, !59, !59, !757, !758, !751, !751, !100, !760, !760, !762, !764, !764, !59, !59, !59, !59, !766, !768, !768, !770, !770, !743, !743, !772, !59, !59, !774, !134, !134, !776, !165, !100, !778, !778, !780, !780, !780, !59, !59, !59, !59, !782, !59, !59, !59, !784, !784, !784, !59, !59, !59, !100, !786, !786, !134, !134, !788, !134, !134, !59, !790, !59, !792, !768, !768, !794, !796, !796, !796, !59, !59, !59, !798, !100, !100, !800, !800, !796, !796, !796, !802, !59, !59, !59, !59, !59, !59, !59, !59, !59, !59, !59, !59, !59, !59, !47, !47, !803, !179, !165, !179, !165, !805, !805, !59, !808, !122, !122, !810, !811, !813, !813, !211, !213, !59, !59, !59, !815, !817, !165, !59, !819, !820, !822, !824, !826, !826, !59, !59, !59, !827, !827, !829, !59, !827, !827, !827, !59, !59, !831, !831, !833, !835, !829, !829, !837, !279, !59, !59, !826, !826, !283, !839, !839, !841, !841, !843, !59, !59, !59, !844, !844, !846, !288, !288, !289, !291, !291, !826, !848, !848, !57, !89, !849, !852, !852, !854, !59, !844, !856, !754, !749, !100, !858, !858, !860, !860, !146, !148, !148, !143, !862, !163, !863, !865, !865, !59, !59, !59, !867, !869, !869, !751, !751, !100, !871, !871, !873, !873, !873, !59, !875, !100, !876, !876, !59, !59, !59, !59, !59, !878, !878, !880, !59, !59, !59, !244, !65, !65, !882, !882, !883, !100, !885, !885, !887, !889, !889, !59, !59, !59, !59, !890, !100, !892, !892, !894, !894, !146, !148, !148, !143, !896, !898, !898, !59, !59, !59, !59, !900, !869, !869, !902, !902, !904, !904, !100, !905, !905, !907, !907, !907, !59, !909, !909, !909, !59, !911, !100, !912, !912, !59, !59, !59, !59, !59, !59, !59, !55, !55, !57, !89, !55, !55, !57, !89, !279, !59, !59, !914, !914, !916, !130, !283, !918, !918, !112, !114, !114, !100, !920, !920, !288, !288, !289, !291, !291, !914, !59, !59, !59, !47, !47, !922, !922, !922, !922, !922, !59, !59, !815, !819, !924, !926, !928, !930, !930, !59, !931, !931, !59, !59, !933, !933, !935, !59, !933, !933, !933, !59, !59, !59, !644, !644, !646, !487, !937, !59, !59, !59, !939, !941, !59, !933, !933, !933, !942, !935, !935, !279, !59, !59, !931, !931, !59, !944, !944, !279, !130, !283, !945, !945, !112, !114, !114, !100, !947, !947, !288, !288, !289, !291, !291, !931, !949, !59, !59, !951, !953, !195, !196, !228, !13, !954, !954, !954, !954, !954, !59, !59, !955, !59, !100, !956, !956, !958, !960, !960, !59, !59, !59, !59, !961, !963, !963, !59, !59, !59, !964, !966, !968, !970, !970, !971, !971, !59, !59, !973, !973, !975, !59, !973, !973, !973, !59, !59, !59, !644, !644, !646, !487, !977, !59, !59, !59, !979, !981, !59, !973, !973, !973, !982, !975, !975, !279, !59, !59, !971, !971, !59, !279, !130, !283, !984, !984, !146, !148, !148, !100, !986, !986, !288, !288, !289, !291, !291, !971, !988, !59, !59, !59, !990, !85, !85, !992, !78, !81, !993, !7, !994, !994, !47, !47, !47, !996, !999, !999, !1001, !1003, !1005, !59, !1007, !165, !1009, !1009, !1009, !59, !1011, !1013, !1013, !279, !59, !59, !1014, !1014, !130, !59, !1009, !1011, !1013, !1013, !1016, !1018, !1018, !59, !1011, !100, !1019, !1019, !1009, !1011, !100, !1021, !1021, !1023, !1023, !1025, !1027, !59, !59, !1029, !1031, !1033, !1035, !1035, !1001, !1001, !59, !59, !1036, !1036, !1038, !59, !1036, !1036, !1036, !59, !59, !644, !644, !646, !487, !1040, !59, !59, !59, !1042, !1044, !59, !1036, !1036, !1036, !1045, !1038, !1038, !279, !59, !59, !1001, !1001, !59, !283, !1047, !1047, !288, !288, !289, !291, !291, !1001, !999, !1007, !1011, !1013, !1013, !59, !100, !1049, !1049, !1051, !1051, !1051, !59, !59, !59, !1053, !59, !59, !59, !59, !1055, !1057, !1057, !1059, !561, !561, !100, !1060, !1060, !134, !134, !1062, !134, !134, !1064, !59, !1066, !561, !561, !1068, !1070, !187, !187, !59, !59, !47, !47, !1072, !449, !449, !449, !453, !453, !453, !1075, !1075, !1077, !288, !288, !289, !291, !291, !269, !65, !65, !1079, !65, !65, !1081, !1083, !1083, !1081, !130, !125, !1085, !1085, !472, !472, !474, !1087, !1093, !261, !291, !291, !524, !524, !526, !1095, !165, !228, !228, !1097, !1097, !1099, !47, !47, !49, !49, !47, !47, !47, !47, !49, !49, !13, !13, !13, !13, !7, !7, !7, !7, !13, !13, !13, !13, !7, !7, !7, !7, !1101, !59, !59, !59, !244, !65, !65, !59, !59, !59, !59, !134, !134, !59, !257, !259, !259, !59, !261, !263, !263, !59, !324, !324, !326, !324, !324, !326, !269, !65, !65, !328, !59, !59, !59, !330, !65, !65, !59, !59, !59, !78, !65, !65, !81, !59, !59, !59, !83, !83, !85, !85, !279, !59, !59, !59, !332, !332, !332, !59, !130, !283, !334, !334, !100, !100, !141, !141, !143, !145, !145, !59, !59, !59, !59, !146, !148, !148, !59, !59, !100, !336, !336, !288, !288, !289, !291, !291, !338, !340, !340, !338, !167, !167, !169, !171, !171, !59, !59, !172, !174, !174, !100, !100, !155, !155, !169, !172, !174, !174, !59, !100, !149, !149, !125, !157, !157, !175, !59, !130, !125, !127, !127, !130, !130, !59, !59, !59, !59, !59, !59, !59, !59, !1103, !59, !59, !59, !244, !65, !65, !59, !59, !134, !134, !59, !308, !261, !310, !310, !59, !344, !344, !346, !344, !344, !346, !269, !348, !59, !59, !59, !350, !65, !65, !279, !59, !59, !59, !352, !352, !352, !340, !340, !338, !1105, !59, !59, !59, !244, !65, !65, !59, !59, !134, !134, !59, !1107, !261, !1109, !1109, !59, !1111, !1111, !1113, !1111, !1111, !1113, !269, !1115, !59, !59, !59, !1117, !65, !65, !279, !59, !59, !59, !1119, !1119, !1119, !340, !340, !338, !1121, !59, !59, !59, !244, !65, !65, !59, !59, !134, !134, !59, !1123, !261, !1125, !1125, !59, !1127, !1127, !1129, !1127, !1127, !1129, !269, !1131, !59, !59, !59, !1133, !65, !65, !279, !59, !59, !59, !1135, !1135, !1135, !340, !340, !338, !1137, !59, !265, !265, !267, !265, !265, !267, !275, !59, !59, !59, !277, !65, !65, !59, !195, !196, !122, !122, !279, !59, !59, !59, !281, !281, !281, !59, !130, !283, !284, !284, !100, !100, !103, !103, !107, !110, !110, !59, !59, !59, !59, !112, !114, !114, !59, !59, !100, !286, !286, !288, !288, !289, !291, !291, !292, !294, !294, !292, !181, !181, !182, !184, !184, !59, !59, !185, !187, !187, !100, !100, !123, !123, !182, !185, !187, !187, !100, !115, !115, !125, !132, !132, !188, !59, !190, !190, !59, !59, !59, !59, !1139, !312, !312, !314, !312, !312, !314, !316, !59, !59, !59, !318, !65, !65, !279, !59, !59, !59, !320, !320, !320, !294, !294, !292, !1141, !1143, !1143, !1145, !1143, !1143, !1145, !1147, !59, !59, !59, !1149, !65, !65, !279, !59, !59, !59, !1151, !1151, !1151, !294, !294, !292, !1153, !1155, !1155, !1157, !1155, !1155, !1157, !1159, !59, !59, !59, !1161, !65, !65, !279, !59, !59, !59, !1162, !1162, !1162, !294, !294, !292, !1164, !59, !59, !59, !244, !59, !298, !298, !300, !300, !300, !302, !304, !304, !298, !59, !130, !125, !306, !306, !134, !134, !59, !1166, !59, !59, !59, !244, !65, !65, !59, !59, !1168, !1168, !59, !1170, !1170, !1170, !1172, !1174, !1174, !1168, !59, !130, !125, !1176, !1176, !134, !134, !59, !1178, !59, !59, !59, !244, !65, !65, !59, !59, !1180, !1180, !59, !1182, !1182, !1182, !1184, !1186, !1186, !1180, !59, !130, !125, !1188, !1188, !134, !134, !59, !1190, !1192, !1194, !55, !55, !57, !59, !68, !59, !59, !59, !71, !71, !73, !73, !75, !59, !59, !59, !87, !59, !59, !59, !59, !89, !59, !55, !55, !57, !89, !59, !55, !55, !57, !89, !59, !91, !91, !91, !59, !91, !91, !91, !59, !91, !91, !91, !59, !91, !91, !91, !91, !91, !91, !91, !91, !91, !59, !91, !91, !91, !59, !91, !91, !91, !59, !91, !91, !91, !59, !240, !59, !59, !59, !244, !65, !65, !59, !59, !247, !247, !59, !249, !249, !249, !251, !253, !253, !247, !59, !130, !125, !255, !255, !134, !134, !59, !322, !91, !91, !91, !59, !91, !91, !91, !91, !91, !91, !93, !93, !93, !59, !91, !91, !91, !59, !91, !91, !91, !59, !91, !91, !91, !59, !93, !93, !93, !59, !93, !93, !93}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!1196}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"float*", metadata !"float"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"E1", metadata !"B", metadata !"C"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !12, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!17 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double"}
!19 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!21 = metadata !{null, metadata !16, metadata !17, metadata !22, metadata !19, metadata !20, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float"}
!23 = metadata !{null, metadata !24, metadata !2, metadata !25, metadata !4, metadata !26, metadata !6}
!24 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double*", metadata !"double*"}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"sin", metadata !"cos"}
!27 = metadata !{null, metadata !24, metadata !2, metadata !28, metadata !4, metadata !26, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*", metadata !"float*"}
!29 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !30, metadata !6}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y"}
!31 = metadata !{null, metadata !16, metadata !17, metadata !22, metadata !19, metadata !30, metadata !6}
!32 = metadata !{null, metadata !33, metadata !17, metadata !34, metadata !19, metadata !35, metadata !6}
!33 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double*"}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"intpart"}
!36 = metadata !{null, metadata !33, metadata !17, metadata !37, metadata !19, metadata !35, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float*"}
!38 = metadata !{null, metadata !33, metadata !17, metadata !39, metadata !19, metadata !40, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int*"}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"exp"}
!41 = metadata !{null, metadata !33, metadata !17, metadata !42, metadata !19, metadata !40, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"int*"}
!43 = metadata !{null, metadata !16, metadata !17, metadata !44, metadata !19, metadata !40, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"int"}
!45 = metadata !{null, metadata !16, metadata !17, metadata !46, metadata !19, metadata !40, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"int"}
!47 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !48, metadata !6}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"t_in"}
!49 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !48, metadata !6}
!50 = metadata !{null, metadata !51, metadata !9, metadata !52, metadata !53, metadata !54, metadata !6}
!51 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!53 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"p"}
!55 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !56, metadata !6}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!57 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !58, metadata !6}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!59 = metadata !{null, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !6}
!60 = metadata !{metadata !"kernel_arg_addr_space"}
!61 = metadata !{metadata !"kernel_arg_access_qual"}
!62 = metadata !{metadata !"kernel_arg_type"}
!63 = metadata !{metadata !"kernel_arg_type_qual"}
!64 = metadata !{metadata !"kernel_arg_name"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !67, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!67 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!68 = metadata !{null, metadata !16, metadata !17, metadata !69, metadata !19, metadata !70, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!70 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!71 = metadata !{null, metadata !8, metadata !9, metadata !72, metadata !11, metadata !67, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!73 = metadata !{null, metadata !8, metadata !9, metadata !74, metadata !11, metadata !67, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!75 = metadata !{null, metadata !8, metadata !9, metadata !76, metadata !11, metadata !77, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!77 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!78 = metadata !{null, metadata !16, metadata !17, metadata !79, metadata !19, metadata !80, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!80 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!81 = metadata !{null, metadata !16, metadata !17, metadata !82, metadata !19, metadata !70, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!83 = metadata !{null, metadata !8, metadata !9, metadata !84, metadata !11, metadata !67, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!85 = metadata !{null, metadata !8, metadata !9, metadata !86, metadata !11, metadata !67, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!87 = metadata !{null, metadata !8, metadata !9, metadata !88, metadata !11, metadata !77, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!89 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !90, metadata !6}
!90 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!91 = metadata !{null, metadata !51, metadata !9, metadata !52, metadata !53, metadata !92, metadata !6}
!92 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!93 = metadata !{null, metadata !94, metadata !17, metadata !95, metadata !96, metadata !97, metadata !6}
!94 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!96 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!98 = metadata !{null, metadata !51, metadata !9, metadata !52, metadata !53, metadata !99, metadata !6}
!99 = metadata !{metadata !"kernel_arg_name", metadata !"tagp"}
!100 = metadata !{null, metadata !16, metadata !17, metadata !101, metadata !19, metadata !102, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!102 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!103 = metadata !{null, metadata !104, metadata !2, metadata !105, metadata !4, metadata !106, metadata !6}
!104 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!107 = metadata !{null, metadata !8, metadata !9, metadata !108, metadata !11, metadata !109, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!110 = metadata !{null, metadata !8, metadata !9, metadata !108, metadata !11, metadata !111, metadata !6}
!111 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!112 = metadata !{null, metadata !8, metadata !9, metadata !113, metadata !11, metadata !109, metadata !6}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!114 = metadata !{null, metadata !8, metadata !9, metadata !113, metadata !11, metadata !67, metadata !6}
!115 = metadata !{null, metadata !104, metadata !2, metadata !116, metadata !4, metadata !106, metadata !6}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!117 = metadata !{null, metadata !8, metadata !9, metadata !118, metadata !11, metadata !109, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<8, false> &"}
!119 = metadata !{null, metadata !8, metadata !9, metadata !118, metadata !11, metadata !111, metadata !6}
!120 = metadata !{null, metadata !8, metadata !9, metadata !121, metadata !11, metadata !109, metadata !6}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!122 = metadata !{null, metadata !8, metadata !9, metadata !121, metadata !11, metadata !67, metadata !6}
!123 = metadata !{null, metadata !104, metadata !2, metadata !124, metadata !4, metadata !106, metadata !6}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!125 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !126, metadata !6}
!126 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!127 = metadata !{null, metadata !94, metadata !17, metadata !128, metadata !19, metadata !129, metadata !6}
!128 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!129 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!130 = metadata !{null, metadata !8, metadata !9, metadata !131, metadata !11, metadata !109, metadata !6}
!131 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!132 = metadata !{null, metadata !94, metadata !17, metadata !133, metadata !19, metadata !129, metadata !6}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!134 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !109, metadata !6}
!135 = metadata !{null, metadata !8, metadata !9, metadata !136, metadata !11, metadata !77, metadata !6}
!136 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!137 = metadata !{null, metadata !8, metadata !9, metadata !138, metadata !11, metadata !77, metadata !6}
!138 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!139 = metadata !{null, metadata !8, metadata !9, metadata !140, metadata !11, metadata !77, metadata !6}
!140 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<23> &"}
!141 = metadata !{null, metadata !104, metadata !2, metadata !142, metadata !4, metadata !106, metadata !6}
!142 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<52, false>*", metadata !"int", metadata !"int"}
!143 = metadata !{null, metadata !8, metadata !9, metadata !144, metadata !11, metadata !109, metadata !6}
!144 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<52, false> &"}
!145 = metadata !{null, metadata !8, metadata !9, metadata !144, metadata !11, metadata !111, metadata !6}
!146 = metadata !{null, metadata !8, metadata !9, metadata !147, metadata !11, metadata !109, metadata !6}
!147 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &"}
!148 = metadata !{null, metadata !8, metadata !9, metadata !147, metadata !11, metadata !67, metadata !6}
!149 = metadata !{null, metadata !104, metadata !2, metadata !150, metadata !4, metadata !106, metadata !6}
!150 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, false>*", metadata !"int", metadata !"int"}
!151 = metadata !{null, metadata !8, metadata !9, metadata !152, metadata !11, metadata !109, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<11, false> &"}
!153 = metadata !{null, metadata !8, metadata !9, metadata !152, metadata !11, metadata !111, metadata !6}
!154 = metadata !{null, metadata !8, metadata !9, metadata !86, metadata !11, metadata !109, metadata !6}
!155 = metadata !{null, metadata !104, metadata !2, metadata !156, metadata !4, metadata !106, metadata !6}
!156 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!157 = metadata !{null, metadata !94, metadata !17, metadata !158, metadata !19, metadata !129, metadata !6}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int"}
!159 = metadata !{null, metadata !8, metadata !9, metadata !160, metadata !11, metadata !77, metadata !6}
!160 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<11> &"}
!161 = metadata !{null, metadata !8, metadata !9, metadata !162, metadata !11, metadata !77, metadata !6}
!162 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<52> &"}
!163 = metadata !{null, metadata !16, metadata !17, metadata !164, metadata !19, metadata !70, metadata !6}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"int"}
!165 = metadata !{null, metadata !8, metadata !9, metadata !84, metadata !11, metadata !77, metadata !6}
!166 = metadata !{null, metadata !16, metadata !17, metadata !79, metadata !19, metadata !70, metadata !6}
!167 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !168, metadata !6}
!168 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!169 = metadata !{null, metadata !8, metadata !9, metadata !170, metadata !11, metadata !109, metadata !6}
!170 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!171 = metadata !{null, metadata !8, metadata !9, metadata !170, metadata !11, metadata !111, metadata !6}
!172 = metadata !{null, metadata !8, metadata !9, metadata !173, metadata !11, metadata !109, metadata !6}
!173 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!174 = metadata !{null, metadata !8, metadata !9, metadata !173, metadata !11, metadata !67, metadata !6}
!175 = metadata !{null, metadata !8, metadata !9, metadata !176, metadata !11, metadata !109, metadata !6}
!176 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<64, false> &"}
!177 = metadata !{null, metadata !16, metadata !17, metadata !178, metadata !19, metadata !70, metadata !6}
!178 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"int"}
!179 = metadata !{null, metadata !16, metadata !17, metadata !180, metadata !19, metadata !70, metadata !6}
!180 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!181 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !168, metadata !6}
!182 = metadata !{null, metadata !8, metadata !9, metadata !183, metadata !11, metadata !109, metadata !6}
!183 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!184 = metadata !{null, metadata !8, metadata !9, metadata !183, metadata !11, metadata !111, metadata !6}
!185 = metadata !{null, metadata !8, metadata !9, metadata !186, metadata !11, metadata !109, metadata !6}
!186 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!187 = metadata !{null, metadata !8, metadata !9, metadata !186, metadata !11, metadata !67, metadata !6}
!188 = metadata !{null, metadata !8, metadata !9, metadata !189, metadata !11, metadata !109, metadata !6}
!189 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!190 = metadata !{null, metadata !8, metadata !9, metadata !191, metadata !11, metadata !109, metadata !6}
!191 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!192 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !193, metadata !6}
!193 = metadata !{metadata !"kernel_arg_name", metadata !"a_re"}
!194 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !193, metadata !6}
!195 = metadata !{null, metadata !16, metadata !17, metadata !180, metadata !19, metadata !80, metadata !6}
!196 = metadata !{null, metadata !16, metadata !17, metadata !197, metadata !19, metadata !70, metadata !6}
!197 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!198 = metadata !{null, metadata !16, metadata !17, metadata !199, metadata !19, metadata !80, metadata !6}
!199 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"uint"}
!200 = metadata !{null, metadata !8, metadata !9, metadata !191, metadata !11, metadata !67, metadata !6}
!201 = metadata !{null, metadata !16, metadata !17, metadata !202, metadata !19, metadata !70, metadata !6}
!202 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, false> &"}
!203 = metadata !{null, metadata !8, metadata !9, metadata !204, metadata !11, metadata !67, metadata !6}
!204 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &"}
!205 = metadata !{null, metadata !8, metadata !9, metadata !206, metadata !11, metadata !207, metadata !6}
!206 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<32>"}
!207 = metadata !{metadata !"kernel_arg_name", metadata !"data"}
!208 = metadata !{null, metadata !8, metadata !9, metadata !209, metadata !11, metadata !210, metadata !6}
!209 = metadata !{metadata !"kernel_arg_type", metadata !"const class fp_struct<float> &"}
!210 = metadata !{metadata !"kernel_arg_name", metadata !""}
!211 = metadata !{null, metadata !16, metadata !17, metadata !212, metadata !19, metadata !80, metadata !6}
!212 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"int"}
!213 = metadata !{null, metadata !16, metadata !17, metadata !214, metadata !19, metadata !70, metadata !6}
!214 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"const ap_int_base<32, true> &"}
!215 = metadata !{null, metadata !8, metadata !9, metadata !88, metadata !11, metadata !67, metadata !6}
!216 = metadata !{null, metadata !8, metadata !9, metadata !217, metadata !11, metadata !67, metadata !6}
!217 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!218 = metadata !{null, metadata !16, metadata !17, metadata !219, metadata !19, metadata !80, metadata !6}
!219 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"uint"}
!220 = metadata !{null, metadata !16, metadata !17, metadata !221, metadata !19, metadata !70, metadata !6}
!221 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &", metadata !"const ap_int_base<32, false> &"}
!222 = metadata !{null, metadata !16, metadata !17, metadata !223, metadata !19, metadata !70, metadata !6}
!223 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<23, false> &"}
!224 = metadata !{null, metadata !8, metadata !9, metadata !225, metadata !11, metadata !67, metadata !6}
!225 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, true> &"}
!226 = metadata !{null, metadata !16, metadata !17, metadata !227, metadata !19, metadata !70, metadata !6}
!227 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"uint"}
!228 = metadata !{null, metadata !8, metadata !9, metadata !186, metadata !11, metadata !77, metadata !6}
!229 = metadata !{null, metadata !51, metadata !9, metadata !230, metadata !11, metadata !231, metadata !6}
!230 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t*"}
!231 = metadata !{metadata !"kernel_arg_name", metadata !"mask_table"}
!232 = metadata !{null, metadata !16, metadata !17, metadata !233, metadata !19, metadata !80, metadata !6}
!233 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"ap_ulong"}
!234 = metadata !{null, metadata !16, metadata !17, metadata !235, metadata !19, metadata !70, metadata !6}
!235 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &", metadata !"const ap_int_base<64, false> &"}
!236 = metadata !{null, metadata !16, metadata !17, metadata !237, metadata !19, metadata !70, metadata !6}
!237 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"uint"}
!238 = metadata !{null, metadata !51, metadata !9, metadata !239, metadata !11, metadata !231, metadata !6}
!239 = metadata !{metadata !"kernel_arg_type", metadata !"uint64_t*"}
!240 = metadata !{null, metadata !241, metadata !2, metadata !242, metadata !4, metadata !243, metadata !6}
!241 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!242 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!243 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow", metadata !"dummy"}
!244 = metadata !{null, metadata !8, metadata !9, metadata !245, metadata !11, metadata !246, metadata !6}
!245 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!246 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!247 = metadata !{null, metadata !8, metadata !9, metadata !248, metadata !11, metadata !67, metadata !6}
!248 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!249 = metadata !{null, metadata !8, metadata !9, metadata !250, metadata !11, metadata !67, metadata !6}
!250 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<65, 65, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!251 = metadata !{null, metadata !8, metadata !9, metadata !252, metadata !11, metadata !67, metadata !6}
!252 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!253 = metadata !{null, metadata !8, metadata !9, metadata !254, metadata !11, metadata !67, metadata !6}
!254 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!255 = metadata !{null, metadata !94, metadata !17, metadata !256, metadata !19, metadata !129, metadata !6}
!256 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int"}
!257 = metadata !{null, metadata !16, metadata !17, metadata !258, metadata !19, metadata !80, metadata !6}
!258 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!259 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !260, metadata !6}
!260 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!261 = metadata !{null, metadata !8, metadata !9, metadata !262, metadata !11, metadata !77, metadata !6}
!262 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!263 = metadata !{null, metadata !8, metadata !9, metadata !264, metadata !11, metadata !67, metadata !6}
!264 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!265 = metadata !{null, metadata !8, metadata !9, metadata !266, metadata !11, metadata !67, metadata !6}
!266 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<87, 87, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!267 = metadata !{null, metadata !8, metadata !9, metadata !268, metadata !11, metadata !67, metadata !6}
!268 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!269 = metadata !{null, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !6}
!270 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!271 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!272 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!273 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!274 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!275 = metadata !{null, metadata !16, metadata !17, metadata !276, metadata !19, metadata !70, metadata !6}
!276 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &", metadata !"int"}
!277 = metadata !{null, metadata !8, metadata !9, metadata !278, metadata !11, metadata !77, metadata !6}
!278 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<87, false> &"}
!279 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !280, metadata !6}
!280 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!281 = metadata !{null, metadata !8, metadata !9, metadata !282, metadata !11, metadata !67, metadata !6}
!282 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<110, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!283 = metadata !{null, metadata !8, metadata !9, metadata !191, metadata !11, metadata !126, metadata !6}
!284 = metadata !{null, metadata !94, metadata !17, metadata !285, metadata !19, metadata !129, metadata !6}
!285 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!286 = metadata !{null, metadata !104, metadata !2, metadata !287, metadata !4, metadata !106, metadata !6}
!287 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!288 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !56, metadata !6}
!289 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !290, metadata !6}
!290 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!291 = metadata !{null, metadata !8, metadata !9, metadata !262, metadata !11, metadata !67, metadata !6}
!292 = metadata !{null, metadata !8, metadata !9, metadata !293, metadata !11, metadata !67, metadata !6}
!293 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!294 = metadata !{null, metadata !8, metadata !9, metadata !295, metadata !11, metadata !67, metadata !6}
!295 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<24, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!296 = metadata !{null, metadata !241, metadata !2, metadata !297, metadata !4, metadata !243, metadata !6}
!297 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!298 = metadata !{null, metadata !8, metadata !9, metadata !299, metadata !11, metadata !67, metadata !6}
!299 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!300 = metadata !{null, metadata !8, metadata !9, metadata !301, metadata !11, metadata !67, metadata !6}
!301 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!302 = metadata !{null, metadata !8, metadata !9, metadata !303, metadata !11, metadata !67, metadata !6}
!303 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!304 = metadata !{null, metadata !8, metadata !9, metadata !305, metadata !11, metadata !67, metadata !6}
!305 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!306 = metadata !{null, metadata !94, metadata !17, metadata !307, metadata !19, metadata !129, metadata !6}
!307 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!308 = metadata !{null, metadata !16, metadata !17, metadata !309, metadata !19, metadata !80, metadata !6}
!309 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!310 = metadata !{null, metadata !8, metadata !9, metadata !311, metadata !11, metadata !67, metadata !6}
!311 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!312 = metadata !{null, metadata !8, metadata !9, metadata !313, metadata !11, metadata !67, metadata !6}
!313 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<55, 55, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!314 = metadata !{null, metadata !8, metadata !9, metadata !315, metadata !11, metadata !67, metadata !6}
!315 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<55, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!316 = metadata !{null, metadata !16, metadata !17, metadata !317, metadata !19, metadata !70, metadata !6}
!317 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &", metadata !"int"}
!318 = metadata !{null, metadata !8, metadata !9, metadata !319, metadata !11, metadata !77, metadata !6}
!319 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &"}
!320 = metadata !{null, metadata !8, metadata !9, metadata !321, metadata !11, metadata !67, metadata !6}
!321 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<78, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!322 = metadata !{null, metadata !241, metadata !2, metadata !323, metadata !4, metadata !243, metadata !6}
!323 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long long>::is_signed, _Bool>::type"}
!324 = metadata !{null, metadata !8, metadata !9, metadata !325, metadata !11, metadata !67, metadata !6}
!325 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<116, 116, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!326 = metadata !{null, metadata !8, metadata !9, metadata !327, metadata !11, metadata !67, metadata !6}
!327 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<116, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!328 = metadata !{null, metadata !16, metadata !17, metadata !329, metadata !19, metadata !70, metadata !6}
!329 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &", metadata !"int"}
!330 = metadata !{null, metadata !8, metadata !9, metadata !331, metadata !11, metadata !77, metadata !6}
!331 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<116, false> &"}
!332 = metadata !{null, metadata !8, metadata !9, metadata !333, metadata !11, metadata !67, metadata !6}
!333 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<168, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!334 = metadata !{null, metadata !94, metadata !17, metadata !335, metadata !19, metadata !129, metadata !6}
!335 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!336 = metadata !{null, metadata !104, metadata !2, metadata !337, metadata !4, metadata !106, metadata !6}
!337 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!338 = metadata !{null, metadata !8, metadata !9, metadata !339, metadata !11, metadata !67, metadata !6}
!339 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!340 = metadata !{null, metadata !8, metadata !9, metadata !341, metadata !11, metadata !67, metadata !6}
!341 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!342 = metadata !{null, metadata !241, metadata !2, metadata !343, metadata !4, metadata !243, metadata !6}
!343 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!344 = metadata !{null, metadata !8, metadata !9, metadata !345, metadata !11, metadata !67, metadata !6}
!345 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<84, 84, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!346 = metadata !{null, metadata !8, metadata !9, metadata !347, metadata !11, metadata !67, metadata !6}
!347 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<84, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!348 = metadata !{null, metadata !16, metadata !17, metadata !349, metadata !19, metadata !70, metadata !6}
!349 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &", metadata !"int"}
!350 = metadata !{null, metadata !8, metadata !9, metadata !351, metadata !11, metadata !77, metadata !6}
!351 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<84, false> &"}
!352 = metadata !{null, metadata !8, metadata !9, metadata !353, metadata !11, metadata !67, metadata !6}
!353 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<136, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!354 = metadata !{null, metadata !16, metadata !17, metadata !355, metadata !19, metadata !80, metadata !6}
!355 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"ap_ulong"}
!356 = metadata !{null, metadata !16, metadata !17, metadata !357, metadata !19, metadata !70, metadata !6}
!357 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<64, false> &"}
!358 = metadata !{null, metadata !8, metadata !9, metadata !359, metadata !11, metadata !67, metadata !6}
!359 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, false> &"}
!360 = metadata !{null, metadata !8, metadata !9, metadata !361, metadata !11, metadata !207, metadata !6}
!361 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<64>"}
!362 = metadata !{null, metadata !8, metadata !9, metadata !363, metadata !11, metadata !210, metadata !6}
!363 = metadata !{metadata !"kernel_arg_type", metadata !"const class fp_struct<double> &"}
!364 = metadata !{null, metadata !16, metadata !17, metadata !365, metadata !19, metadata !70, metadata !6}
!365 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!366 = metadata !{null, metadata !16, metadata !17, metadata !367, metadata !19, metadata !368, metadata !6}
!367 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<23, false> &"}
!368 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!369 = metadata !{null, metadata !16, metadata !17, metadata !370, metadata !19, metadata !70, metadata !6}
!370 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<23, false> &"}
!371 = metadata !{null, metadata !16, metadata !17, metadata !372, metadata !19, metadata !368, metadata !6}
!372 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong", metadata !"const ap_int_base<52, false> &"}
!373 = metadata !{null, metadata !16, metadata !17, metadata !374, metadata !19, metadata !70, metadata !6}
!374 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<52, false> &"}
!375 = metadata !{null, metadata !24, metadata !2, metadata !28, metadata !4, metadata !376, metadata !6}
!376 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"s", metadata !"c"}
!377 = metadata !{null, metadata !8, metadata !9, metadata !74, metadata !11, metadata !109, metadata !6}
!378 = metadata !{null, metadata !94, metadata !17, metadata !379, metadata !19, metadata !129, metadata !6}
!379 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<4, false>*", metadata !"int"}
!380 = metadata !{null, metadata !8, metadata !9, metadata !381, metadata !11, metadata !67, metadata !6}
!381 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<3> &"}
!382 = metadata !{null, metadata !16, metadata !17, metadata !383, metadata !19, metadata !70, metadata !6}
!383 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<8, true> &"}
!384 = metadata !{null, metadata !8, metadata !9, metadata !385, metadata !11, metadata !67, metadata !6}
!385 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &"}
!386 = metadata !{null, metadata !8, metadata !9, metadata !387, metadata !11, metadata !77, metadata !6}
!387 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!388 = metadata !{null, metadata !8, metadata !9, metadata !389, metadata !11, metadata !77, metadata !6}
!389 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!390 = metadata !{null, metadata !8, metadata !9, metadata !389, metadata !11, metadata !67, metadata !6}
!391 = metadata !{null, metadata !8, metadata !9, metadata !392, metadata !11, metadata !67, metadata !6}
!392 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!393 = metadata !{null, metadata !8, metadata !9, metadata !394, metadata !11, metadata !67, metadata !6}
!394 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!395 = metadata !{null, metadata !8, metadata !9, metadata !396, metadata !11, metadata !77, metadata !6}
!396 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<13, -2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!397 = metadata !{null, metadata !8, metadata !9, metadata !398, metadata !11, metadata !67, metadata !6}
!398 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, -16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!399 = metadata !{null, metadata !8, metadata !9, metadata !400, metadata !11, metadata !77, metadata !6}
!400 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<21, -1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!401 = metadata !{null, metadata !8, metadata !9, metadata !402, metadata !11, metadata !67, metadata !6}
!402 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<38, -8, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!403 = metadata !{null, metadata !8, metadata !9, metadata !404, metadata !11, metadata !67, metadata !6}
!404 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<30, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!405 = metadata !{null, metadata !8, metadata !9, metadata !406, metadata !11, metadata !67, metadata !6}
!406 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!407 = metadata !{null, metadata !241, metadata !2, metadata !408, metadata !4, metadata !409, metadata !6}
!408 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<31, 1>", metadata !"float &", metadata !"int"}
!409 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"result", metadata !"prescale"}
!410 = metadata !{null, metadata !16, metadata !17, metadata !411, metadata !19, metadata !80, metadata !6}
!411 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"int"}
!412 = metadata !{null, metadata !8, metadata !9, metadata !413, metadata !11, metadata !67, metadata !6}
!413 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!414 = metadata !{null, metadata !8, metadata !9, metadata !415, metadata !11, metadata !67, metadata !6}
!415 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!416 = metadata !{null, metadata !8, metadata !9, metadata !417, metadata !11, metadata !418, metadata !6}
!417 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<1 + SIG_BITS, 1>"}
!418 = metadata !{metadata !"kernel_arg_name", metadata !"mantissa"}
!419 = metadata !{null, metadata !104, metadata !2, metadata !420, metadata !4, metadata !106, metadata !6}
!420 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<23, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!421 = metadata !{null, metadata !8, metadata !9, metadata !422, metadata !11, metadata !67, metadata !6}
!422 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<23, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!423 = metadata !{null, metadata !8, metadata !9, metadata !422, metadata !11, metadata !109, metadata !6}
!424 = metadata !{null, metadata !104, metadata !2, metadata !425, metadata !4, metadata !106, metadata !6}
!425 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!426 = metadata !{null, metadata !8, metadata !9, metadata !427, metadata !11, metadata !109, metadata !6}
!427 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!428 = metadata !{null, metadata !8, metadata !9, metadata !429, metadata !11, metadata !109, metadata !6}
!429 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &"}
!430 = metadata !{null, metadata !8, metadata !9, metadata !431, metadata !11, metadata !67, metadata !6}
!431 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<31, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!432 = metadata !{null, metadata !104, metadata !2, metadata !433, metadata !4, metadata !106, metadata !6}
!433 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!434 = metadata !{null, metadata !8, metadata !9, metadata !435, metadata !11, metadata !109, metadata !6}
!435 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!436 = metadata !{null, metadata !8, metadata !9, metadata !429, metadata !11, metadata !67, metadata !6}
!437 = metadata !{null, metadata !8, metadata !9, metadata !415, metadata !11, metadata !77, metadata !6}
!438 = metadata !{null, metadata !8, metadata !9, metadata !439, metadata !11, metadata !67, metadata !6}
!439 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 2, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!440 = metadata !{null, metadata !16, metadata !17, metadata !441, metadata !19, metadata !368, metadata !6}
!441 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_fixed_base<33, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!442 = metadata !{null, metadata !8, metadata !9, metadata !443, metadata !11, metadata !77, metadata !6}
!443 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!444 = metadata !{null, metadata !8, metadata !9, metadata !443, metadata !11, metadata !67, metadata !6}
!445 = metadata !{null, metadata !8, metadata !9, metadata !446, metadata !11, metadata !67, metadata !6}
!446 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!447 = metadata !{null, metadata !8, metadata !9, metadata !448, metadata !11, metadata !77, metadata !6}
!448 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<15, 0, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!449 = metadata !{null, metadata !8, metadata !9, metadata !450, metadata !11, metadata !67, metadata !6}
!450 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, -14, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!451 = metadata !{null, metadata !8, metadata !9, metadata !452, metadata !11, metadata !77, metadata !6}
!452 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<23, 1, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!453 = metadata !{null, metadata !8, metadata !9, metadata !454, metadata !11, metadata !67, metadata !6}
!454 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, -6, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!455 = metadata !{null, metadata !8, metadata !9, metadata !456, metadata !11, metadata !67, metadata !6}
!456 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<29, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!457 = metadata !{null, metadata !8, metadata !9, metadata !458, metadata !11, metadata !67, metadata !6}
!458 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<29, 0, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!459 = metadata !{null, metadata !8, metadata !9, metadata !460, metadata !11, metadata !77, metadata !6}
!460 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<9, -7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!461 = metadata !{null, metadata !8, metadata !9, metadata !462, metadata !11, metadata !67, metadata !6}
!462 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<18, -14, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!463 = metadata !{null, metadata !8, metadata !9, metadata !464, metadata !11, metadata !67, metadata !6}
!464 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<17, -7, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!465 = metadata !{null, metadata !8, metadata !9, metadata !466, metadata !11, metadata !67, metadata !6}
!466 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, -7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!467 = metadata !{null, metadata !8, metadata !9, metadata !468, metadata !11, metadata !67, metadata !6}
!468 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!469 = metadata !{null, metadata !8, metadata !9, metadata !387, metadata !11, metadata !67, metadata !6}
!470 = metadata !{null, metadata !104, metadata !2, metadata !471, metadata !4, metadata !106, metadata !6}
!471 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!472 = metadata !{null, metadata !8, metadata !9, metadata !473, metadata !11, metadata !67, metadata !6}
!473 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<31, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!474 = metadata !{null, metadata !8, metadata !9, metadata !473, metadata !11, metadata !109, metadata !6}
!475 = metadata !{null, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !6}
!476 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!477 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!478 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<3> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_int<fp_struct<float>::EXP_BITS> &"}
!479 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!480 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout", metadata !"Mx", metadata !"Ex"}
!481 = metadata !{null, metadata !8, metadata !9, metadata !385, metadata !11, metadata !77, metadata !6}
!482 = metadata !{null, metadata !8, metadata !9, metadata !483, metadata !11, metadata !77, metadata !6}
!483 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!484 = metadata !{null, metadata !8, metadata !9, metadata !191, metadata !11, metadata !280, metadata !6}
!485 = metadata !{null, metadata !8, metadata !9, metadata !486, metadata !11, metadata !67, metadata !6}
!486 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!487 = metadata !{null, metadata !241, metadata !2, metadata !488, metadata !4, metadata !489, metadata !6}
!488 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!489 = metadata !{metadata !"kernel_arg_name", metadata !"qb", metadata !"r", metadata !"s"}
!490 = metadata !{null, metadata !8, metadata !9, metadata !491, metadata !11, metadata !67, metadata !6}
!491 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!492 = metadata !{null, metadata !8, metadata !9, metadata !493, metadata !11, metadata !67, metadata !6}
!493 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!494 = metadata !{null, metadata !8, metadata !9, metadata !495, metadata !11, metadata !12, metadata !6}
!495 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<49, 0>"}
!496 = metadata !{null, metadata !104, metadata !2, metadata !497, metadata !4, metadata !106, metadata !6}
!497 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<19, false>*", metadata !"int", metadata !"int"}
!498 = metadata !{null, metadata !8, metadata !9, metadata !499, metadata !11, metadata !109, metadata !6}
!499 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<19, false> &"}
!500 = metadata !{null, metadata !8, metadata !9, metadata !499, metadata !11, metadata !111, metadata !6}
!501 = metadata !{null, metadata !8, metadata !9, metadata !502, metadata !11, metadata !109, metadata !6}
!502 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<19, false> &"}
!503 = metadata !{null, metadata !8, metadata !9, metadata !502, metadata !11, metadata !67, metadata !6}
!504 = metadata !{null, metadata !94, metadata !17, metadata !505, metadata !19, metadata !129, metadata !6}
!505 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<19, false>*", metadata !"int"}
!506 = metadata !{null, metadata !104, metadata !2, metadata !507, metadata !4, metadata !106, metadata !6}
!507 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!508 = metadata !{null, metadata !8, metadata !9, metadata !509, metadata !11, metadata !109, metadata !6}
!509 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!510 = metadata !{null, metadata !8, metadata !9, metadata !511, metadata !11, metadata !109, metadata !6}
!511 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, false> &"}
!512 = metadata !{null, metadata !8, metadata !9, metadata !511, metadata !11, metadata !67, metadata !6}
!513 = metadata !{null, metadata !16, metadata !17, metadata !514, metadata !19, metadata !368, metadata !6}
!514 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_fixed_base<49, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!515 = metadata !{null, metadata !8, metadata !9, metadata !486, metadata !11, metadata !77, metadata !6}
!516 = metadata !{null, metadata !8, metadata !9, metadata !517, metadata !11, metadata !67, metadata !6}
!517 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<82, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!518 = metadata !{null, metadata !8, metadata !9, metadata !519, metadata !11, metadata !67, metadata !6}
!519 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<49, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!520 = metadata !{null, metadata !94, metadata !17, metadata !521, metadata !19, metadata !129, metadata !6}
!521 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<3, false>*", metadata !"int"}
!522 = metadata !{null, metadata !16, metadata !17, metadata !523, metadata !19, metadata !70, metadata !6}
!523 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<3, false> &", metadata !"int"}
!524 = metadata !{null, metadata !8, metadata !9, metadata !525, metadata !11, metadata !67, metadata !6}
!525 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<95, 27, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!526 = metadata !{null, metadata !8, metadata !9, metadata !527, metadata !11, metadata !67, metadata !6}
!527 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<95, 27, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!528 = metadata !{null, metadata !8, metadata !9, metadata !381, metadata !11, metadata !77, metadata !6}
!529 = metadata !{null, metadata !104, metadata !2, metadata !530, metadata !4, metadata !106, metadata !6}
!530 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<95, false>*", metadata !"int", metadata !"int"}
!531 = metadata !{null, metadata !8, metadata !9, metadata !532, metadata !11, metadata !109, metadata !6}
!532 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<95, false> &"}
!533 = metadata !{null, metadata !8, metadata !9, metadata !532, metadata !11, metadata !111, metadata !6}
!534 = metadata !{null, metadata !8, metadata !9, metadata !535, metadata !11, metadata !109, metadata !6}
!535 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<95, false> &"}
!536 = metadata !{null, metadata !104, metadata !2, metadata !537, metadata !4, metadata !106, metadata !6}
!537 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<95, 27, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!538 = metadata !{null, metadata !241, metadata !2, metadata !539, metadata !4, metadata !540, metadata !6}
!539 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<71>", metadata !"ap_uint<24>", metadata !"ap_uint<71 + 24> &"}
!540 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"m"}
!541 = metadata !{null, metadata !8, metadata !9, metadata !542, metadata !11, metadata !109, metadata !6}
!542 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, false> &"}
!543 = metadata !{null, metadata !8, metadata !9, metadata !542, metadata !11, metadata !67, metadata !6}
!544 = metadata !{null, metadata !104, metadata !2, metadata !545, metadata !4, metadata !106, metadata !6}
!545 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<41, false>*", metadata !"int", metadata !"int"}
!546 = metadata !{null, metadata !8, metadata !9, metadata !547, metadata !11, metadata !109, metadata !6}
!547 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<41, false> &"}
!548 = metadata !{null, metadata !8, metadata !9, metadata !547, metadata !11, metadata !111, metadata !6}
!549 = metadata !{null, metadata !8, metadata !9, metadata !542, metadata !11, metadata !77, metadata !6}
!550 = metadata !{null, metadata !16, metadata !17, metadata !551, metadata !19, metadata !70, metadata !6}
!551 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<41, false> &", metadata !"int"}
!552 = metadata !{null, metadata !104, metadata !2, metadata !553, metadata !4, metadata !106, metadata !6}
!553 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<71, false>*", metadata !"int", metadata !"int"}
!554 = metadata !{null, metadata !16, metadata !17, metadata !555, metadata !19, metadata !556, metadata !6}
!555 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<71, false> &", metadata !"const ap_int_base<24, false> &"}
!556 = metadata !{metadata !"kernel_arg_name", metadata !"op1", metadata !"op2"}
!557 = metadata !{null, metadata !8, metadata !9, metadata !558, metadata !11, metadata !111, metadata !6}
!558 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<71, false> &"}
!559 = metadata !{null, metadata !16, metadata !17, metadata !560, metadata !19, metadata !70, metadata !6}
!560 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<71, false> &", metadata !"const ap_int_base<24, false> &"}
!561 = metadata !{null, metadata !8, metadata !9, metadata !562, metadata !11, metadata !67, metadata !6}
!562 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &"}
!563 = metadata !{null, metadata !8, metadata !9, metadata !564, metadata !11, metadata !67, metadata !6}
!564 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<71, false> &"}
!565 = metadata !{null, metadata !8, metadata !9, metadata !535, metadata !11, metadata !67, metadata !6}
!566 = metadata !{null, metadata !8, metadata !9, metadata !567, metadata !11, metadata !77, metadata !6}
!567 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<41> &"}
!568 = metadata !{null, metadata !16, metadata !17, metadata !569, metadata !19, metadata !570, metadata !6}
!569 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"float"}
!570 = metadata !{metadata !"kernel_arg_name", metadata !"exp", metadata !"dummy"}
!571 = metadata !{null, metadata !104, metadata !2, metadata !572, metadata !4, metadata !106, metadata !6}
!572 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<100, false>*", metadata !"int", metadata !"int"}
!573 = metadata !{null, metadata !104, metadata !2, metadata !574, metadata !4, metadata !106, metadata !6}
!574 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<9, true>*", metadata !"int", metadata !"int"}
!575 = metadata !{null, metadata !8, metadata !9, metadata !576, metadata !11, metadata !111, metadata !6}
!576 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<9, true> &"}
!577 = metadata !{null, metadata !8, metadata !9, metadata !578, metadata !11, metadata !77, metadata !6}
!578 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!579 = metadata !{null, metadata !8, metadata !9, metadata !580, metadata !11, metadata !111, metadata !6}
!580 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<100, false> &"}
!581 = metadata !{null, metadata !16, metadata !17, metadata !582, metadata !19, metadata !70, metadata !6}
!582 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &", metadata !"int"}
!583 = metadata !{null, metadata !8, metadata !9, metadata !584, metadata !11, metadata !77, metadata !6}
!584 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<71> &"}
!585 = metadata !{null, metadata !94, metadata !17, metadata !586, metadata !19, metadata !129, metadata !6}
!586 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int"}
!587 = metadata !{null, metadata !104, metadata !2, metadata !588, metadata !4, metadata !106, metadata !6}
!588 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int", metadata !"int"}
!589 = metadata !{null, metadata !8, metadata !9, metadata !590, metadata !11, metadata !77, metadata !6}
!590 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<8> &"}
!591 = metadata !{null, metadata !24, metadata !2, metadata !25, metadata !4, metadata !592, metadata !6}
!592 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"s_out", metadata !"c_out"}
!593 = metadata !{null, metadata !241, metadata !2, metadata !594, metadata !4, metadata !592, metadata !6}
!594 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"double &", metadata !"double &"}
!595 = metadata !{null, metadata !8, metadata !9, metadata !596, metadata !11, metadata !67, metadata !6}
!596 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<78> &"}
!597 = metadata !{null, metadata !8, metadata !9, metadata !598, metadata !11, metadata !599, metadata !6}
!598 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<78>"}
!599 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!600 = metadata !{null, metadata !16, metadata !17, metadata !601, metadata !19, metadata !70, metadata !6}
!601 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"int"}
!602 = metadata !{null, metadata !8, metadata !9, metadata !603, metadata !11, metadata !109, metadata !6}
!603 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!604 = metadata !{null, metadata !8, metadata !9, metadata !605, metadata !11, metadata !109, metadata !6}
!605 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &"}
!606 = metadata !{null, metadata !8, metadata !9, metadata !605, metadata !11, metadata !67, metadata !6}
!607 = metadata !{null, metadata !8, metadata !9, metadata !608, metadata !11, metadata !67, metadata !6}
!608 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<78, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!609 = metadata !{null, metadata !8, metadata !9, metadata !610, metadata !11, metadata !67, metadata !6}
!610 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!611 = metadata !{null, metadata !104, metadata !2, metadata !612, metadata !4, metadata !106, metadata !6}
!612 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<78, false>*", metadata !"int", metadata !"int"}
!613 = metadata !{null, metadata !8, metadata !9, metadata !614, metadata !11, metadata !109, metadata !6}
!614 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<78, false> &"}
!615 = metadata !{null, metadata !8, metadata !9, metadata !614, metadata !11, metadata !111, metadata !6}
!616 = metadata !{null, metadata !104, metadata !2, metadata !617, metadata !4, metadata !106, metadata !6}
!617 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<78, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!618 = metadata !{null, metadata !16, metadata !17, metadata !619, metadata !19, metadata !70, metadata !6}
!619 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"const ap_int_base<78, true> &"}
!620 = metadata !{null, metadata !8, metadata !9, metadata !621, metadata !11, metadata !67, metadata !6}
!621 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, true> &"}
!622 = metadata !{null, metadata !8, metadata !9, metadata !623, metadata !11, metadata !67, metadata !6}
!623 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<80, true> &"}
!624 = metadata !{null, metadata !16, metadata !17, metadata !625, metadata !19, metadata !70, metadata !6}
!625 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, true> &", metadata !"int"}
!626 = metadata !{null, metadata !8, metadata !9, metadata !627, metadata !11, metadata !67, metadata !6}
!627 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!628 = metadata !{null, metadata !8, metadata !9, metadata !627, metadata !11, metadata !109, metadata !6}
!629 = metadata !{null, metadata !241, metadata !2, metadata !630, metadata !4, metadata !631, metadata !6}
!630 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<79, 3> &", metadata !"ap_fixed<79, 3> &", metadata !"ap_fixed<79, 3> &"}
!631 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"y", metadata !"z"}
!632 = metadata !{null, metadata !241, metadata !2, metadata !633, metadata !4, metadata !634, metadata !6}
!633 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!634 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"add"}
!635 = metadata !{null, metadata !8, metadata !9, metadata !636, metadata !11, metadata !77, metadata !6}
!636 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 3, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!637 = metadata !{null, metadata !8, metadata !9, metadata !636, metadata !11, metadata !67, metadata !6}
!638 = metadata !{null, metadata !8, metadata !9, metadata !639, metadata !11, metadata !67, metadata !6}
!639 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!640 = metadata !{null, metadata !8, metadata !9, metadata !641, metadata !11, metadata !67, metadata !6}
!641 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<80, 4, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!642 = metadata !{null, metadata !8, metadata !9, metadata !643, metadata !11, metadata !67, metadata !6}
!643 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<80, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!644 = metadata !{null, metadata !8, metadata !9, metadata !645, metadata !11, metadata !67, metadata !6}
!645 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<128, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!646 = metadata !{null, metadata !8, metadata !9, metadata !647, metadata !11, metadata !67, metadata !6}
!647 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<128, 2, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!648 = metadata !{null, metadata !8, metadata !9, metadata !649, metadata !11, metadata !67, metadata !6}
!649 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<79, 3, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!650 = metadata !{null, metadata !241, metadata !2, metadata !651, metadata !4, metadata !634, metadata !6}
!651 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"_Bool"}
!652 = metadata !{null, metadata !8, metadata !9, metadata !639, metadata !11, metadata !77, metadata !6}
!653 = metadata !{null, metadata !241, metadata !2, metadata !654, metadata !4, metadata !634, metadata !6}
!654 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_fixed<79, 3, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!655 = metadata !{null, metadata !94, metadata !17, metadata !656, metadata !19, metadata !129, metadata !6}
!656 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!657 = metadata !{null, metadata !8, metadata !9, metadata !658, metadata !11, metadata !67, metadata !6}
!658 = metadata !{metadata !"kernel_arg_type", metadata !"const af_bit_ref<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!659 = metadata !{null, metadata !8, metadata !9, metadata !658, metadata !11, metadata !109, metadata !6}
!660 = metadata !{null, metadata !8, metadata !9, metadata !621, metadata !11, metadata !109, metadata !6}
!661 = metadata !{null, metadata !8, metadata !9, metadata !662, metadata !11, metadata !67, metadata !6}
!662 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<79, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!663 = metadata !{null, metadata !16, metadata !17, metadata !664, metadata !19, metadata !70, metadata !6}
!664 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<100, false> &", metadata !"int"}
!665 = metadata !{null, metadata !16, metadata !17, metadata !666, metadata !19, metadata !70, metadata !6}
!666 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!667 = metadata !{null, metadata !8, metadata !9, metadata !668, metadata !11, metadata !109, metadata !6}
!668 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<100, false> &"}
!669 = metadata !{null, metadata !8, metadata !9, metadata !668, metadata !11, metadata !67, metadata !6}
!670 = metadata !{null, metadata !104, metadata !2, metadata !671, metadata !4, metadata !106, metadata !6}
!671 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<79, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!672 = metadata !{null, metadata !8, metadata !9, metadata !596, metadata !11, metadata !77, metadata !6}
!673 = metadata !{null, metadata !241, metadata !2, metadata !674, metadata !4, metadata !675, metadata !6}
!674 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"ap_uint<3> &", metadata !"ap_uint<78> &"}
!675 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout"}
!676 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !599, metadata !6}
!677 = metadata !{null, metadata !16, metadata !17, metadata !678, metadata !19, metadata !70, metadata !6}
!678 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<78, false> &", metadata !"const ap_int_base<52, false> &"}
!679 = metadata !{null, metadata !104, metadata !2, metadata !680, metadata !4, metadata !106, metadata !6}
!680 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<79, false>*", metadata !"int", metadata !"int"}
!681 = metadata !{null, metadata !8, metadata !9, metadata !682, metadata !11, metadata !111, metadata !6}
!682 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<79, false> &"}
!683 = metadata !{null, metadata !16, metadata !17, metadata !684, metadata !19, metadata !70, metadata !6}
!684 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &", metadata !"const ap_int_base<79, false> &"}
!685 = metadata !{null, metadata !8, metadata !9, metadata !686, metadata !11, metadata !67, metadata !6}
!686 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &"}
!687 = metadata !{null, metadata !104, metadata !2, metadata !688, metadata !4, metadata !106, metadata !6}
!688 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<156, false>*", metadata !"int", metadata !"int"}
!689 = metadata !{null, metadata !8, metadata !9, metadata !690, metadata !11, metadata !111, metadata !6}
!690 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<156, false> &"}
!691 = metadata !{null, metadata !241, metadata !2, metadata !692, metadata !4, metadata !540, metadata !6}
!692 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<78>", metadata !"ap_uint<78>", metadata !"ap_uint<78 + 78> &"}
!693 = metadata !{null, metadata !8, metadata !9, metadata !694, metadata !11, metadata !67, metadata !6}
!694 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<188> &"}
!695 = metadata !{null, metadata !8, metadata !9, metadata !696, metadata !11, metadata !77, metadata !6}
!696 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<156> &"}
!697 = metadata !{null, metadata !241, metadata !2, metadata !698, metadata !4, metadata !540, metadata !6}
!698 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<94>", metadata !"ap_uint<94>", metadata !"ap_uint<2 * 94> &"}
!699 = metadata !{null, metadata !104, metadata !2, metadata !700, metadata !4, metadata !106, metadata !6}
!700 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<48, false>*", metadata !"int", metadata !"int"}
!701 = metadata !{null, metadata !8, metadata !9, metadata !702, metadata !11, metadata !109, metadata !6}
!702 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<48, false> &"}
!703 = metadata !{null, metadata !8, metadata !9, metadata !702, metadata !11, metadata !111, metadata !6}
!704 = metadata !{null, metadata !8, metadata !9, metadata !705, metadata !11, metadata !109, metadata !6}
!705 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, false> &"}
!706 = metadata !{null, metadata !8, metadata !9, metadata !705, metadata !11, metadata !67, metadata !6}
!707 = metadata !{null, metadata !104, metadata !2, metadata !708, metadata !4, metadata !106, metadata !6}
!708 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<188, false>*", metadata !"int", metadata !"int"}
!709 = metadata !{null, metadata !8, metadata !9, metadata !710, metadata !11, metadata !77, metadata !6}
!710 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, false> &"}
!711 = metadata !{null, metadata !16, metadata !17, metadata !712, metadata !19, metadata !70, metadata !6}
!712 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, false> &", metadata !"int"}
!713 = metadata !{null, metadata !8, metadata !9, metadata !714, metadata !11, metadata !67, metadata !6}
!714 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<34> &"}
!715 = metadata !{null, metadata !8, metadata !9, metadata !716, metadata !11, metadata !77, metadata !6}
!716 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<48> &"}
!717 = metadata !{null, metadata !104, metadata !2, metadata !718, metadata !4, metadata !106, metadata !6}
!718 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<94, false>*", metadata !"int", metadata !"int"}
!719 = metadata !{null, metadata !16, metadata !17, metadata !720, metadata !19, metadata !721, metadata !6}
!720 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<94, false> &", metadata !"const ap_range_ref<94, false> &"}
!721 = metadata !{metadata !"kernel_arg_name", metadata !"lhs", metadata !"rhs"}
!722 = metadata !{null, metadata !8, metadata !9, metadata !723, metadata !11, metadata !111, metadata !6}
!723 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<94, false> &"}
!724 = metadata !{null, metadata !16, metadata !17, metadata !725, metadata !19, metadata !70, metadata !6}
!725 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<94, false> &", metadata !"const ap_int_base<94, false> &"}
!726 = metadata !{null, metadata !8, metadata !9, metadata !727, metadata !11, metadata !67, metadata !6}
!727 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<94, false> &"}
!728 = metadata !{null, metadata !8, metadata !9, metadata !729, metadata !11, metadata !67, metadata !6}
!729 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<188, false> &"}
!730 = metadata !{null, metadata !8, metadata !9, metadata !714, metadata !11, metadata !77, metadata !6}
!731 = metadata !{null, metadata !8, metadata !9, metadata !732, metadata !11, metadata !67, metadata !6}
!732 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<78> &"}
!733 = metadata !{null, metadata !104, metadata !2, metadata !734, metadata !4, metadata !106, metadata !6}
!734 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<56, false>*", metadata !"int", metadata !"int"}
!735 = metadata !{null, metadata !8, metadata !9, metadata !736, metadata !11, metadata !111, metadata !6}
!736 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<56, false> &"}
!737 = metadata !{null, metadata !104, metadata !2, metadata !738, metadata !4, metadata !106, metadata !6}
!738 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<178, false>*", metadata !"int", metadata !"int"}
!739 = metadata !{null, metadata !8, metadata !9, metadata !740, metadata !11, metadata !111, metadata !6}
!740 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<178, false> &"}
!741 = metadata !{null, metadata !16, metadata !17, metadata !742, metadata !19, metadata !70, metadata !6}
!742 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<178, false> &", metadata !"int"}
!743 = metadata !{null, metadata !8, metadata !9, metadata !744, metadata !11, metadata !67, metadata !6}
!744 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<178, false> &"}
!745 = metadata !{null, metadata !8, metadata !9, metadata !746, metadata !11, metadata !77, metadata !6}
!746 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<56> &"}
!747 = metadata !{null, metadata !241, metadata !2, metadata !748, metadata !4, metadata !540, metadata !6}
!748 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<125>", metadata !"ap_uint<53>", metadata !"ap_uint<125 + 53> &"}
!749 = metadata !{null, metadata !8, metadata !9, metadata !750, metadata !11, metadata !109, metadata !6}
!750 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<70, false> &"}
!751 = metadata !{null, metadata !8, metadata !9, metadata !750, metadata !11, metadata !67, metadata !6}
!752 = metadata !{null, metadata !104, metadata !2, metadata !753, metadata !4, metadata !106, metadata !6}
!753 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<70, false>*", metadata !"int", metadata !"int"}
!754 = metadata !{null, metadata !8, metadata !9, metadata !755, metadata !11, metadata !109, metadata !6}
!755 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<70, false> &"}
!756 = metadata !{null, metadata !8, metadata !9, metadata !755, metadata !11, metadata !111, metadata !6}
!757 = metadata !{null, metadata !8, metadata !9, metadata !750, metadata !11, metadata !77, metadata !6}
!758 = metadata !{null, metadata !16, metadata !17, metadata !759, metadata !19, metadata !70, metadata !6}
!759 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<70, false> &", metadata !"int"}
!760 = metadata !{null, metadata !104, metadata !2, metadata !761, metadata !4, metadata !106, metadata !6}
!761 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<125, false>*", metadata !"int", metadata !"int"}
!762 = metadata !{null, metadata !16, metadata !17, metadata !763, metadata !19, metadata !556, metadata !6}
!763 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<125, false> &", metadata !"const ap_int_base<53, false> &"}
!764 = metadata !{null, metadata !8, metadata !9, metadata !765, metadata !11, metadata !111, metadata !6}
!765 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<125, false> &"}
!766 = metadata !{null, metadata !16, metadata !17, metadata !767, metadata !19, metadata !70, metadata !6}
!767 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<125, false> &", metadata !"const ap_int_base<53, false> &"}
!768 = metadata !{null, metadata !8, metadata !9, metadata !769, metadata !11, metadata !67, metadata !6}
!769 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &"}
!770 = metadata !{null, metadata !8, metadata !9, metadata !771, metadata !11, metadata !67, metadata !6}
!771 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<125, false> &"}
!772 = metadata !{null, metadata !8, metadata !9, metadata !773, metadata !11, metadata !77, metadata !6}
!773 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<70> &"}
!774 = metadata !{null, metadata !16, metadata !17, metadata !775, metadata !19, metadata !570, metadata !6}
!775 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"double"}
!776 = metadata !{null, metadata !16, metadata !17, metadata !777, metadata !19, metadata !70, metadata !6}
!777 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<12, true> &", metadata !"int"}
!778 = metadata !{null, metadata !104, metadata !2, metadata !779, metadata !4, metadata !106, metadata !6}
!779 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<256, false>*", metadata !"int", metadata !"int"}
!780 = metadata !{null, metadata !8, metadata !9, metadata !781, metadata !11, metadata !111, metadata !6}
!781 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<12, true> &"}
!782 = metadata !{null, metadata !8, metadata !9, metadata !783, metadata !11, metadata !77, metadata !6}
!783 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<7, false> &"}
!784 = metadata !{null, metadata !8, metadata !9, metadata !785, metadata !11, metadata !111, metadata !6}
!785 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<256, false> &"}
!786 = metadata !{null, metadata !104, metadata !2, metadata !787, metadata !4, metadata !106, metadata !6}
!787 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<12, true>*", metadata !"int", metadata !"int"}
!788 = metadata !{null, metadata !8, metadata !9, metadata !789, metadata !11, metadata !77, metadata !6}
!789 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<125> &"}
!790 = metadata !{null, metadata !16, metadata !17, metadata !791, metadata !19, metadata !70, metadata !6}
!791 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"int"}
!792 = metadata !{null, metadata !16, metadata !17, metadata !793, metadata !19, metadata !70, metadata !6}
!793 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"const ap_int_base<52, false> &"}
!794 = metadata !{null, metadata !8, metadata !9, metadata !795, metadata !11, metadata !77, metadata !6}
!795 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<53> &"}
!796 = metadata !{null, metadata !8, metadata !9, metadata !797, metadata !11, metadata !111, metadata !6}
!797 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<400, false> &"}
!798 = metadata !{null, metadata !8, metadata !9, metadata !799, metadata !11, metadata !77, metadata !6}
!799 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<79> &"}
!800 = metadata !{null, metadata !104, metadata !2, metadata !801, metadata !4, metadata !106, metadata !6}
!801 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<400, false>*", metadata !"int", metadata !"int"}
!802 = metadata !{null, metadata !8, metadata !9, metadata !732, metadata !11, metadata !77, metadata !6}
!803 = metadata !{null, metadata !241, metadata !2, metadata !804, metadata !4, metadata !592, metadata !6}
!804 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float &", metadata !"float &"}
!805 = metadata !{null, metadata !8, metadata !9, metadata !806, metadata !11, metadata !807, metadata !6}
!806 = metadata !{metadata !"kernel_arg_type", metadata !"uint32_t"}
!807 = metadata !{metadata !"kernel_arg_name", metadata !"i"}
!808 = metadata !{null, metadata !16, metadata !17, metadata !809, metadata !19, metadata !70, metadata !6}
!809 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<8, false> &"}
!810 = metadata !{null, metadata !16, metadata !17, metadata !582, metadata !19, metadata !80, metadata !6}
!811 = metadata !{null, metadata !16, metadata !17, metadata !812, metadata !19, metadata !70, metadata !6}
!812 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &", metadata !"const ap_int_base<32, true> &"}
!813 = metadata !{null, metadata !8, metadata !9, metadata !814, metadata !11, metadata !67, metadata !6}
!814 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &"}
!815 = metadata !{null, metadata !8, metadata !9, metadata !191, metadata !11, metadata !816, metadata !6}
!816 = metadata !{metadata !"kernel_arg_name", metadata !"pi"}
!817 = metadata !{null, metadata !16, metadata !17, metadata !818, metadata !19, metadata !70, metadata !6}
!818 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true> &", metadata !"int"}
!819 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !90, metadata !6}
!820 = metadata !{null, metadata !241, metadata !2, metadata !821, metadata !4, metadata !631, metadata !6}
!821 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &", metadata !"struct ap_fixed<34, 2, 5, 3, 0> &"}
!822 = metadata !{null, metadata !241, metadata !2, metadata !823, metadata !4, metadata !634, metadata !6}
!823 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!824 = metadata !{null, metadata !8, metadata !9, metadata !825, metadata !11, metadata !77, metadata !6}
!825 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!826 = metadata !{null, metadata !8, metadata !9, metadata !825, metadata !11, metadata !67, metadata !6}
!827 = metadata !{null, metadata !8, metadata !9, metadata !828, metadata !11, metadata !67, metadata !6}
!828 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!829 = metadata !{null, metadata !8, metadata !9, metadata !830, metadata !11, metadata !67, metadata !6}
!830 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<35, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!831 = metadata !{null, metadata !8, metadata !9, metadata !832, metadata !11, metadata !67, metadata !6}
!832 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<128, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!833 = metadata !{null, metadata !8, metadata !9, metadata !834, metadata !11, metadata !67, metadata !6}
!834 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<128, 4, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!835 = metadata !{null, metadata !241, metadata !2, metadata !836, metadata !4, metadata !634, metadata !6}
!836 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"struct ap_fixed<34, 2, 5, 3, 0>", metadata !"_Bool"}
!837 = metadata !{null, metadata !8, metadata !9, metadata !838, metadata !11, metadata !67, metadata !6}
!838 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<34, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!839 = metadata !{null, metadata !94, metadata !17, metadata !840, metadata !19, metadata !129, metadata !6}
!840 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!841 = metadata !{null, metadata !8, metadata !9, metadata !842, metadata !11, metadata !67, metadata !6}
!842 = metadata !{metadata !"kernel_arg_type", metadata !"const af_bit_ref<34, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!843 = metadata !{null, metadata !8, metadata !9, metadata !842, metadata !11, metadata !109, metadata !6}
!844 = metadata !{null, metadata !8, metadata !9, metadata !845, metadata !11, metadata !67, metadata !6}
!845 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<35, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!846 = metadata !{null, metadata !8, metadata !9, metadata !847, metadata !11, metadata !67, metadata !6}
!847 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!848 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !56, metadata !6}
!849 = metadata !{null, metadata !241, metadata !2, metadata !850, metadata !4, metadata !851, metadata !6}
!850 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<7 + 1> &", metadata !"ap_ufixed<fp_struct<float>::SIG_BITS + 12, 0> &"}
!851 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"k", metadata !"t_out"}
!852 = metadata !{null, metadata !8, metadata !9, metadata !853, metadata !11, metadata !67, metadata !6}
!853 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<70, 0, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!854 = metadata !{null, metadata !8, metadata !9, metadata !855, metadata !11, metadata !67, metadata !6}
!855 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<70, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!856 = metadata !{null, metadata !241, metadata !2, metadata !857, metadata !4, metadata !540, metadata !6}
!857 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<35, 0>", metadata !"ap_ufixed<35, 0>", metadata !"ap_ufixed<35 + 35, 0 + 0> &"}
!858 = metadata !{null, metadata !104, metadata !2, metadata !859, metadata !4, metadata !106, metadata !6}
!859 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<70, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!860 = metadata !{null, metadata !241, metadata !2, metadata !861, metadata !4, metadata !540, metadata !6}
!861 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<35>", metadata !"ap_uint<35>", metadata !"ap_uint<35 + 35> &"}
!862 = metadata !{null, metadata !8, metadata !9, metadata !147, metadata !11, metadata !77, metadata !6}
!863 = metadata !{null, metadata !16, metadata !17, metadata !864, metadata !19, metadata !556, metadata !6}
!864 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<35, false> &", metadata !"const ap_int_base<35, false> &"}
!865 = metadata !{null, metadata !8, metadata !9, metadata !866, metadata !11, metadata !111, metadata !6}
!866 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<35, false> &"}
!867 = metadata !{null, metadata !16, metadata !17, metadata !868, metadata !19, metadata !70, metadata !6}
!868 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, false> &", metadata !"const ap_int_base<35, false> &"}
!869 = metadata !{null, metadata !8, metadata !9, metadata !870, metadata !11, metadata !67, metadata !6}
!870 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, false> &"}
!871 = metadata !{null, metadata !104, metadata !2, metadata !872, metadata !4, metadata !106, metadata !6}
!872 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!873 = metadata !{null, metadata !8, metadata !9, metadata !874, metadata !11, metadata !109, metadata !6}
!874 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<35, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!875 = metadata !{null, metadata !8, metadata !9, metadata !870, metadata !11, metadata !109, metadata !6}
!876 = metadata !{null, metadata !104, metadata !2, metadata !877, metadata !4, metadata !106, metadata !6}
!877 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<35, false>*", metadata !"int", metadata !"int"}
!878 = metadata !{null, metadata !8, metadata !9, metadata !879, metadata !11, metadata !67, metadata !6}
!879 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<77, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!880 = metadata !{null, metadata !8, metadata !9, metadata !881, metadata !11, metadata !67, metadata !6}
!881 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<77, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!882 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !109, metadata !6}
!883 = metadata !{null, metadata !241, metadata !2, metadata !884, metadata !4, metadata !540, metadata !6}
!884 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<42, 7>", metadata !"ap_ufixed<35, 1>", metadata !"ap_ufixed<42 + 35, 7 + 1> &"}
!885 = metadata !{null, metadata !104, metadata !2, metadata !886, metadata !4, metadata !106, metadata !6}
!886 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<77, false>*", metadata !"int", metadata !"int"}
!887 = metadata !{null, metadata !8, metadata !9, metadata !888, metadata !11, metadata !109, metadata !6}
!888 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<77, false> &"}
!889 = metadata !{null, metadata !8, metadata !9, metadata !888, metadata !11, metadata !111, metadata !6}
!890 = metadata !{null, metadata !8, metadata !9, metadata !891, metadata !11, metadata !109, metadata !6}
!891 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<77, false> &"}
!892 = metadata !{null, metadata !104, metadata !2, metadata !893, metadata !4, metadata !106, metadata !6}
!893 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<77, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!894 = metadata !{null, metadata !241, metadata !2, metadata !895, metadata !4, metadata !540, metadata !6}
!895 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<42>", metadata !"ap_uint<35>", metadata !"ap_uint<42 + 35> &"}
!896 = metadata !{null, metadata !16, metadata !17, metadata !897, metadata !19, metadata !556, metadata !6}
!897 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<42, false> &", metadata !"const ap_int_base<35, false> &"}
!898 = metadata !{null, metadata !8, metadata !9, metadata !899, metadata !11, metadata !111, metadata !6}
!899 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<42, false> &"}
!900 = metadata !{null, metadata !16, metadata !17, metadata !901, metadata !19, metadata !70, metadata !6}
!901 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, false> &", metadata !"const ap_int_base<35, false> &"}
!902 = metadata !{null, metadata !8, metadata !9, metadata !903, metadata !11, metadata !67, metadata !6}
!903 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<42, false> &"}
!904 = metadata !{null, metadata !8, metadata !9, metadata !891, metadata !11, metadata !67, metadata !6}
!905 = metadata !{null, metadata !104, metadata !2, metadata !906, metadata !4, metadata !106, metadata !6}
!906 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<35, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!907 = metadata !{null, metadata !8, metadata !9, metadata !908, metadata !11, metadata !109, metadata !6}
!908 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<35, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!909 = metadata !{null, metadata !8, metadata !9, metadata !910, metadata !11, metadata !109, metadata !6}
!910 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!911 = metadata !{null, metadata !8, metadata !9, metadata !903, metadata !11, metadata !109, metadata !6}
!912 = metadata !{null, metadata !104, metadata !2, metadata !913, metadata !4, metadata !106, metadata !6}
!913 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<42, false>*", metadata !"int", metadata !"int"}
!914 = metadata !{null, metadata !8, metadata !9, metadata !915, metadata !11, metadata !67, metadata !6}
!915 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!916 = metadata !{null, metadata !8, metadata !9, metadata !917, metadata !11, metadata !67, metadata !6}
!917 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<42, 7, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!918 = metadata !{null, metadata !94, metadata !17, metadata !919, metadata !19, metadata !129, metadata !6}
!919 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!920 = metadata !{null, metadata !104, metadata !2, metadata !921, metadata !4, metadata !106, metadata !6}
!921 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<42, 7, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!922 = metadata !{null, metadata !16, metadata !17, metadata !22, metadata !19, metadata !923, metadata !6}
!923 = metadata !{metadata !"kernel_arg_name", metadata !"y_in", metadata !"x_in"}
!924 = metadata !{null, metadata !241, metadata !2, metadata !925, metadata !4, metadata !631, metadata !6}
!925 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<41, 2> &", metadata !"ap_fixed<41, 2> &", metadata !"ap_fixed<41, 2> &"}
!926 = metadata !{null, metadata !241, metadata !2, metadata !927, metadata !4, metadata !634, metadata !6}
!927 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!928 = metadata !{null, metadata !8, metadata !9, metadata !929, metadata !11, metadata !77, metadata !6}
!929 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 2, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!930 = metadata !{null, metadata !8, metadata !9, metadata !929, metadata !11, metadata !67, metadata !6}
!931 = metadata !{null, metadata !8, metadata !9, metadata !932, metadata !11, metadata !67, metadata !6}
!932 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!933 = metadata !{null, metadata !8, metadata !9, metadata !934, metadata !11, metadata !67, metadata !6}
!934 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!935 = metadata !{null, metadata !8, metadata !9, metadata !936, metadata !11, metadata !67, metadata !6}
!936 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<42, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!937 = metadata !{null, metadata !8, metadata !9, metadata !938, metadata !11, metadata !67, metadata !6}
!938 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 2, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!939 = metadata !{null, metadata !241, metadata !2, metadata !940, metadata !4, metadata !634, metadata !6}
!940 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"_Bool"}
!941 = metadata !{null, metadata !8, metadata !9, metadata !932, metadata !11, metadata !77, metadata !6}
!942 = metadata !{null, metadata !241, metadata !2, metadata !943, metadata !4, metadata !634, metadata !6}
!943 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_fixed<41, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!944 = metadata !{null, metadata !8, metadata !9, metadata !245, metadata !11, metadata !109, metadata !6}
!945 = metadata !{null, metadata !94, metadata !17, metadata !946, metadata !19, metadata !129, metadata !6}
!946 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!947 = metadata !{null, metadata !104, metadata !2, metadata !948, metadata !4, metadata !106, metadata !6}
!948 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!949 = metadata !{null, metadata !8, metadata !9, metadata !950, metadata !11, metadata !67, metadata !6}
!950 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!951 = metadata !{null, metadata !16, metadata !17, metadata !952, metadata !19, metadata !70, metadata !6}
!952 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<8, false> &"}
!953 = metadata !{null, metadata !8, metadata !9, metadata !121, metadata !11, metadata !77, metadata !6}
!954 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !923, metadata !6}
!955 = metadata !{null, metadata !8, metadata !9, metadata !131, metadata !11, metadata !816, metadata !6}
!956 = metadata !{null, metadata !104, metadata !2, metadata !957, metadata !4, metadata !106, metadata !6}
!957 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<88, true>*", metadata !"int", metadata !"int"}
!958 = metadata !{null, metadata !8, metadata !9, metadata !959, metadata !11, metadata !109, metadata !6}
!959 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<88, true> &"}
!960 = metadata !{null, metadata !8, metadata !9, metadata !959, metadata !11, metadata !111, metadata !6}
!961 = metadata !{null, metadata !8, metadata !9, metadata !962, metadata !11, metadata !109, metadata !6}
!962 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<88, false> &"}
!963 = metadata !{null, metadata !8, metadata !9, metadata !962, metadata !11, metadata !67, metadata !6}
!964 = metadata !{null, metadata !241, metadata !2, metadata !965, metadata !4, metadata !631, metadata !6}
!965 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<87, 2> &", metadata !"ap_fixed<87, 2> &", metadata !"ap_fixed<87, 2> &"}
!966 = metadata !{null, metadata !241, metadata !2, metadata !967, metadata !4, metadata !634, metadata !6}
!967 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!968 = metadata !{null, metadata !8, metadata !9, metadata !969, metadata !11, metadata !77, metadata !6}
!969 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 2, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!970 = metadata !{null, metadata !8, metadata !9, metadata !969, metadata !11, metadata !67, metadata !6}
!971 = metadata !{null, metadata !8, metadata !9, metadata !972, metadata !11, metadata !67, metadata !6}
!972 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!973 = metadata !{null, metadata !8, metadata !9, metadata !974, metadata !11, metadata !67, metadata !6}
!974 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<88, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!975 = metadata !{null, metadata !8, metadata !9, metadata !976, metadata !11, metadata !67, metadata !6}
!976 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<88, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!977 = metadata !{null, metadata !8, metadata !9, metadata !978, metadata !11, metadata !67, metadata !6}
!978 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<87, 2, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!979 = metadata !{null, metadata !241, metadata !2, metadata !980, metadata !4, metadata !634, metadata !6}
!980 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"_Bool"}
!981 = metadata !{null, metadata !8, metadata !9, metadata !972, metadata !11, metadata !77, metadata !6}
!982 = metadata !{null, metadata !241, metadata !2, metadata !983, metadata !4, metadata !634, metadata !6}
!983 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_fixed<87, 2, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!984 = metadata !{null, metadata !94, metadata !17, metadata !985, metadata !19, metadata !129, metadata !6}
!985 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!986 = metadata !{null, metadata !104, metadata !2, metadata !987, metadata !4, metadata !106, metadata !6}
!987 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<87, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!988 = metadata !{null, metadata !8, metadata !9, metadata !989, metadata !11, metadata !67, metadata !6}
!989 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<87, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!990 = metadata !{null, metadata !16, metadata !17, metadata !991, metadata !19, metadata !70, metadata !6}
!991 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<11, false> &"}
!992 = metadata !{null, metadata !8, metadata !9, metadata !86, metadata !11, metadata !77, metadata !6}
!993 = metadata !{null, metadata !8, metadata !9, metadata !173, metadata !11, metadata !77, metadata !6}
!994 = metadata !{null, metadata !8, metadata !9, metadata !995, metadata !11, metadata !807, metadata !6}
!995 = metadata !{metadata !"kernel_arg_type", metadata !"uint64_t"}
!996 = metadata !{null, metadata !16, metadata !17, metadata !997, metadata !19, metadata !998, metadata !6}
!997 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float &"}
!998 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"t_out"}
!999 = metadata !{null, metadata !8, metadata !9, metadata !1000, metadata !11, metadata !67, metadata !6}
!1000 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1001 = metadata !{null, metadata !8, metadata !9, metadata !1002, metadata !11, metadata !67, metadata !6}
!1002 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1003 = metadata !{null, metadata !8, metadata !9, metadata !1004, metadata !11, metadata !599, metadata !6}
!1004 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<40, 3>"}
!1005 = metadata !{null, metadata !8, metadata !9, metadata !1006, metadata !11, metadata !599, metadata !6}
!1006 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<40>"}
!1007 = metadata !{null, metadata !16, metadata !17, metadata !1008, metadata !19, metadata !70, metadata !6}
!1008 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &", metadata !"int"}
!1009 = metadata !{null, metadata !8, metadata !9, metadata !1010, metadata !11, metadata !109, metadata !6}
!1010 = metadata !{metadata !"kernel_arg_type", metadata !"const af_range_ref<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1011 = metadata !{null, metadata !8, metadata !9, metadata !1012, metadata !11, metadata !109, metadata !6}
!1012 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &"}
!1013 = metadata !{null, metadata !8, metadata !9, metadata !1012, metadata !11, metadata !67, metadata !6}
!1014 = metadata !{null, metadata !8, metadata !9, metadata !1015, metadata !11, metadata !67, metadata !6}
!1015 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1016 = metadata !{null, metadata !8, metadata !9, metadata !1017, metadata !11, metadata !109, metadata !6}
!1017 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &"}
!1018 = metadata !{null, metadata !8, metadata !9, metadata !1017, metadata !11, metadata !111, metadata !6}
!1019 = metadata !{null, metadata !104, metadata !2, metadata !1020, metadata !4, metadata !106, metadata !6}
!1020 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<40, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!1021 = metadata !{null, metadata !104, metadata !2, metadata !1022, metadata !4, metadata !106, metadata !6}
!1022 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<40, false>*", metadata !"int", metadata !"int"}
!1023 = metadata !{null, metadata !8, metadata !9, metadata !1024, metadata !11, metadata !67, metadata !6}
!1024 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<40, 3, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1025 = metadata !{null, metadata !8, metadata !9, metadata !1026, metadata !11, metadata !67, metadata !6}
!1026 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, 3, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1027 = metadata !{null, metadata !8, metadata !9, metadata !1028, metadata !11, metadata !67, metadata !6}
!1028 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<40, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1029 = metadata !{null, metadata !241, metadata !2, metadata !1030, metadata !4, metadata !631, metadata !6}
!1030 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed<41, 3> &", metadata !"ap_fixed<41, 3> &", metadata !"ap_fixed<41, 3> &"}
!1031 = metadata !{null, metadata !241, metadata !2, metadata !1032, metadata !4, metadata !634, metadata !6}
!1032 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 0, 3, 0>", metadata !"struct ap_uint<1>"}
!1033 = metadata !{null, metadata !8, metadata !9, metadata !1034, metadata !11, metadata !77, metadata !6}
!1034 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 3, true, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!1035 = metadata !{null, metadata !8, metadata !9, metadata !1034, metadata !11, metadata !67, metadata !6}
!1036 = metadata !{null, metadata !8, metadata !9, metadata !1037, metadata !11, metadata !67, metadata !6}
!1037 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 4, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1038 = metadata !{null, metadata !8, metadata !9, metadata !1039, metadata !11, metadata !67, metadata !6}
!1039 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<42, 4, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1040 = metadata !{null, metadata !8, metadata !9, metadata !1041, metadata !11, metadata !67, metadata !6}
!1041 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<41, 3, (enum ap_q_mode)0, (enum ap_o_mode)3, 0> &"}
!1042 = metadata !{null, metadata !241, metadata !2, metadata !1043, metadata !4, metadata !634, metadata !6}
!1043 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"_Bool"}
!1044 = metadata !{null, metadata !8, metadata !9, metadata !1002, metadata !11, metadata !77, metadata !6}
!1045 = metadata !{null, metadata !241, metadata !2, metadata !1046, metadata !4, metadata !634, metadata !6}
!1046 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_fixed<41, 3, 5, 3, 0>", metadata !"struct ap_uint<1>"}
!1047 = metadata !{null, metadata !94, metadata !17, metadata !1048, metadata !19, metadata !129, metadata !6}
!1048 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!1049 = metadata !{null, metadata !104, metadata !2, metadata !1050, metadata !4, metadata !106, metadata !6}
!1050 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<41, 3, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!1051 = metadata !{null, metadata !8, metadata !9, metadata !1052, metadata !11, metadata !111, metadata !6}
!1052 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<66, false> &"}
!1053 = metadata !{null, metadata !8, metadata !9, metadata !1054, metadata !11, metadata !77, metadata !6}
!1054 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<40> &"}
!1055 = metadata !{null, metadata !16, metadata !17, metadata !1056, metadata !19, metadata !70, metadata !6}
!1056 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<66, false> &", metadata !"int"}
!1057 = metadata !{null, metadata !8, metadata !9, metadata !1058, metadata !11, metadata !67, metadata !6}
!1058 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<66, false> &"}
!1059 = metadata !{null, metadata !8, metadata !9, metadata !562, metadata !11, metadata !109, metadata !6}
!1060 = metadata !{null, metadata !104, metadata !2, metadata !1061, metadata !4, metadata !106, metadata !6}
!1061 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<66, false>*", metadata !"int", metadata !"int"}
!1062 = metadata !{null, metadata !8, metadata !9, metadata !1063, metadata !11, metadata !77, metadata !6}
!1063 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<66> &"}
!1064 = metadata !{null, metadata !16, metadata !17, metadata !1065, metadata !19, metadata !70, metadata !6}
!1065 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"int"}
!1066 = metadata !{null, metadata !16, metadata !17, metadata !1067, metadata !19, metadata !70, metadata !6}
!1067 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"const ap_int_base<23, false> &"}
!1068 = metadata !{null, metadata !16, metadata !17, metadata !1069, metadata !19, metadata !368, metadata !6}
!1069 = metadata !{metadata !"kernel_arg_type", metadata !"uint", metadata !"const ap_int_base<8, false> &"}
!1070 = metadata !{null, metadata !16, metadata !17, metadata !1071, metadata !19, metadata !70, metadata !6}
!1071 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<8, false> &"}
!1072 = metadata !{null, metadata !241, metadata !2, metadata !1073, metadata !4, metadata !1074, metadata !6}
!1073 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"_Bool"}
!1074 = metadata !{metadata !"kernel_arg_name", metadata !"t_in", metadata !"do_cos", metadata !"do_pi"}
!1075 = metadata !{null, metadata !8, metadata !9, metadata !1076, metadata !11, metadata !67, metadata !6}
!1076 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<30, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1077 = metadata !{null, metadata !8, metadata !9, metadata !1078, metadata !11, metadata !67, metadata !6}
!1078 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1079 = metadata !{null, metadata !16, metadata !17, metadata !1080, metadata !19, metadata !70, metadata !6}
!1080 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"int"}
!1081 = metadata !{null, metadata !8, metadata !9, metadata !1082, metadata !11, metadata !67, metadata !6}
!1082 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 0, false, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &"}
!1083 = metadata !{null, metadata !8, metadata !9, metadata !1084, metadata !11, metadata !67, metadata !6}
!1084 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 0, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &"}
!1085 = metadata !{null, metadata !94, metadata !17, metadata !1086, metadata !19, metadata !129, metadata !6}
!1086 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int"}
!1087 = metadata !{null, metadata !1088, metadata !1089, metadata !1090, metadata !1091, metadata !1092, metadata !6}
!1088 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!1089 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!1090 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"ap_uint<3> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_ufixed<31, 0> &", metadata !"ap_int<fp_struct<float>::EXP_BITS> &", metadata !"int &"}
!1091 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!1092 = metadata !{metadata !"kernel_arg_name", metadata !"din", metadata !"k", metadata !"dout", metadata !"Mx", metadata !"Ex", metadata !"exactly_pi_over_2"}
!1093 = metadata !{null, metadata !16, metadata !17, metadata !1094, metadata !19, metadata !80, metadata !6}
!1094 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<49, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"int"}
!1095 = metadata !{null, metadata !16, metadata !17, metadata !1096, metadata !19, metadata !70, metadata !6}
!1096 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<95, false> &", metadata !"int"}
!1097 = metadata !{null, metadata !8, metadata !9, metadata !1098, metadata !11, metadata !67, metadata !6}
!1098 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<24> &"}
!1099 = metadata !{null, metadata !8, metadata !9, metadata !1100, metadata !11, metadata !77, metadata !6}
!1100 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<95> &"}
!1101 = metadata !{null, metadata !241, metadata !2, metadata !1102, metadata !4, metadata !243, metadata !6}
!1102 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong long>::is_signed, _Bool>::type"}
!1103 = metadata !{null, metadata !241, metadata !2, metadata !1104, metadata !4, metadata !243, metadata !6}
!1104 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!1105 = metadata !{null, metadata !241, metadata !2, metadata !1106, metadata !4, metadata !243, metadata !6}
!1106 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!1107 = metadata !{null, metadata !16, metadata !17, metadata !1108, metadata !19, metadata !80, metadata !6}
!1108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!1109 = metadata !{null, metadata !8, metadata !9, metadata !1110, metadata !11, metadata !67, metadata !6}
!1110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!1111 = metadata !{null, metadata !8, metadata !9, metadata !1112, metadata !11, metadata !67, metadata !6}
!1112 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<68, 68, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1113 = metadata !{null, metadata !8, metadata !9, metadata !1114, metadata !11, metadata !67, metadata !6}
!1114 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<68, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1115 = metadata !{null, metadata !16, metadata !17, metadata !1116, metadata !19, metadata !70, metadata !6}
!1116 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &", metadata !"int"}
!1117 = metadata !{null, metadata !8, metadata !9, metadata !1118, metadata !11, metadata !77, metadata !6}
!1118 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<68, false> &"}
!1119 = metadata !{null, metadata !8, metadata !9, metadata !1120, metadata !11, metadata !67, metadata !6}
!1120 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<120, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1121 = metadata !{null, metadata !241, metadata !2, metadata !1122, metadata !4, metadata !243, metadata !6}
!1122 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!1123 = metadata !{null, metadata !16, metadata !17, metadata !1124, metadata !19, metadata !80, metadata !6}
!1124 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!1125 = metadata !{null, metadata !8, metadata !9, metadata !1126, metadata !11, metadata !67, metadata !6}
!1126 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!1127 = metadata !{null, metadata !8, metadata !9, metadata !1128, metadata !11, metadata !67, metadata !6}
!1128 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<60, 60, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1129 = metadata !{null, metadata !8, metadata !9, metadata !1130, metadata !11, metadata !67, metadata !6}
!1130 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<60, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1131 = metadata !{null, metadata !16, metadata !17, metadata !1132, metadata !19, metadata !70, metadata !6}
!1132 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &", metadata !"int"}
!1133 = metadata !{null, metadata !8, metadata !9, metadata !1134, metadata !11, metadata !77, metadata !6}
!1134 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<60, false> &"}
!1135 = metadata !{null, metadata !8, metadata !9, metadata !1136, metadata !11, metadata !67, metadata !6}
!1136 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<112, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1137 = metadata !{null, metadata !241, metadata !2, metadata !1138, metadata !4, metadata !243, metadata !6}
!1138 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong long>::is_signed, _Bool>::type"}
!1139 = metadata !{null, metadata !241, metadata !2, metadata !1140, metadata !4, metadata !243, metadata !6}
!1140 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!1141 = metadata !{null, metadata !241, metadata !2, metadata !1142, metadata !4, metadata !243, metadata !6}
!1142 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!1143 = metadata !{null, metadata !8, metadata !9, metadata !1144, metadata !11, metadata !67, metadata !6}
!1144 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<39, 39, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1145 = metadata !{null, metadata !8, metadata !9, metadata !1146, metadata !11, metadata !67, metadata !6}
!1146 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<39, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1147 = metadata !{null, metadata !16, metadata !17, metadata !1148, metadata !19, metadata !70, metadata !6}
!1148 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &", metadata !"int"}
!1149 = metadata !{null, metadata !8, metadata !9, metadata !1150, metadata !11, metadata !77, metadata !6}
!1150 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<39, false> &"}
!1151 = metadata !{null, metadata !8, metadata !9, metadata !1152, metadata !11, metadata !67, metadata !6}
!1152 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<62, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1153 = metadata !{null, metadata !241, metadata !2, metadata !1154, metadata !4, metadata !243, metadata !6}
!1154 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!1155 = metadata !{null, metadata !8, metadata !9, metadata !1156, metadata !11, metadata !67, metadata !6}
!1156 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 31, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1157 = metadata !{null, metadata !8, metadata !9, metadata !1158, metadata !11, metadata !67, metadata !6}
!1158 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1159 = metadata !{null, metadata !16, metadata !17, metadata !1160, metadata !19, metadata !70, metadata !6}
!1160 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, false> &", metadata !"int"}
!1161 = metadata !{null, metadata !8, metadata !9, metadata !429, metadata !11, metadata !77, metadata !6}
!1162 = metadata !{null, metadata !8, metadata !9, metadata !1163, metadata !11, metadata !67, metadata !6}
!1163 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<54, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1164 = metadata !{null, metadata !241, metadata !2, metadata !1165, metadata !4, metadata !243, metadata !6}
!1165 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!1166 = metadata !{null, metadata !241, metadata !2, metadata !1167, metadata !4, metadata !243, metadata !6}
!1167 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!1168 = metadata !{null, metadata !8, metadata !9, metadata !1169, metadata !11, metadata !67, metadata !6}
!1169 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1170 = metadata !{null, metadata !8, metadata !9, metadata !1171, metadata !11, metadata !67, metadata !6}
!1171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<17, 17, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1172 = metadata !{null, metadata !8, metadata !9, metadata !1173, metadata !11, metadata !67, metadata !6}
!1173 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1174 = metadata !{null, metadata !8, metadata !9, metadata !1175, metadata !11, metadata !67, metadata !6}
!1175 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1176 = metadata !{null, metadata !94, metadata !17, metadata !1177, metadata !19, metadata !129, metadata !6}
!1177 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true>*", metadata !"int"}
!1178 = metadata !{null, metadata !241, metadata !2, metadata !1179, metadata !4, metadata !243, metadata !6}
!1179 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!1180 = metadata !{null, metadata !8, metadata !9, metadata !1181, metadata !11, metadata !67, metadata !6}
!1181 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1182 = metadata !{null, metadata !8, metadata !9, metadata !1183, metadata !11, metadata !67, metadata !6}
!1183 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<9, 9, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1184 = metadata !{null, metadata !8, metadata !9, metadata !1185, metadata !11, metadata !67, metadata !6}
!1185 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1186 = metadata !{null, metadata !8, metadata !9, metadata !1187, metadata !11, metadata !67, metadata !6}
!1187 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!1188 = metadata !{null, metadata !94, metadata !17, metadata !1189, metadata !19, metadata !129, metadata !6}
!1189 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true>*", metadata !"int"}
!1190 = metadata !{null, metadata !241, metadata !2, metadata !1191, metadata !4, metadata !243, metadata !6}
!1191 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!1192 = metadata !{null, metadata !241, metadata !2, metadata !1193, metadata !4, metadata !243, metadata !6}
!1193 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!1194 = metadata !{null, metadata !241, metadata !2, metadata !1195, metadata !4, metadata !243, metadata !6}
!1195 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!1196 = metadata !{metadata !1197, [2 x i32]* @llvm_global_ctors_0}
!1197 = metadata !{metadata !1198}
!1198 = metadata !{i32 0, i32 31, metadata !1199}
!1199 = metadata !{metadata !1200}
!1200 = metadata !{metadata !"llvm.global_ctors.0", metadata !1201, metadata !"", i32 0, i32 31}
!1201 = metadata !{metadata !1202}
!1202 = metadata !{i32 0, i32 1, i32 1}
!1203 = metadata !{metadata !1204}
!1204 = metadata !{i32 0, i32 31, metadata !1205}
!1205 = metadata !{metadata !1206}
!1206 = metadata !{metadata !"E1", metadata !1207, metadata !"float", i32 0, i32 31}
!1207 = metadata !{metadata !1208}
!1208 = metadata !{i32 0, i32 63, i32 1}
!1209 = metadata !{metadata !1210}
!1210 = metadata !{i32 0, i32 31, metadata !1211}
!1211 = metadata !{metadata !1212}
!1212 = metadata !{metadata !"B", metadata !1207, metadata !"float", i32 0, i32 31}
!1213 = metadata !{metadata !1214}
!1214 = metadata !{i32 0, i32 31, metadata !1215}
!1215 = metadata !{metadata !1216}
!1216 = metadata !{metadata !"C", metadata !1217, metadata !"float", i32 0, i32 31}
!1217 = metadata !{metadata !1218}
!1218 = metadata !{i32 0, i32 0, i32 0}
