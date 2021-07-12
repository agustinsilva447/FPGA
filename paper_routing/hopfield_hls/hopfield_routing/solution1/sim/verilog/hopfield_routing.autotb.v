// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      hopfield_routing
`define AUTOTB_DUT_INST AESL_inst_hopfield_routing
`define AUTOTB_TOP      apatb_hopfield_routing_top
`define AUTOTB_LAT_RESULT_FILE "hopfield_routing.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "hopfield_routing.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_hopfield_routing_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_MEM_V AESL_automem_V
`define AESL_MEM_INST_V mem_inst_V
`define AESL_MEM_U_0 AESL_automem_U_0
`define AESL_MEM_INST_U_0 mem_inst_U_0
`define AESL_MEM_U_1 AESL_automem_U_1
`define AESL_MEM_INST_U_1 mem_inst_U_1
`define AESL_MEM_U_2 AESL_automem_U_2
`define AESL_MEM_INST_U_2 mem_inst_U_2
`define AESL_MEM_I AESL_automem_I
`define AESL_MEM_INST_I mem_inst_I
`define AESL_MEM_T AESL_automem_T
`define AESL_MEM_INST_T mem_inst_T
`define AESL_DEPTH_A 1
`define AESL_DEPTH_B 1
`define AESL_DEPTH_C 1
`define AESL_DEPTH_l 1
`define AUTOTB_TVIN_V  "../tv/cdatafile/c.hopfield_routing.autotvin_V.dat"
`define AUTOTB_TVIN_U_0  "../tv/cdatafile/c.hopfield_routing.autotvin_U_0.dat"
`define AUTOTB_TVIN_U_1  "../tv/cdatafile/c.hopfield_routing.autotvin_U_1.dat"
`define AUTOTB_TVIN_U_2  "../tv/cdatafile/c.hopfield_routing.autotvin_U_2.dat"
`define AUTOTB_TVIN_I  "../tv/cdatafile/c.hopfield_routing.autotvin_I.dat"
`define AUTOTB_TVIN_T  "../tv/cdatafile/c.hopfield_routing.autotvin_T.dat"
`define AUTOTB_TVIN_A  "../tv/cdatafile/c.hopfield_routing.autotvin_A.dat"
`define AUTOTB_TVIN_B  "../tv/cdatafile/c.hopfield_routing.autotvin_B.dat"
`define AUTOTB_TVIN_C  "../tv/cdatafile/c.hopfield_routing.autotvin_C.dat"
`define AUTOTB_TVIN_l  "../tv/cdatafile/c.hopfield_routing.autotvin_l.dat"
`define AUTOTB_TVIN_V_out_wrapc  "../tv/rtldatafile/rtl.hopfield_routing.autotvin_V.dat"
`define AUTOTB_TVIN_U_0_out_wrapc  "../tv/rtldatafile/rtl.hopfield_routing.autotvin_U_0.dat"
`define AUTOTB_TVIN_U_1_out_wrapc  "../tv/rtldatafile/rtl.hopfield_routing.autotvin_U_1.dat"
`define AUTOTB_TVIN_U_2_out_wrapc  "../tv/rtldatafile/rtl.hopfield_routing.autotvin_U_2.dat"
`define AUTOTB_TVIN_I_out_wrapc  "../tv/rtldatafile/rtl.hopfield_routing.autotvin_I.dat"
`define AUTOTB_TVIN_T_out_wrapc  "../tv/rtldatafile/rtl.hopfield_routing.autotvin_T.dat"
`define AUTOTB_TVIN_A_out_wrapc  "../tv/rtldatafile/rtl.hopfield_routing.autotvin_A.dat"
`define AUTOTB_TVIN_B_out_wrapc  "../tv/rtldatafile/rtl.hopfield_routing.autotvin_B.dat"
`define AUTOTB_TVIN_C_out_wrapc  "../tv/rtldatafile/rtl.hopfield_routing.autotvin_C.dat"
`define AUTOTB_TVIN_l_out_wrapc  "../tv/rtldatafile/rtl.hopfield_routing.autotvin_l.dat"
`define AUTOTB_TVOUT_V  "../tv/cdatafile/c.hopfield_routing.autotvout_V.dat"
`define AUTOTB_TVOUT_U_0  "../tv/cdatafile/c.hopfield_routing.autotvout_U_0.dat"
`define AUTOTB_TVOUT_V_out_wrapc  "../tv/rtldatafile/rtl.hopfield_routing.autotvout_V.dat"
`define AUTOTB_TVOUT_U_0_out_wrapc  "../tv/rtldatafile/rtl.hopfield_routing.autotvout_U_0.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 24;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 49959;
parameter LENGTH_V = 64;
parameter LENGTH_U_0 = 64;
parameter LENGTH_U_1 = 64;
parameter LENGTH_U_2 = 64;
parameter LENGTH_I = 64;
parameter LENGTH_T = 4096;
parameter LENGTH_A = 1;
parameter LENGTH_B = 1;
parameter LENGTH_C = 1;
parameter LENGTH_l = 1;

