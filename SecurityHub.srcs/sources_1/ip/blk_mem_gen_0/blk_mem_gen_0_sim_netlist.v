// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Oct  7 17:33:33 2023
// Host        : DESKTOP-48N5VA9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/29381/Documents/FPGAcode/template_camera/project_2.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.1309 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1000" *) 
  (* C_READ_DEPTH_B = "1000" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1000" *) 
  (* C_WRITE_DEPTH_B = "1000" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_2 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_0_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input [9:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0_blk_mem_gen_prim_width
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input [9:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_0_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input [9:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_68 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_69 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_70 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hBEF27B78BEEC4AE3BEED946DBEEC9A9BBEE6A7E9BEE7133BBEE57BC1BEE2C928),
    .INIT_01(256'hBF0093CBBEFC5D1EBEFEBE5ABEFC5CA1BEF6F782BEF7BD29BEF4EBBEBEF2A8DC),
    .INIT_02(256'hBF08798FBF0711BCBF07BDF9BF060B10BF0372F6BF03FF3EBF02BDA4BF01F243),
    .INIT_03(256'hBF10A9B5BF0EB9BEBF0F0E04BF0CC282BF0ACAAFBF0C4B11BF0A7F1CBF08FD5D),
    .INIT_04(256'hBF194DB1BF171C91BF17162ABF14F3AABF13E637BF149D74BF1219E0BF1107F8),
    .INIT_05(256'hBF214E55BF1E998DBF1EE502BF1DC143BF1CE28ABF1C07FCBF1922F1BF197122),
    .INIT_06(256'hBF2888E8BF26A959BF27A1D4BF25BFA2BF2450B5BF2428E0BF21C0D8BF221DAC),
    .INIT_07(256'hBF30FA77BF2F3CB7BF2F3F0CBF2CE93FBF2C4E22BF2C8283BF29D1A5BF2A1BCD),
    .INIT_08(256'hBF39099DBF36F4B3BF376EE7BF34DA2FBF346B57BF34847BBF31C142BF31B592),
    .INIT_09(256'hBF407D45BF3EF863BF3F6012BF3D8B74BF3C8EFFBF3C4F1EBF39EAE8BF3A7954),
    .INIT_0A(256'hBF489BD0BF47745DBF47778FBF44ED47BF452D12BF443EDBBF42062DBF4233F5),
    .INIT_0B(256'hBF507BFDBF4F85C8BF4F6837BF4CD92CBF4CADE6BF4C05FBBF4996B4BF4A8915),
    .INIT_0C(256'hBF580ED9BF57798CBF573FE1BF54AD29BF5500D4BF53C9FBBF5208B3BF52959F),
    .INIT_0D(256'hBF60229FBF5F77FDBF5F714DBF5CD877BF5D3107BF5C3CFEBF59DD86BF5A2E27),
    .INIT_0E(256'hBF684D48BF684CBBBF679F8BBF64F7BCBF653043BF63AF66BF62251DBF62B6E7),
    .INIT_0F(256'hBF704082BF6FB43FBF6F2606BF6CF5DCBF6D6D63BF6B5C43BF6A3F75BF6A5A59),
    .INIT_10(256'hBF77CB24BF77BF81BF76D884BF750565BF75A3CCBF73AB86BF721E00BF725565),
    .INIT_11(256'hBF7E3FBDBF7EBC41BF7DB6D5BF7C2BD9BF7CD410BF7B0620BF7AB56BBF7AA309),
    .INIT_12(256'hBF7CA3D9BF7E3AF5BF7EC5ADBF7E2BA7BF7FC176BF7E8320BF7EFA94BF800000),
    .INIT_13(256'hBF73156FBF754929BF769853BF77C4F2BF7A33BEBF79D0ABBF7B8D0FBF7C9C8D),
    .INIT_14(256'hBF66295DBF68994FBF6973B9BF6AFB01BF6D430ABF6E3386BF708B66BF726A79),
    .INIT_15(256'hBF592081BF5AEBF5BF5BDDD3BF5DB228BF5FE418BF60F793BF62BD3BBF64C025),
    .INIT_16(256'hBF4ED41EBF510A49BF514C33BF5281BCBF541D7BBF54ED97BF56AED5BF57E54C),
    .INIT_17(256'hBF48034CBF49069DBF4916F3BF4A88DCBF4BBAD6BF4C6198BF4D6DEABF4E33DD),
    .INIT_18(256'hBF40D490BF41F0A4BF429AB7BF43CD57BF447890BF44F21CBF460298BF4742F1),
    .INIT_19(256'hBF394ADBBF3AB7FFBF3B52F4BF3BFAA2BF3D2076BF3E3C6CBF3F9B5FBF3FFA76),
    .INIT_1A(256'hBF307F35BF313F91BF321236BF33FAC9BF3537B2BF366AA8BF36E5DEBF37CC64),
    .INIT_1B(256'hBF2765E4BF28A901BF29F93CBF2B603DBF2C005ABF2CDB91BF2E25F4BF2FBA54),
    .INIT_1C(256'hBF1E9D8FBF202E8DBF218B9BBF21F4F8BF228BF5BF24623BBF25A8DCBF266CAE),
    .INIT_1D(256'hBF16E13ABF17FB8FBF185C7ABF18FF62BF1ACCF1BF1C5224BF1C5C8FBF1D2DB9),
    .INIT_1E(256'hBF0F2C06BF0EE3E1BF0FE405BF112AA4BF126276BF13A8E4BF13F274BF152E90),
    .INIT_1F(256'hBF0630FDBF06B318BF07E514BF098958BF0AF917BF0BA5CFBF0BB493BF0E0770),
    .INIT_20(256'hBEFB8839BEFBA911BF00335ABF019711BF02372FBF025105BF03E4C8BF05C06E),
    .INIT_21(256'hBEEA2E7DBEEBC8AFBEF06195BEF24EB1BEF38E62BEF48286BEF73F22BEFB273E),
    .INIT_22(256'hBED9CC32BEDB820CBEE01D4FBEE21728BEE29E9ABEE3A479BEE7344EBEEB2165),
    .INIT_23(256'hBECB0182BECBD235BECF88E8BED24EDCBED3A977BED32B31BED6FAC9BEDB05F8),
    .INIT_24(256'hBEBAD1F0BEBC1677BEBEA4BBBEC1F2FABEC32064BEC35A22BEC6603FBECBCCD4),
    .INIT_25(256'hBEABD7C2BEAB5AB0BEACD6DABEAF6668BEB3668FBEB2E40BBEB4429ABEBA7DB3),
    .INIT_26(256'hBE99BC65BE9C69EFBE9B99A6BE9D7013BEA35A30BEA36E12BEA40710BEA832A7),
    .INIT_27(256'hBE86B85EBE8C2862BE8DF666BE8E2CA2BE91CFF3BE959A3ABE954E1EBE960A45),
    .INIT_28(256'hBE6FBC65BE764572BE7CDD45BE7E41F9BE804BB7BE8233F2BE8640D4BE863D57),
    .INIT_29(256'hBE53E998BE5695C5BE564969BE60A4A3BE63000ABE604487BE6B4CABBE720ADD),
    .INIT_2A(256'hBE2BE5A0BE397433BE37C994BE3A8EA0BE46CC3CBE46EF63BE4A29E2BE4F2CAE),
    .INIT_2B(256'hBE0E22BBBE14A54FBE18CCEDBE1CB14CBE1E45C4BE2193A3BE2BD0B1BE2BDEA6),
    .INIT_2C(256'hBDDEDA3DBDEA0696BDE64DD0BDF33C8DBE048F39BE008FDBBE079BF3BE0F7D43),
    .INIT_2D(256'hBD9DFFDFBDAB965ABDB279CBBDB46F88BDBFB954BDC571F7BDD18C0CBDCEA9CE),
    .INIT_2E(256'hBD3987B2BD555B96BD4C302CBD73CFC5BD885CD4BD809032BD95102CBD9E9875),
    .INIT_2F(256'hBC6D47A9BCA311F7BCB7D601BCE96F79BCEF216CBD06ED6FBD216E76BD1E0B83),
    .INIT_30(256'h3C9874583C03CA5B3C5057163B948344BAFDB36CBA0952F8BC0C26B9BC574BED),
    .INIT_31(256'h3D4257743D37D6BE3D30709E3D14C3CD3D0BAE603D04DEB03CB6A3E03CBE341F),
    .INIT_32(256'h3DA70D943D9A71F23D9802723D883E943D8607303D80700E3D67BA4C3D64171C),
    .INIT_33(256'h3DE566CC3DD910443DDA5A7C3DCB01163DC280BF3DBDCE723DB1F64E3DB000FC),
    .INIT_34(256'h3E0DDA4F3E0CD8133E0F57B73E02052A3E043F363E0141D83DEAB1883DF0EDF3),
    .INIT_35(256'h3E3224263E2DB4283E297C013E23D5143E24E08C3E1D9B7B3E1772223E1A5AB7),
    .INIT_36(256'h3E52F0DA3E52D9333E4C3EB73E423CD93E4729DB3E3F79FC3E37990C3E395B8A),
    .INIT_37(256'h3E721DF43E72B3803E6F47A43E637C093E6691F93E63066A3E59DBAD3E56A8A8),
    .INIT_38(256'h3E89374C3E8AAF3E3E87DFF53E8146573E835CBB3E82113F3E7DBD8C3E788604),
    .INIT_39(256'h3E990B993E99895B3E968F543E90D6E73E94E3713E9238883E8D28DA3E8B7DB8),
    .INIT_3A(256'h3EA939D03EA84F963EA4D84B3EA1FB463EA52C9E3E9F6E563E9BBFBC3E9C992D),
    .INIT_3B(256'h3EB51E5D3EB636623EB5824E3EB22C663EB171173EACC8603EACE6493EADE330),
    .INIT_3C(256'h3EC8C2FA3EC8322F3EC3BDA73EC13D443EC1DFF83EBEAA5B3EBD83023EBAEAB4),
    .INIT_3D(256'h3EDA506F3EDB038A3ED6C59E3ED4817A3ED255B43ECDA1FE3ECE19DC3ECC91E0),
    .INIT_3E(256'h3EEB5A343EEBD71B3EE955A33EE677333EE67B303EE0BC2D3EE09EAA3EDE17DA),
    .INIT_3F(256'h3EF8A4B13EFAFE693EF6FA433EF7B76B3EF5913F3EF25F933EF168063EF087E0),
    .INIT_40(256'h3F03EBCB3F035C623F0222C83F010FBA3F00DACF3EFE46F83EFF0D793EFD3388),
    .INIT_41(256'h3F0CFBAD3F0D0C5C3F0A99463F09A2823F0949643F0649063F07A9493F04CDCF),
    .INIT_42(256'h3F149DD93F15BED43F12A1753F13063B3F11C55B3F0FDC9E3F102E8A3F0E4024),
    .INIT_43(256'h3F1C23423F1E15173F194A163F1B56543F181EE13F185B843F16EC553F16AB74),
    .INIT_44(256'h3F2473BF3F268AE63F21B0683F241D713F2099373F218FBB3F1ED3613F1F3C2C),
    .INIT_45(256'h3F2D766A3F2D42C43F2A0B413F2B66DB3F284D8E3F28A4DB3F26D4D33F26BF68),
    .INIT_46(256'h3F374F923F33B1993F34A3463F32346F3F32506E3F2FBDE03F30BF793F2E11CA),
    .INIT_47(256'h3F3DB0863F3BA14C3F3BE6A63F39F9B73F3AEEA13F3673C93F3A262B3F3464B8),
    .INIT_48(256'h3F44A4B83F46727A3F417B423F44D55D3F4025E23F4132E53F3FB4693F3E026B),
    .INIT_49(256'h3F4F8EED3F4A862E3F4C684C3F49CFA13F4986503F47B2FD3F470C753F46E295),
    .INIT_4A(256'h3F559DA53F55B42D3F5167943F541EFF3F5069313F50A0E03F506CC33F4D031D),
    .INIT_4B(256'h3F5DC81C3F5B97523F5C2DEB3F59A8233F5A5AEC3F5832D23F5828CE3F567912),
    .INIT_4C(256'h3F6725E43F63664F3F6347233F63E9B63F609B673F62187C3F5EF85B3F5E9E9B),
    .INIT_4D(256'h3F6E00043F6CD50E3F6A98C33F6BA6663F68481A3F6877173F67932C3F648BC1),
    .INIT_4E(256'h3F76667D3F74C3A13F738AE13F7379303F70CF263F6FFA663F6FABBD3F6D3CB3),
    .INIT_4F(256'h3F7DB2633F7C55813F7B4EC53F7B16E53F7901113F78A4D13F77740D3F75C9E0),
    .INIT_50(256'h3F7F94973F7FBDFA3F8000003F7FF8183F7EAF713F7EED5A3F7E72C73F7D484B),
    .INIT_51(256'h3F77ADB53F7949DC3F79C9243F7B6FA83F7C00053F7D2B913F7D9A323F7E11B8),
    .INIT_52(256'h3F698D6D3F6C362E3F6CFA943F6EDFE93F7035B23F71FE2B3F7471E63F75838D),
    .INIT_53(256'h3F5CA80A3F5E0A8A3F60668B3F6082703F63E3E73F6475733F66966A3F689959),
    .INIT_54(256'h3F5577363F5382033F56FCF33F5705423F5766223F5B0F8F3F59A9913F5CCEA5),
    .INIT_55(256'h3F4B09983F4ED1523F4DE6423F506CDD3F5066D73F507A2E3F52E7E03F5188D5),
    .INIT_56(256'h3F4802523F454CEA3F48B9C73F47DEDC3F4911AE3F4B33983F49C1983F4DE407),
    .INIT_57(256'h3F3D8BE13F3F41C83F4002BE3F4075CB3F43222A3F41B1833F454B063F43012E),
    .INIT_58(256'h3F33C5423F37F0993F35BFF83F3A56CC3F37E5433F3C96DF3F3A5B7A3F3E28C8),
    .INIT_59(256'h3F2CA9333F2D9F803F2E26F03F2FF74C3F3016543F32B99B3F31A0EA3F356D9D),
    .INIT_5A(256'h3F255D493F2407333F273CCC3F25E0B33F28BE1C3F281FF13F2AD8973F2AC4C3),
    .INIT_5B(256'h3F1CE9E73F1BD7E03F1F2C253F1E37643F213CD53F2027353F2352CF3F21C2E4),
    .INIT_5C(256'h3F14158C3F1431983F1627E93F1580943F182EFF3F178FA13F1B110C3F19650C),
    .INIT_5D(256'h3F0BBBFE3F0D95A83F0DE6543F0F824F3F1015BC3F1162603F122C483F1279DD),
    .INIT_5E(256'h3F025F6F3F04A7DE3F0433D83F0725223F0686C13F095B9D3F0944763F0B6C99),
    .INIT_5F(256'h3EF725333EF7D0863EFA010F3EFC0AFB3EFCEFE03EFEF3143F0095703F018CE0),
    .INIT_60(256'h3EE7CDE53EE9ED873EEB12FC3EEE36883EEE70B53EF1659A3EF3BD043EF48351),
    .INIT_61(256'h3ED586F23ED794CA3ED947853EDC70BD3EDCF3B73EE145443EE33CA53EE65E2D),
    .INIT_62(256'h3EC312E03EC3CEDF3EC7514C3EC993AE3ECAB8FB3ECE12543ED03ADC3ED21648),
    .INIT_63(256'h3EB56B523EB6212C3EB7771E3EB878B83EB952BB3EBDA0643EBFDAD63EC05C4D),
    .INIT_64(256'h3EA7FDF03EA646823EA7DAC73EAB964F3EADA6143EAF6B273EAFCECD3EAFDD3E),
    .INIT_65(256'h3E96A3663E9536BD3E9934503E9D3E953E9E49FE3E9F22C23EA0B0E93EA40072),
    .INIT_66(256'h3E8551993E8437BB3E88BC543E8D683F3E8D044B3E8E5B033E90B7173E94CD16),
    .INIT_67(256'h3E6C56653E678FE33E6D73FC3E769AAA3E7935903E7B02A03E7CA4D63E84273D),
    .INIT_68(256'h3E4611F23E49D9DB3E4BCEC93E4FCBBC3E5777A73E5AC72D3E59BD3A3E621C38),
    .INIT_69(256'h3E250AE73E2730413E2EF97D3E2EB0523E3137503E3CDE3F3E3CA7753E3E2088),
    .INIT_6A(256'h3E062CEB3E07682A3E0D379E3E11E05B3E13DA1B3E18E9443E1CB3443E2229D6),
    .INIT_6B(256'h3DCEB55D3DCCBE833DDDD3B93DE3AD2D3DE6E03C3DFB255A3DF774E23E0008B6),
    .INIT_6C(256'h3D8ADA933D8EF6873DA182763D9FB1003DA8B4023DBA880E3DB607F83DC28B0F),
    .INIT_6D(256'h3D11671B3D1A84503D383BF43D373E823D51C1133D6C9AF93D6940D83D8817E0),
    .INIT_6E(256'h3BBD53913BD60E9F3C6426763C8E5F993C9E57493CBE94953CDD0AA63D038D81),
    .INIT_6F(256'hBCFE3637BCE844EABC94A206BCA78F20BC60D30BBBBE3F25BC06A15FBA8860AA),
    .INIT_70(256'hBD75A366BD63EEBDBD502CFEBD49F85EBD362294BD2A7975BD242B24BCFCC26C),
    .INIT_71(256'hBDC37456BDB5C73BBDA2629CBDA8572ABD9A8E81BD8B766EBD8B4574BD83B45C),
    .INIT_72(256'hBDF839ECBDF004A5BDE71F60BDE610EBBDD555ABBDD47C31BDD1B371BDBA92EB),
    .INIT_73(256'hBE221A41BE1AC633BE124D83BE16907CBE0BA196BE04EEB5BE07EEBCBE00792E),
    .INIT_74(256'hBE3DFE33BE3CC5ABBE3472C4BE32E2E5BE2C97FABE2D9835BE27B74BBE1FABFC),
    .INIT_75(256'hBE5FF538BE5864C8BE56BDF0BE56BA72BE4A322EBE4BAF37BE4B6BFBBE3E07A0),
    .INIT_76(256'hBE82C915BE7A4C6FBE73BC02BE78B81DBE6CA299BE698627BE68D2B5BE631282),
    .INIT_77(256'hBE915123BE8E8879BE8A72E1BE8A7CEDBE885F5ABE869278BE83D470BE8086D6),
    .INIT_78(256'hBEA08DF3BE9DEBB9BE9C2317BE9A51DFBE95E9DBBE983731BE9499EDBE8F818D),
    .INIT_79(256'hBEB0C0ADBEAC5B78BEAE534FBEAC182FBEA55BD7BEA71FF2BEA53E86BE9FB4E4),
    .INIT_7A(256'hBEC12789BEBC0F91BEBD3E56BEBB89C3BEB57603BEB74175BEB582C8BEB066A9),
    .INIT_7B(256'hBED136A5BECB9DECBECD6A66BECC3746BEC67E0ABEC6E9AEBEC4AB2FBEC2B0CD),
    .INIT_7C(256'hBEE1B162BEDC47BABEDD2EF5BEDBF79ABED65CD7BED6367FBED46D37BED22D73),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI(dina),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(douta),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_68 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_69 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_70 ,\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_0_blk_mem_gen_top
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input [9:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "10" *) (* C_ADDRB_WIDTH = "10" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.1309 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "1000" *) (* C_READ_DEPTH_B = "1000" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "32" *) (* C_READ_WIDTH_B = "32" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "1000" *) 
(* C_WRITE_DEPTH_B = "1000" *) (* C_WRITE_MODE_A = "READ_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_2
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [9:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [9:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_0_blk_mem_gen_v8_4_2_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_2_synth" *) 
module blk_mem_gen_0_blk_mem_gen_v8_4_2_synth
   (douta,
    clka,
    addra,
    dina,
    wea);
  output [31:0]douta;
  input clka;
  input [9:0]addra;
  input [31:0]dina;
  input [0:0]wea;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;

  blk_mem_gen_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .wea(wea));
endmodule
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
