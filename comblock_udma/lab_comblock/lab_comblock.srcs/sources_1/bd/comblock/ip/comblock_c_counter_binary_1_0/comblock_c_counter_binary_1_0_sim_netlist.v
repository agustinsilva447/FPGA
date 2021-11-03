// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Nov  3 17:56:44 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top comblock_c_counter_binary_1_0 -prefix
//               comblock_c_counter_binary_1_0_ comblock_c_counter_binary_0_0_sim_netlist.v
// Design      : comblock_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "comblock_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module comblock_c_counter_binary_1_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN comblock_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 16}" *) output [15:0]Q;

  wire CLK;
  wire [15:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  comblock_c_counter_binary_1_0_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "16" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module comblock_c_counter_binary_1_0_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [15:0]L;
  output THRESH0;
  output [15:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [15:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  comblock_c_counter_binary_1_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dmmXCzwxW2FLu/vVGpJzoQ/uTl0t/oirVzDN8rGCQ/cshHIr5KZa8hMP1zjDcrW6js/9tSBuCaB1
Ioj63zjqZA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
N9Ijk+dhcsedFOz7GhClRR68iRquy2ZzjVLVhi5GByFuPpr/oGFn021AFcKE54GT1hqizIMvWGS0
qRbWSO/aiWGT8c930WMeayc4xm2b65tzi7UyXSjcZqyZqk5spgPewfSuL0LKD5R4+zccn3yeTyAR
Cpi6LZ2KmpRW5biXvss=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M8NGALCMec7MmW5uPCxfU8HATjWU2XqyPU8phSDe3mtyor4pgfPtg5TJdKOytKhxa+fQwJxytwzI
KPxtYmaRH/KFiGrOvm7jO78NIlt31qN95S7sMYrLxORaZ4bbNMg4RfwEB0haV15qORczgxWEpvBX
6Qukl64ihp4NiBjXt4YYGoDiNMSczgOe3tLn7UWjfPQnsJ8aMxugelO5AciSBxAdohgLMRE3cu6p
gwakO6ytq1vAR8bqHLT8g/Kdsxn72SBHYdpkba0NfEvzzheOlZY7fNuWD48V6QefMjsX1taMkmQH
m38VdXlC6Ocia7H3zT8LvNLtxrpG8zyD+UI+sg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I1BukTJgP0oEpI/mdw6jwrYhUTr7MTzY5G/EvfuPKQfGzYRI1qLG+aEQeclA1P65+tkbstBEIIg8
ZhiouPVaom8KwKZHBX7eLpxvNBcYVFfnJb1ES5wdcph3sgGtaYKSpspp51oYPM6ZD7DmMGdoc/Wg
JVIUuIfRpo8AnEMfkayPkbwuB0VUKpz5BXS50B+5jvgK7cFe2gUp2ckThqzKUjViVB56Swsz+IQe
l7GvtTbuNcSwapfPtNHH0bWSQStfIzPZZm1A2IZ2WCYafRPkj7uibtKNgnKgIZs1197qomgXbb+b
fDx1iikgF8snJsPchukmgxkMSQtLntwbLs6H+w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UNzBll4hVdQjkp7KJChMHZ9agdKjtTu8+3O75Phz7SpwUZ73Z533+9pCfaH7QI/cwqaVREb20HXT
ji2kU1DV7+Cwbshd08hvUBl23F60ITYS+3rluBLIFX3pzXhjjSu8HQpnxXppbCODvCiWrDLqRU/y
lcFf7B+yp5jK6vEY5xuh8is/oxSPNFwip6GSMqDnE45GU6kU+6n8FTk8pAZUNKnh3j0t6YzcwS3J
wYUhnJpEQYd7+0D/NPjEz0YFqzB8WCh70MxBRJzwdXpuRLiFzplysvw+eHjMPVeU/UPKJWuwWuwc
Bfxw0ThSXZit/SSD+BGhxjbEI9T6rh66FpqbTg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
F7AZy6dB5VKzcudhyRSKWKUbVrSs4vS9jtgDkM6KrVPs3ghP3AF2TeIDyl03EesBxeIQxHqq8thx
uVIGQN5wt92jkzGo61VyUoF2dYHY2dkK9PY4bicayI6rppCS18HnyCC5ODrTMKgOpoj+PEmghCZl
j8+i3NFWPAo6M/MAtVI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NQpRHEO/CEh2TWVl2zAKLb4TTDP4G4mQHrGzJeErDNbJ2L2B4iz3unsCjzHkoDagHoU9jeHYNzw1
EdgeGwokAwsWnHc0V18iEu5CZPPLrncpORhuc7qe0zJvoIFW4tgNZuIjFZI6bkrWzgxNYlkitGJ7
wQxgR+6ZenldybAjVF7d1R8FQmrEKWQ9ztmGHKMd9PfWD1VsbOoxbNA1tkQ3Suq2M9HDzUONaPQq
yMnGxLE4+4xTZZFVVFZeizNxqQcM1Y6s2MEUyS89U6rdAH95x9zDN8PGrif1SUWhpoz33cYp/IL8
acGyIWDbmuS0X+xsLC8cWcrO/MxKDk8bj12S7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W2ZLxVMM2bO/6hqe8KRsBOYby+akb1JiKHhCv9fhS2DK483JVHKKDFtV5ZylpQSPfpmWVI6nDnNm
XtxOYqhOdd9wAHIVXly/nJQ3BORIgR42ZfKk3tkiYQd75XwTJmWjvIda5LTjKISy58Rg+7/yc6kX
SAKkQWzcaHy0VIrsbeLAK7Rz2vPrBQAwZijqUO1uD9pTa1ID2lBqRKOaN/lex50cPJ7PNmyesOUe
aisZi7+ubKWoKmZJmdUy4nKUk4a0FLkIqdFpmX+Bu5UVgWOF47nrEwh3c1MVRxWa1uvngQGGl026
FTa0G+nc1Q9KslAvMQ+fMbz+FbnTF3u/A9gizA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
crSg1tp4q8WSXe8CrvXeHprV3SHRAMA9NobbL+/GDDzvfNVfE9KEmT83FBi4XjPpY1CTbcF+iqkw
skS9kuBOQ9o5iYZR3AKw57IjxgvvUDbYTEwYst8qjiJ7BS8A4pKmCXcdzO9HzGho001wrc2vZevs
j50xf6CHD5tHr6u289UsCSjUpz4SVtMK+JP+F6LM9/3zk/e8DBXPLSRDVJOdNS75JG/G5+wCa9Cs
lYFmE0EAm7HwNz57njZTBRdffRfkPkmWmLkAsuR9LuSOTRA4USyoYH9KBHEUbu7pqAcZJD0pDCsu
X/Pv9BUMpl8Rn71n6o9yl5sKMLy7ReNQHiJ6Hw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gkoCY90W8PcurlDxyhyfcD6FGLuWCHs25wUkYWVjtMinLRGOMsfiowAHmYUxqmGibExKGlgATKTy
+VF0dGkoldYirMCnN/L8LleL1ZiD6xCdO4WqMS5KYHO8tfm80h0REg8CsMp9ecxDriTT/a2II4t2
HuTIcnfxKsQUj6peV1BwJQ6CIKVFgp0n/XvKTGrKf5u4er4JcohqWL22jnKue4rJDcpoAWPBME0Z
YuBRO+qGWNAsux4xCVpqkcIfdy+kD8KLglrBDDylC/EverfTJqMgm0ip8mHt5gfZm7tWCMNzfVk2
7Y+OHYSuT4LbZ8ji9Opj4bJN4MrjhWUMau/wxA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10144)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