task read_token;
    input integer fp;
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [5 : 0] V_address0;
wire  V_ce0;
wire  V_we0;
wire [31 : 0] V_d0;
wire [31 : 0] V_q0;
wire [5 : 0] U_0_address0;
wire  U_0_ce0;
wire  U_0_we0;
wire [31 : 0] U_0_d0;
wire [5 : 0] U_1_address0;
wire  U_1_ce0;
wire [31 : 0] U_1_q0;
wire [5 : 0] U_2_address0;
wire  U_2_ce0;
wire [31 : 0] U_2_q0;
wire [5 : 0] I_address0;
wire  I_ce0;
wire [31 : 0] I_q0;
wire [11 : 0] T_address0;
wire  T_ce0;
wire [31 : 0] T_q0;
wire [31 : 0] A;
wire [31 : 0] B;
wire [31 : 0] C;
wire [31 : 0] l;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .V_address0(V_address0),
    .V_ce0(V_ce0),
    .V_we0(V_we0),
    .V_d0(V_d0),
    .V_q0(V_q0),
    .U_0_address0(U_0_address0),
    .U_0_ce0(U_0_ce0),
    .U_0_we0(U_0_we0),
    .U_0_d0(U_0_d0),
    .U_1_address0(U_1_address0),
    .U_1_ce0(U_1_ce0),
    .U_1_q0(U_1_q0),
    .U_2_address0(U_2_address0),
    .U_2_ce0(U_2_ce0),
    .U_2_q0(U_2_q0),
    .I_address0(I_address0),
    .I_ce0(I_ce0),
    .I_q0(I_q0),
    .T_address0(T_address0),
    .T_ce0(T_ce0),
    .T_q0(T_q0),
    .A(A),
    .B(B),
    .C(C),
    .l(l));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
//------------------------arrayV Instantiation--------------

// The input and output of arrayV
wire    arrayV_ce0, arrayV_ce1;
wire    arrayV_we0, arrayV_we1;
wire    [5 : 0]    arrayV_address0, arrayV_address1;
wire    [31 : 0]    arrayV_din0, arrayV_din1;
wire    [31 : 0]    arrayV_dout0, arrayV_dout1;
wire    arrayV_ready;
wire    arrayV_done;

`AESL_MEM_V `AESL_MEM_INST_V(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayV_ce0),
    .we0        (arrayV_we0),
    .address0   (arrayV_address0),
    .din0       (arrayV_din0),
    .dout0      (arrayV_dout0),
    .ce1        (arrayV_ce1),
    .we1        (arrayV_we1),
    .address1   (arrayV_address1),
    .din1       (arrayV_din1),
    .dout1      (arrayV_dout1),
    .ready      (arrayV_ready),
    .done    (arrayV_done)
);

// Assignment between dut and arrayV
assign arrayV_address0 = V_address0;
assign arrayV_ce0 = V_ce0;
assign V_q0 = arrayV_dout0;
assign arrayV_we0 = V_we0;
assign arrayV_din0 = V_d0;
assign arrayV_we1 = 0;
assign arrayV_din1 = 0;
assign arrayV_ready= ready;
assign arrayV_done = interface_done;


//------------------------arrayU_0 Instantiation--------------

// The input and output of arrayU_0
wire    arrayU_0_ce0, arrayU_0_ce1;
wire    arrayU_0_we0, arrayU_0_we1;
wire    [5 : 0]    arrayU_0_address0, arrayU_0_address1;
wire    [31 : 0]    arrayU_0_din0, arrayU_0_din1;
wire    [31 : 0]    arrayU_0_dout0, arrayU_0_dout1;
wire    arrayU_0_ready;
wire    arrayU_0_done;

