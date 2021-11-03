// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Nov  3 17:56:44 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ comblock_c_counter_binary_0_0_sim_netlist.v
// Design      : comblock_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "comblock_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_14_viv i_synth
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
