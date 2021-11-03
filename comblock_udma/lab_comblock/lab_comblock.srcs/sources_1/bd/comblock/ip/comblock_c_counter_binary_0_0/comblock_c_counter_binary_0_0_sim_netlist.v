// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Nov  3 17:56:44 2021
// Host        : hp6g4-mlab-2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mlabadm/Desktop/Github/FPGA/comblock_udma/lab_comblock/lab_comblock.srcs/sources_1/bd/comblock/ip/comblock_c_counter_binary_0_0/comblock_c_counter_binary_0_0_sim_netlist.v
// Design      : comblock_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "comblock_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module comblock_c_counter_binary_0_0
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
  comblock_c_counter_binary_0_0_c_counter_binary_v12_0_14 U0
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
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module comblock_c_counter_binary_0_0_c_counter_binary_v12_0_14
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
  comblock_c_counter_binary_0_0_c_counter_binary_v12_0_14_viv i_synth
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
gFi/9LL5hbgtGis28GQWmwk2rC5oKGIcRxNFrYXSgLZVRoYMYpBIyWtwEOwqQe0OetmRCGTFLfIL
uYC4GcVhJK5e2BNE1ghrrrHN3mcRyD6vc6Yldy9zuYKcsQ31B1at5W/reRrS6meCcpmVuL+emKt4
aWjwyiupi0Q+DrLVbrfs3poWSs4aeARwNzcns1gzp3r30TP2JQ5hhaN8l6ZNXPUx68qZf4YsZoyW
PWshf20n6idVe9hCA2cndz6TUn4I5stuxkaYRvkJ4KysQcOfgSlp2/jr8wwZU6bMQLS/UxMKz1oZ
wL2HTDML7XuWriecHwBufQohWJg3CxINksYeYQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gz7nO0rbuXfnCsUtfQmIZV2+Zp2DveOCaiWrtgohJq/Im++L8rR1cHJNyRMYOO+0pgpe6JAp1ugq
JTQRcl78BefUTFadX+aIahLWYVZ66p0N5kBV1hit4EdyZsISxOc+/SemTKpEf5tw82aAdfSbj8th
dEJlbvdSdiDOeonkWpu299oKIkC7G+363JF8IWm8TvGkrE0+eYcXoBxMnwhpWt/fwfpCzSbaypOT
BmQG6ubN3GU+EfT9EWfKC43am27DGVMagboimkL/vQbjsLnpvCq/Q36Mj03YUb/OWAuSVXZZiV8J
IwKGQlHR7CnMwcO910J/k3LH3HDuTODhkffamw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10336)
`pragma protect data_block
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
Blj1/JNOICpV/Pm6F89X0tjeLA==
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