`AESL_MEM_U_0 `AESL_MEM_INST_U_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayU_0_ce0),
    .we0        (arrayU_0_we0),
    .address0   (arrayU_0_address0),
    .din0       (arrayU_0_din0),
    .dout0      (arrayU_0_dout0),
    .ce1        (arrayU_0_ce1),
    .we1        (arrayU_0_we1),
    .address1   (arrayU_0_address1),
    .din1       (arrayU_0_din1),
    .dout1      (arrayU_0_dout1),
    .ready      (arrayU_0_ready),
    .done    (arrayU_0_done)
);

// Assignment between dut and arrayU_0
assign arrayU_0_address0 = U_0_address0;
assign arrayU_0_ce0 = U_0_ce0;
assign arrayU_0_we0 = U_0_we0;
assign arrayU_0_din0 = U_0_d0;
assign arrayU_0_we1 = 0;
assign arrayU_0_din1 = 0;
assign arrayU_0_ready= ready_initial | arrayU_0_done;
assign arrayU_0_done =    AESL_done_delay;


//------------------------arrayU_1 Instantiation--------------

// The input and output of arrayU_1
wire    arrayU_1_ce0, arrayU_1_ce1;
wire    arrayU_1_we0, arrayU_1_we1;
wire    [5 : 0]    arrayU_1_address0, arrayU_1_address1;
wire    [31 : 0]    arrayU_1_din0, arrayU_1_din1;
wire    [31 : 0]    arrayU_1_dout0, arrayU_1_dout1;
wire    arrayU_1_ready;
wire    arrayU_1_done;

`AESL_MEM_U_1 `AESL_MEM_INST_U_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayU_1_ce0),
    .we0        (arrayU_1_we0),
    .address0   (arrayU_1_address0),
    .din0       (arrayU_1_din0),
    .dout0      (arrayU_1_dout0),
    .ce1        (arrayU_1_ce1),
    .we1        (arrayU_1_we1),
    .address1   (arrayU_1_address1),
    .din1       (arrayU_1_din1),
    .dout1      (arrayU_1_dout1),
    .ready      (arrayU_1_ready),
    .done    (arrayU_1_done)
);

// Assignment between dut and arrayU_1
assign arrayU_1_address0 = U_1_address0;
assign arrayU_1_ce0 = U_1_ce0;
assign U_1_q0 = arrayU_1_dout0;
assign arrayU_1_we0 = 0;
assign arrayU_1_din0 = 0;
assign arrayU_1_we1 = 0;
assign arrayU_1_din1 = 0;
assign arrayU_1_ready=    ready;
assign arrayU_1_done = 0;


//------------------------arrayU_2 Instantiation--------------

// The input and output of arrayU_2
wire    arrayU_2_ce0, arrayU_2_ce1;
wire    arrayU_2_we0, arrayU_2_we1;
wire    [5 : 0]    arrayU_2_address0, arrayU_2_address1;
wire    [31 : 0]    arrayU_2_din0, arrayU_2_din1;
wire    [31 : 0]    arrayU_2_dout0, arrayU_2_dout1;
wire    arrayU_2_ready;
wire    arrayU_2_done;

`AESL_MEM_U_2 `AESL_MEM_INST_U_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayU_2_ce0),
    .we0        (arrayU_2_we0),
    .address0   (arrayU_2_address0),
    .din0       (arrayU_2_din0),
    .dout0      (arrayU_2_dout0),
    .ce1        (arrayU_2_ce1),
    .we1        (arrayU_2_we1),
    .address1   (arrayU_2_address1),
    .din1       (arrayU_2_din1),
    .dout1      (arrayU_2_dout1),
    .ready      (arrayU_2_ready),
    .done    (arrayU_2_done)
);

// Assignment between dut and arrayU_2
assign arrayU_2_address0 = U_2_address0;
assign arrayU_2_ce0 = U_2_ce0;
assign U_2_q0 = arrayU_2_dout0;
assign arrayU_2_we0 = 0;
assign arrayU_2_din0 = 0;
assign arrayU_2_we1 = 0;
assign arrayU_2_din1 = 0;
assign arrayU_2_ready=    ready;
assign arrayU_2_done = 0;


//------------------------arrayI Instantiation--------------

