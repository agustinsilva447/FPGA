
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:052default:default2
00:00:072default:default2
387.5862default:default2
105.6412default:defaultZ17-268h px? 
>
Refreshing IP repositories
234*coregenZ19-234h px? 
?
 Loaded user IP repository '%s'.
1135*coregen2T
@c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/solution12default:defaultZ19-1700h px? 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2019.2/data/ip2default:defaultZ19-2313h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2'
update_ip_catalog: 2default:default2
00:00:072default:default2
00:00:102default:default2
428.0512default:default2
40.4652default:defaultZ17-268h px? 
?
?The host OS only allows 260 characters in a normal path. The IP cache path is more than 80 characters. If you experience issues with IP caching, please consider changing the IP cache to a location with a shorter path. Alternately consider using the OS subst command to map part of the path to a drive letter. 
Current IP cache path is %s 2293*coregen2e
Qc:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.cache/ip2default:defaultZ19-4995h px? 
?
Command: %s
53*	vivadotcl2e
Qsynth_design -top hnn_fpga_xbar_0 -part xczu9eg-ffvb1156-2-e -mode out_of_context2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xczu9eg2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xczu9eg2default:defaultZ17-349h px? 
?
?The version limit for your license is '%s' and has expired for new software. A version limit expiration means that, although you may be able to continue to use the current version of tools or IP with this license, you will not be eligible for any updates or new releases.
719*common2
2020.042default:defaultZ17-1540h px? 
[
Loading part %s157*device2(
xczu9eg-ffvb1156-2-e2default:defaultZ21-403h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:24 ; elapsed = 00:00:39 . Memory (MB): peak = 1475.820 ; gain = 65.203
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2#
hnn_fpga_xbar_02default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ip/hnn_fpga_xbar_0/synth/hnn_fpga_xbar_0.v2default:default2
592default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
48842default:default8@Z8-6157h px? 
d
%s
*synth2L
8	Parameter C_FAMILY bound to: zynquplus - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_NUM_SLAVE_SLOTS bound to: 2 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_NUM_MASTER_SLOTS bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 40 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AXI_PROTOCOL bound to: 2 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_NUM_ADDR_RANGES bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2?
m	Parameter C_M_AXI_BASE_ADDR bound to: 64'b0000000000000000000000000000000010100000000000000000000000000000 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_M_AXI_ADDR_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2
k	Parameter C_S_AXI_BASE_ID bound to: 64'b0000000000000000000000000000000100000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
s	Parameter C_S_AXI_THREAD_ID_WIDTH bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter C_AXI_SUPPORTS_USER_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_AWUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_ARUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_WUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter C_M_AXI_WRITE_CONNECTIVITY bound to: 3 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter C_M_AXI_READ_CONNECTIVITY bound to: 3 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_R_REGISTER bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2?
q	Parameter C_S_AXI_SINGLE_THREAD bound to: 64'b0000000000000000000000000000000100000000000000000000000000000001 
2default:defaulth p
x
? 
?
%s
*synth2?
t	Parameter C_S_AXI_WRITE_ACCEPTANCE bound to: 64'b0000000000000000000000000000000100000000000000000000000000000001 
2default:defaulth p
x
? 
?
%s
*synth2?
s	Parameter C_S_AXI_READ_ACCEPTANCE bound to: 64'b0000000000000000000000000000000100000000000000000000000000000001 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter C_M_AXI_WRITE_ISSUING bound to: 1 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_M_AXI_READ_ISSUING bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2?
p	Parameter C_S_AXI_ARB_PRIORITY bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_M_AXI_SECURE bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_CONNECTIVITY_MODE bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2w
c	Parameter P_ONES bound to: 65'b11111111111111111111111111111111111111111111111111111111111111111 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter P_S_AXI_BASE_ID bound to: 128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter P_S_AXI_HIGH_ID bound to: 128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_AXI4 bound to: 0 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_AXI3 bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_AXILITE bound to: 2 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter P_AXILITE_SIZE bound to: 3'b010 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter P_INCR bound to: 2'b01 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_M_AXI_SUPPORTS_WRITE bound to: 1'b1 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter P_M_AXI_SUPPORTS_READ bound to: 1'b1 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter P_S_AXI_SUPPORTS_WRITE bound to: 2'b11 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_S_AXI_SUPPORTS_READ bound to: 2'b11 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_DEBUG bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_RANGE_CHECK bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_ADDR_DECODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
x
%s
*synth2`
L	Parameter P_M_AXI_ERR_MODE bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter P_LEN bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_LOCK bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys26
"axi_crossbar_v2_1_21_crossbar_sasd2default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
12402default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_NUM_SLAVE_SLOTS bound to: 2 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_NUM_MASTER_SLOTS bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_NUM_ADDR_RANGES bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_ADDR_WIDTH bound to: 40 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AXI_PROTOCOL bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2?
m	Parameter C_M_AXI_BASE_ADDR bound to: 64'b0000000000000000000000000000000010100000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
m	Parameter C_M_AXI_HIGH_ADDR bound to: 64'b0000000000000000000000000000000010100000000000001111111111111111 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter C_S_AXI_BASE_ID bound to: 128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter C_S_AXI_HIGH_ID bound to: 128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter C_AXI_SUPPORTS_USER_SIGNALS bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_AWUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_AXI_ARUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_WUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_S_AXI_SUPPORTS_WRITE bound to: 2'b11 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_S_AXI_SUPPORTS_READ bound to: 2'b11 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_M_AXI_SUPPORTS_WRITE bound to: 1'b1 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_M_AXI_SUPPORTS_READ bound to: 1'b1 
2default:defaulth p
x
? 
?
%s
*synth2?
p	Parameter C_S_AXI_ARB_PRIORITY bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_M_AXI_SECURE bound to: 0 - type: integer 
2default:defaulth p
x
? 
x
%s
*synth2`
L	Parameter C_M_AXI_ERR_MODE bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_R_REGISTER bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_RANGE_CHECK bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_ADDR_DECODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_DEBUG bound to: 1 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_AXI4 bound to: 0 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_AXI3 bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_AXILITE bound to: 2 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_NUM_MASTER_SLOTS_DE bound to: 2 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter P_NUM_MASTER_SLOTS_LOG bound to: 1 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter P_NUM_MASTER_SLOTS_DE_LOG bound to: 1 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter P_NUM_SLAVE_SLOTS_LOG bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_AXI_AUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter P_AXI_WID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter P_AMESG_WIDTH bound to: 72 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter P_BMESG_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter P_RMESG_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter P_WMESG_WIDTH bound to: 39 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter P_AXILITE_ERRMODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter P_NONSECURE_BIT bound to: 1 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter P_M_SECURE_MASK bound to: 1'b0 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter P_M_AXILITE_MASK bound to: 1'b0 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter P_FIXED bound to: 2'b00 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter P_BYPASS bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_LIGHTWT bound to: 7 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter P_FULLY_REG bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter P_R_REG_CONFIG bound to: 1 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter P_DECERR bound to: 2'b11 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys25
!axi_crossbar_v2_1_21_addr_decoder2default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
7942default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_NUM_TARGETS bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_NUM_TARGETS_LOG bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_NUM_RANGES bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_ADDR_WIDTH bound to: 40 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_TARGET_ENC bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_TARGET_HOT bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REGION_ENC bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2{
g	Parameter C_BASE_ADDR bound to: 64'b0000000000000000000000000000000010100000000000000000000000000000 
2default:defaulth p
x
? 
?
%s
*synth2{
g	Parameter C_HIGH_ADDR bound to: 64'b0000000000000000000000000000000010100000000000001111111111111111 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter C_TARGET_QUAL bound to: 2'b01 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_RESOLUTION bound to: 2 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter C_COMPARATOR_THRESHOLD bound to: 6 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2?
+generic_baseblocks_v2_1_0_comparator_static2default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
u
%s
*synth2]
I	Parameter C_VALUE bound to: 38'b00000000101000000000000000000000000000 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 38 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_BITS_PER_LUT bound to: 6 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_NUM_LUT bound to: 7 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_FIX_DATA_WIDTH bound to: 42 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys27
#generic_baseblocks_v2_1_0_carry_and2default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
622default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys27
#generic_baseblocks_v2_1_0_carry_and2default:default2
 2default:default2
12default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
622default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+generic_baseblocks_v2_1_0_comparator_static2default:default2
 2default:default2
22default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21332default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!axi_crossbar_v2_1_21_addr_decoder2default:default2
 2default:default2
32default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
7942default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys25
!generic_baseblocks_v2_1_0_mux_enc2default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_RATIO bound to: 2 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_SEL_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_DATA_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!generic_baseblocks_v2_1_0_mux_enc2default:default2
 2default:default2
42default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized02default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_RATIO bound to: 2 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_SEL_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 39 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized02default:default2
 2default:default2
42default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys25
!axi_crossbar_v2_1_21_decerr_slave2default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
35012default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_BUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_AXI_RUSER_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AXI_PROTOCOL bound to: 2 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter C_RESP bound to: 3 - type: integer 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter P_WRITE_IDLE bound to: 2'b00 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter P_WRITE_DATA bound to: 2'b01 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter P_WRITE_RESP bound to: 2'b10 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter P_READ_IDLE bound to: 1'b0 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter P_READ_DATA bound to: 1'b1 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_AXI4 bound to: 0 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter P_AXI3 bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter P_AXILITE bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!axi_crossbar_v2_1_21_decerr_slave2default:default2
 2default:default2
52default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
35012default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&axi_crossbar_v2_1_21_addr_arbiter_sasd2default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
652default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_NUM_S bound to: 2 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_NUM_S_LOG bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_AMESG_WIDTH bound to: 72 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_GRANT_ENC bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2~
j	Parameter C_ARB_PRIORITY bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter P_PRIO_MASK bound to: 2'b00 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized12default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_RATIO bound to: 2 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_SEL_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 72 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized12default:default2
 2default:default2
52default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&axi_crossbar_v2_1_21_addr_arbiter_sasd2default:default2
 2default:default2
62default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
652default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
axi_crossbar_v2_1_21_splitter2default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44612default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter C_NUM_M bound to: 3 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
axi_crossbar_v2_1_21_splitter2default:default2
 2default:default2
72default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44612default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2A
-axi_crossbar_v2_1_21_splitter__parameterized02default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44612default:default8@Z8-6157h px? 
\
%s
*synth2D
0	Parameter C_NUM_M bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-axi_crossbar_v2_1_21_splitter__parameterized02default:default2
 2default:default2
72default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44612default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized22default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_RATIO bound to: 2 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_SEL_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized22default:default2
 2default:default2
72default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2B
.axi_register_slice_v2_1_20_axic_register_slice2default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14762default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DATA_WIDTH bound to: 36 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_REG_CONFIG bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2B
.axi_register_slice_v2_1_20_axic_register_slice2default:default2
 2default:default2
82default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14762default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized32default:default2
 2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter C_FAMILY bound to: rtl - type: string 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_RATIO bound to: 2 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter C_SEL_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_DATA_WIDTH bound to: 3 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized32default:default2
 2default:default2
82default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24522default:default8@Z8-6155h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2@
,gen_debug_trans_seq.debug_aw_trans_seq_i_reg2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
20562default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2@
,gen_debug_trans_seq.debug_ar_trans_seq_i_reg2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
20672default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2>
*gen_debug_trans_seq.debug_w_beat_cnt_i_reg2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
20782default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2>
*gen_debug_trans_seq.debug_r_beat_cnt_i_reg2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
20912default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"axi_crossbar_v2_1_21_crossbar_sasd2default:default2
 2default:default2
92default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
12402default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2
 2default:default2
102default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
48842default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
hnn_fpga_xbar_02default:default2
 2default:default2
112default:default2
12default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ip/hnn_fpga_xbar_0/synth/hnn_fpga_xbar_0.v2default:default2
592default:default8@Z8-6155h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_decerr_slave2default:default2!
S_AXI_AWID[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_decerr_slave2default:default2
S_AXI_WLAST2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_decerr_slave2default:default2!
S_AXI_ARID[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_decerr_slave2default:default2"
S_AXI_ARLEN[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_decerr_slave2default:default2"
S_AXI_ARLEN[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_decerr_slave2default:default2"
S_AXI_ARLEN[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_decerr_slave2default:default2"
S_AXI_ARLEN[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_decerr_slave2default:default2"
S_AXI_ARLEN[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_decerr_slave2default:default2"
S_AXI_ARLEN[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_decerr_slave2default:default2"
S_AXI_ARLEN[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_decerr_slave2default:default2"
S_AXI_ARLEN[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_addr_decoder2default:default2
ADDR[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_addr_decoder2default:default2
ADDR[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys26
"axi_crossbar_v2_1_21_crossbar_sasd2default:default2!
S_AXI_AWID[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys26
"axi_crossbar_v2_1_21_crossbar_sasd2default:default2!
S_AXI_AWID[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys26
"axi_crossbar_v2_1_21_crossbar_sasd2default:default2 
S_AXI_WID[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys26
"axi_crossbar_v2_1_21_crossbar_sasd2default:default2 
S_AXI_WID[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys26
"axi_crossbar_v2_1_21_crossbar_sasd2default:default2!
S_AXI_ARID[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys26
"axi_crossbar_v2_1_21_crossbar_sasd2default:default2!
S_AXI_ARID[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys26
"axi_crossbar_v2_1_21_crossbar_sasd2default:default2 
M_AXI_BID[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys26
"axi_crossbar_v2_1_21_crossbar_sasd2default:default2 
M_AXI_RID[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2!
s_axi_awid[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2!
s_axi_awid[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awlen[15]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awlen[14]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awlen[13]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awlen[12]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awlen[11]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awlen[10]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awlen[9]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awlen[8]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awlen[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awlen[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awlen[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awlen[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awlen[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awlen[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awlen[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awlen[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awsize[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awsize[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awsize[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awsize[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awsize[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awsize[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2$
s_axi_awburst[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2$
s_axi_awburst[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2$
s_axi_awburst[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2$
s_axi_awburst[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awlock[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awlock[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2$
s_axi_awcache[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2$
s_axi_awcache[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2$
s_axi_awcache[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2$
s_axi_awcache[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2$
s_axi_awcache[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2$
s_axi_awcache[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2$
s_axi_awcache[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2$
s_axi_awcache[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awqos[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awqos[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awqos[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awqos[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awqos[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awqos[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awqos[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_awqos[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awuser[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_awuser[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2 
s_axi_wid[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2 
s_axi_wid[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_wlast[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_wlast[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_wuser[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_wuser[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2!
s_axi_arid[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2!
s_axi_arid[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_arlen[15]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_arlen[14]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_arlen[13]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_arlen[12]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_arlen[11]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_arlen[10]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_arlen[9]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_arlen[8]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_arlen[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_arlen[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_arlen[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_arlen[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_arlen[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_arlen[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_arlen[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2"
s_axi_arlen[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_arsize[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_arsize[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_arsize[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_arsize[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_arsize[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2#
s_axi_arsize[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys25
!axi_crossbar_v2_1_21_axi_crossbar2default:default2$
s_axi_arburst[3]2default:defaultZ8-3331h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33312default:default2
1002default:defaultZ17-14h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:43 ; elapsed = 00:01:06 . Memory (MB): peak = 1656.789 ; gain = 246.172
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:44 ; elapsed = 00:01:08 . Memory (MB): peak = 1656.789 ; gain = 246.172
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:44 ; elapsed = 00:01:08 . Memory (MB): peak = 1656.789 ; gain = 246.172
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.2502default:default2
1656.7892default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ip/hnn_fpga_xbar_0/hnn_fpga_xbar_0_ooc.xdc2default:default2
inst	2default:default8Z20-848h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
create_clock: 2default:default2
00:00:172default:default2
00:00:222default:default2
1664.0862default:default2
7.2972default:defaultZ17-268h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ip/hnn_fpga_xbar_0/hnn_fpga_xbar_0_ooc.xdc2default:default2
inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2?
tC:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.runs/hnn_fpga_xbar_0_synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
tC:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.runs/hnn_fpga_xbar_0_synth_1/dont_touch.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1664.0862default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.1192default:default2
1664.0862default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:01:23 ; elapsed = 00:01:57 . Memory (MB): peak = 1664.086 ; gain = 253.469
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Loading part: xczu9eg-ffvb1156-2-e
2default:defaulth p
x
? 
B
 Reading net delay rules and data4578*oasysZ8-6742h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:01:23 ; elapsed = 00:01:57 . Memory (MB): peak = 1664.086 ; gain = 253.469
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:01:23 ; elapsed = 00:01:57 . Memory (MB): peak = 1664.086 ; gain = 253.469
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
merging register '%s' into '%s'3619*oasys22
gen_axilite.s_axi_wready_i_reg2default:default23
gen_axilite.s_axi_awready_i_reg2default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
35742default:default8@Z8-4471h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:01:25 ; elapsed = 00:01:59 . Memory (MB): peak = 1664.086 ; gain = 253.469
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               72 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               36 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 12    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     72 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     36 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 11    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
V
%s
*synth2>
*Module axi_crossbar_v2_1_21_addr_decoder 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
V
%s
*synth2>
*Module axi_crossbar_v2_1_21_decerr_slave 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
[
%s
*synth2C
/Module axi_crossbar_v2_1_21_addr_arbiter_sasd 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               72 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     72 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
R
%s
*synth2:
&Module axi_crossbar_v2_1_21_splitter 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
b
%s
*synth2J
6Module axi_crossbar_v2_1_21_splitter__parameterized0 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
c
%s
*synth2K
7Module axi_register_slice_v2_1_20_axic_register_slice 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               36 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     36 Bit        Muxes := 2     
2default:defaulth p
x
? 
W
%s
*synth2?
+Module axi_crossbar_v2_1_21_crossbar_sasd 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2o
[Part Resources:
DSPs: 2520 (col length:168)
BRAMs: 1824 (col length: RAMB18 168 RAMB36 84)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2H
4gen_sasd.crossbar_sasd_0/reg_slice_r/m_payload_i_reg2default:default2
362default:default2
352default:default2?
?c:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.srcs/sources_1/bd/hnn_fpga/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
17092default:default8@Z8-3936h px?
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:01:31 ; elapsed = 00:02:07 . Memory (MB): peak = 1664.086 ; gain = 253.469
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:02:11 ; elapsed = 00:02:56 . Memory (MB): peak = 2280.059 ; gain = 869.441
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:02:13 ; elapsed = 00:02:59 . Memory (MB): peak = 2308.449 ; gain = 897.832
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:02:13 ; elapsed = 00:03:00 . Memory (MB): peak = 2312.477 ; gain = 901.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:02:27 ; elapsed = 00:03:13 . Memory (MB): peak = 2318.254 ; gain = 907.637
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:02:27 ; elapsed = 00:03:13 . Memory (MB): peak = 2318.254 ; gain = 907.637
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:02:27 ; elapsed = 00:03:13 . Memory (MB): peak = 2318.254 ; gain = 907.637
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:02:27 ; elapsed = 00:03:13 . Memory (MB): peak = 2318.254 ; gain = 907.637
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:02:27 ; elapsed = 00:03:13 . Memory (MB): peak = 2318.254 ; gain = 907.637
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:02:27 ; elapsed = 00:03:13 . Memory (MB): peak = 2318.254 ; gain = 907.637
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
B
%s*synth2*
|      |Cell |Count |
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
B
%s*synth2*
|1     |LUT1 |     2|
2default:defaulth px? 
B
%s*synth2*
|2     |LUT2 |    13|
2default:defaulth px? 
B
%s*synth2*
|3     |LUT3 |    45|
2default:defaulth px? 
B
%s*synth2*
|4     |LUT4 |    43|
2default:defaulth px? 
B
%s*synth2*
|5     |LUT5 |    94|
2default:defaulth px? 
B
%s*synth2*
|6     |LUT6 |    32|
2default:defaulth px? 
B
%s*synth2*
|7     |FDRE |   143|
2default:defaulth px? 
B
%s*synth2*
|8     |FDSE |     1|
2default:defaulth px? 
B
%s*synth2*
+------+-----+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
?
%s
*synth2z
f+------+-------------------------------------+-----------------------------------------------+------+
2default:defaulth p
x
? 
?
%s
*synth2z
f|      |Instance                             |Module                                         |Cells |
2default:defaulth p
x
? 
?
%s
*synth2z
f+------+-------------------------------------+-----------------------------------------------+------+
2default:defaulth p
x
? 
?
%s
*synth2z
f|1     |top                                  |                                               |   373|
2default:defaulth p
x
? 
?
%s
*synth2z
f|2     |  inst                               |axi_crossbar_v2_1_21_axi_crossbar              |   373|
2default:defaulth p
x
? 
?
%s
*synth2z
f|3     |    \gen_sasd.crossbar_sasd_0        |axi_crossbar_v2_1_21_crossbar_sasd             |   373|
2default:defaulth p
x
? 
?
%s
*synth2z
f|4     |      addr_arbiter_inst              |axi_crossbar_v2_1_21_addr_arbiter_sasd         |   246|
2default:defaulth p
x
? 
?
%s
*synth2z
f|5     |      \gen_decerr.decerr_slave_inst  |axi_crossbar_v2_1_21_decerr_slave              |     6|
2default:defaulth p
x
? 
?
%s
*synth2z
f|6     |      reg_slice_r                    |axi_register_slice_v2_1_20_axic_register_slice |   110|
2default:defaulth p
x
? 
?
%s
*synth2z
f|7     |      splitter_ar                    |axi_crossbar_v2_1_21_splitter__parameterized0  |     2|
2default:defaulth p
x
? 
?
%s
*synth2z
f|8     |      splitter_aw                    |axi_crossbar_v2_1_21_splitter                  |     3|
2default:defaulth p
x
? 
?
%s
*synth2z
f+------+-------------------------------------+-----------------------------------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:02:27 ; elapsed = 00:03:13 . Memory (MB): peak = 2318.254 ; gain = 907.637
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 107 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:01:17 ; elapsed = 00:02:41 . Memory (MB): peak = 2318.254 ; gain = 900.340
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:02:27 ; elapsed = 00:03:14 . Memory (MB): peak = 2318.254 ; gain = 907.637
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0972default:default2
2330.3092default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2349.9452default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
492default:default2
1052default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:02:552default:default2
00:04:022default:default2
2349.9452default:default2
1915.4382default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
2349.9452default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
yC:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.runs/hnn_fpga_xbar_0_synth_1/hnn_fpga_xbar_0.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:012default:default2
00:00:122default:default2
2349.9452default:default2
0.0002default:defaultZ17-268h px? 
?
'%s' is deprecated. %s
384*common2#
use_project_ipc2default:default2A
-This option is deprecated and no longer used.2default:defaultZ17-576h px? 
?
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2#
hnn_fpga_xbar_02default:default2$
37be527841ad393b2default:defaultZ2-1648h px? 
P
Renamed %s cell refs.
330*coretcl2
72default:defaultZ2-1174h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
2349.9452default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
yC:/Users/aguss/Desktop/Github/FPGA/ultrascale/hnn_fpga/hnn_fpga/hnn_fpga.runs/hnn_fpga_xbar_0_synth_1/hnn_fpga_xbar_0.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
tExecuting : report_utilization -file hnn_fpga_xbar_0_utilization_synth.rpt -pb hnn_fpga_xbar_0_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Aug 13 19:31:39 20212default:defaultZ17-206h px? 


End Record