// The input and output of arrayI
wire    arrayI_ce0, arrayI_ce1;
wire    arrayI_we0, arrayI_we1;
wire    [5 : 0]    arrayI_address0, arrayI_address1;
wire    [31 : 0]    arrayI_din0, arrayI_din1;
wire    [31 : 0]    arrayI_dout0, arrayI_dout1;
wire    arrayI_ready;
wire    arrayI_done;

`AESL_MEM_I `AESL_MEM_INST_I(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayI_ce0),
    .we0        (arrayI_we0),
    .address0   (arrayI_address0),
    .din0       (arrayI_din0),
    .dout0      (arrayI_dout0),
    .ce1        (arrayI_ce1),
    .we1        (arrayI_we1),
    .address1   (arrayI_address1),
    .din1       (arrayI_din1),
    .dout1      (arrayI_dout1),
    .ready      (arrayI_ready),
    .done    (arrayI_done)
);

// Assignment between dut and arrayI
assign arrayI_address0 = I_address0;
assign arrayI_ce0 = I_ce0;
assign I_q0 = arrayI_dout0;
assign arrayI_we0 = 0;
assign arrayI_din0 = 0;
assign arrayI_we1 = 0;
assign arrayI_din1 = 0;
assign arrayI_ready=    ready;
assign arrayI_done = 0;


//------------------------arrayT Instantiation--------------

// The input and output of arrayT
wire    arrayT_ce0, arrayT_ce1;
wire    arrayT_we0, arrayT_we1;
wire    [11 : 0]    arrayT_address0, arrayT_address1;
wire    [31 : 0]    arrayT_din0, arrayT_din1;
wire    [31 : 0]    arrayT_dout0, arrayT_dout1;
wire    arrayT_ready;
wire    arrayT_done;

`AESL_MEM_T `AESL_MEM_INST_T(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayT_ce0),
    .we0        (arrayT_we0),
    .address0   (arrayT_address0),
    .din0       (arrayT_din0),
    .dout0      (arrayT_dout0),
    .ce1        (arrayT_ce1),
    .we1        (arrayT_we1),
    .address1   (arrayT_address1),
    .din1       (arrayT_din1),
    .dout1      (arrayT_dout1),
    .ready      (arrayT_ready),
    .done    (arrayT_done)
);

// Assignment between dut and arrayT
assign arrayT_address0 = T_address0;
assign arrayT_ce0 = T_ce0;
assign T_q0 = arrayT_dout0;
assign arrayT_we0 = 0;
assign arrayT_din0 = 0;
assign arrayT_we1 = 0;
assign arrayT_din1 = 0;
assign arrayT_ready=    ready;
assign arrayT_done = 0;


// The signal of port A
reg [31: 0] AESL_REG_A = 0;
assign A = AESL_REG_A;
initial begin : read_file_process_A
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_A,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_A);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_A);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port B
reg [31: 0] AESL_REG_B = 0;
assign B = AESL_REG_B;
initial begin : read_file_process_B
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_B,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_B);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_B);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port C
reg [31: 0] AESL_REG_C = 0;
assign C = AESL_REG_C;
initial begin : read_file_process_C
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_C,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_C);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_C);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port l
reg [31: 0] AESL_REG_l = 0;
assign l = AESL_REG_l;
initial begin : read_file_process_l
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [127  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_l,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_l);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_l);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_V;
reg [31:0] size_V;
reg [31:0] size_V_backup;
reg end_U_0;
reg [31:0] size_U_0;
reg [31:0] size_U_0_backup;
reg end_U_1;
reg [31:0] size_U_1;
reg [31:0] size_U_1_backup;
reg end_U_2;
reg [31:0] size_U_2;
reg [31:0] size_U_2_backup;
reg end_I;
reg [31:0] size_I;
reg [31:0] size_I_backup;
reg end_T;
reg [31:0] size_T;
reg [31:0] size_T_backup;
reg end_A;
reg [31:0] size_A;
reg [31:0] size_A_backup;
reg end_B;
reg [31:0] size_B;
reg [31:0] size_B_backup;
reg end_C;
reg [31:0] size_C;
reg [31:0] size_C_backup;
reg end_l;
reg [31:0] size_l;
reg [31:0] size_l_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_V;

initial begin : dump_tvout_runtime_sign_V
    integer fp;
    dump_tvout_finish_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_V = 1;
end


reg dump_tvout_finish_U_0;

initial begin : dump_tvout_runtime_sign_U_0
    integer fp;
    dump_tvout_finish_U_0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_U_0_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_U_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_U_0_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_U_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_U_0 = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
