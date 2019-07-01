//
// Generated by Bluespec Compiler, version 2018.10.beta1 (build e1df8052c, 2018-10-17)
//
// On Thu Jun 27 15:11:58 IST 2019
//
//
// Ports:
// Name                         I/O  size props
// RDY_status                     O     1 const
// statusreturn                   O     1 reg
// RDY_statusreturn               O     1 const
// RDY_writex                     O     1
// y1bankoutputread               O    32
// RDY_y1bankoutputread           O     1
// y2bankoutputread               O    32
// RDY_y2bankoutputread           O     1
// y3bankoutputread               O    32
// RDY_y3bankoutputread           O     1
// y4bankoutputread               O    32
// RDY_y4bankoutputread           O     1
// CLK                            I     1 clock
// RST_N                          I     1 reset
// status_stat                    I     1
// writex_x                       I    32
// EN_status                      I     1
// EN_writex                      I     1
// EN_statusreturn                I     1 unused
// EN_y1bankoutputread            I     1 unused
// EN_y2bankoutputread            I     1 unused
// EN_y3bankoutputread            I     1 unused
// EN_y4bankoutputread            I     1 unused
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkTop(CLK,
	     RST_N,

	     status_stat,
	     EN_status,
	     RDY_status,

	     EN_statusreturn,
	     statusreturn,
	     RDY_statusreturn,

	     writex_x,
	     EN_writex,
	     RDY_writex,

	     EN_y1bankoutputread,
	     y1bankoutputread,
	     RDY_y1bankoutputread,

	     EN_y2bankoutputread,
	     y2bankoutputread,
	     RDY_y2bankoutputread,

	     EN_y3bankoutputread,
	     y3bankoutputread,
	     RDY_y3bankoutputread,

	     EN_y4bankoutputread,
	     y4bankoutputread,
	     RDY_y4bankoutputread);
  input  CLK;
  input  RST_N;

  // action method status
  input  status_stat;
  input  EN_status;
  output RDY_status;

  // actionvalue method statusreturn
  input  EN_statusreturn;
  output statusreturn;
  output RDY_statusreturn;

  // action method writex
  input  [31 : 0] writex_x;
  input  EN_writex;
  output RDY_writex;

  // actionvalue method y1bankoutputread
  input  EN_y1bankoutputread;
  output [31 : 0] y1bankoutputread;
  output RDY_y1bankoutputread;

  // actionvalue method y2bankoutputread
  input  EN_y2bankoutputread;
  output [31 : 0] y2bankoutputread;
  output RDY_y2bankoutputread;

  // actionvalue method y3bankoutputread
  input  EN_y3bankoutputread;
  output [31 : 0] y3bankoutputread;
  output RDY_y3bankoutputread;

  // actionvalue method y4bankoutputread
  input  EN_y4bankoutputread;
  output [31 : 0] y4bankoutputread;
  output RDY_y4bankoutputread;

  // signals for module outputs
  wire [31 : 0] y1bankoutputread,
		y2bankoutputread,
		y3bankoutputread,
		y4bankoutputread;
  wire RDY_status,
       RDY_statusreturn,
       RDY_writex,
       RDY_y1bankoutputread,
       RDY_y2bankoutputread,
       RDY_y3bankoutputread,
       RDY_y4bankoutputread,
       statusreturn;

  // register rg_conv
  reg rg_conv;
  wire rg_conv$D_IN, rg_conv$EN;

  // register rg_convcount
  reg [6 : 0] rg_convcount;
  wire [6 : 0] rg_convcount$D_IN;
  wire rg_convcount$EN;

  // register rg_stat
  reg rg_stat;
  wire rg_stat$D_IN, rg_stat$EN;

  // register rg_wadd
  reg [4 : 0] rg_wadd;
  wire [4 : 0] rg_wadd$D_IN;
  wire rg_wadd$EN;

  // register rg_wstatus
  reg rg_wstatus;
  wire rg_wstatus$D_IN, rg_wstatus$EN;

  // register rg_xadd
  reg [4 : 0] rg_xadd;
  wire [4 : 0] rg_xadd$D_IN;
  wire rg_xadd$EN;

  // register rg_xwriadd
  reg [4 : 0] rg_xwriadd;
  wire [4 : 0] rg_xwriadd$D_IN;
  wire rg_xwriadd$EN;

  // register rg_xwricase
  reg [4 : 0] rg_xwricase;
  wire [4 : 0] rg_xwricase$D_IN;
  wire rg_xwricase$EN;

  // register rg_yadd
  reg [6 : 0] rg_yadd;
  wire [6 : 0] rg_yadd$D_IN;
  wire rg_yadd$EN;

  // register rg_ycount
  reg [5 : 0] rg_ycount;
  wire [5 : 0] rg_ycount$D_IN;
  wire rg_ycount$EN;

  // register rg_ywriadd
  reg [6 : 0] rg_ywriadd;
  wire [6 : 0] rg_ywriadd$D_IN;
  wire rg_ywriadd$EN;

  // register rg_ywricase
  reg [1 : 0] rg_ywricase;
  wire [1 : 0] rg_ywricase$D_IN;
  wire rg_ywricase$EN;

  // ports of submodule pefifo
  wire [31 : 0] pefifo$pearray_convs_x,
		pefifo$pearray_weighttran_x,
		pefifo$pearray_winput1_x,
		pefifo$pearray_winput2_x,
		pefifo$pearray_winput3_x,
		pefifo$pearray_winput4_x,
		pefifo$pearray_xinput1_x,
		pefifo$pearray_xinput2_x,
		pefifo$pearray_xinput3_x,
		pefifo$pearray_xinput4_x,
		pefifo$pearray_xinput5_x,
		pefifo$pearray_xinput6_x,
		pefifo$pearray_xinput7_x,
		pefifo$pearray_yinput1_x,
		pefifo$pearray_yinput2_x,
		pefifo$pearray_yinput3_x,
		pefifo$pearray_yinput4_x,
		pefifo$tr_conv_x,
		pefifo$tr_inputfifo_x,
		pefifo$tr_outfifo_x,
		pefifo$tr_weigh_x,
		pefifo$tr_weightfifo_x,
		pefifo$wfifoin1_x,
		pefifo$wfifoin2_x,
		pefifo$wfifoin3_x,
		pefifo$wfifoin4_x,
		pefifo$xfifoin1_x,
		pefifo$xfifoin2_x,
		pefifo$xfifoin3_x,
		pefifo$xfifoin4_x,
		pefifo$xfifoin5_x,
		pefifo$xfifoin6_x,
		pefifo$xfifoin7_x,
		pefifo$yfifoin1_x,
		pefifo$yfifoin2_x,
		pefifo$yfifoin3_x,
		pefifo$yfifoin4_x,
		pefifo$yfifoout1,
		pefifo$yfifoout2,
		pefifo$yfifoout3,
		pefifo$yfifoout4;
  wire pefifo$EN_pearray_convs,
       pefifo$EN_pearray_weighttran,
       pefifo$EN_pearray_winput1,
       pefifo$EN_pearray_winput2,
       pefifo$EN_pearray_winput3,
       pefifo$EN_pearray_winput4,
       pefifo$EN_pearray_xinput1,
       pefifo$EN_pearray_xinput2,
       pefifo$EN_pearray_xinput3,
       pefifo$EN_pearray_xinput4,
       pefifo$EN_pearray_xinput5,
       pefifo$EN_pearray_xinput6,
       pefifo$EN_pearray_xinput7,
       pefifo$EN_pearray_yinput1,
       pefifo$EN_pearray_yinput2,
       pefifo$EN_pearray_yinput3,
       pefifo$EN_pearray_yinput4,
       pefifo$EN_tr_conv,
       pefifo$EN_tr_inputfifo,
       pefifo$EN_tr_outfifo,
       pefifo$EN_tr_weigh,
       pefifo$EN_tr_weightfifo,
       pefifo$EN_wfifoin1,
       pefifo$EN_wfifoin2,
       pefifo$EN_wfifoin3,
       pefifo$EN_wfifoin4,
       pefifo$EN_xfifoin1,
       pefifo$EN_xfifoin2,
       pefifo$EN_xfifoin3,
       pefifo$EN_xfifoin4,
       pefifo$EN_xfifoin5,
       pefifo$EN_xfifoin6,
       pefifo$EN_xfifoin7,
       pefifo$EN_yfifoin1,
       pefifo$EN_yfifoin2,
       pefifo$EN_yfifoin3,
       pefifo$EN_yfifoin4,
       pefifo$EN_yfifoout1,
       pefifo$EN_yfifoout2,
       pefifo$EN_yfifoout3,
       pefifo$EN_yfifoout4,
       pefifo$RDY_wfifoin1,
       pefifo$RDY_wfifoin2,
       pefifo$RDY_wfifoin3,
       pefifo$RDY_wfifoin4,
       pefifo$RDY_xfifoin1,
       pefifo$RDY_xfifoin2,
       pefifo$RDY_xfifoin3,
       pefifo$RDY_xfifoin4,
       pefifo$RDY_xfifoin5,
       pefifo$RDY_xfifoin6,
       pefifo$RDY_xfifoin7,
       pefifo$RDY_yfifoin1,
       pefifo$RDY_yfifoin2,
       pefifo$RDY_yfifoin3,
       pefifo$RDY_yfifoin4,
       pefifo$RDY_yfifoout1,
       pefifo$RDY_yfifoout2,
       pefifo$RDY_yfifoout3,
       pefifo$RDY_yfifoout4;

  // ports of submodule wbank
  wire [31 : 0] wbank$DIA, wbank$DIB, wbank$DOA;
  wire [4 : 0] wbank$ADDRA, wbank$ADDRB;
  wire wbank$ENA, wbank$ENB, wbank$WEA, wbank$WEB;

  // ports of submodule x1bank
  wire [31 : 0] x1bank$DIA, x1bank$DIB, x1bank$DOA;
  wire [4 : 0] x1bank$ADDRA, x1bank$ADDRB;
  wire x1bank$ENA, x1bank$ENB, x1bank$WEA, x1bank$WEB;

  // ports of submodule x2bank
  wire [31 : 0] x2bank$DIA, x2bank$DIB, x2bank$DOA;
  wire [4 : 0] x2bank$ADDRA, x2bank$ADDRB;
  wire x2bank$ENA, x2bank$ENB, x2bank$WEA, x2bank$WEB;

  // ports of submodule x3bank
  wire [31 : 0] x3bank$DIA, x3bank$DIB, x3bank$DOA;
  wire [4 : 0] x3bank$ADDRA, x3bank$ADDRB;
  wire x3bank$ENA, x3bank$ENB, x3bank$WEA, x3bank$WEB;

  // ports of submodule x4bank
  wire [31 : 0] x4bank$DIA, x4bank$DIB, x4bank$DOA;
  wire [4 : 0] x4bank$ADDRA, x4bank$ADDRB;
  wire x4bank$ENA, x4bank$ENB, x4bank$WEA, x4bank$WEB;

  // ports of submodule x5bank
  wire [31 : 0] x5bank$DIA, x5bank$DIB, x5bank$DOA;
  wire [4 : 0] x5bank$ADDRA, x5bank$ADDRB;
  wire x5bank$ENA, x5bank$ENB, x5bank$WEA, x5bank$WEB;

  // ports of submodule x6bank
  wire [31 : 0] x6bank$DIA, x6bank$DIB, x6bank$DOA;
  wire [4 : 0] x6bank$ADDRA, x6bank$ADDRB;
  wire x6bank$ENA, x6bank$ENB, x6bank$WEA, x6bank$WEB;

  // ports of submodule x7bank
  wire [31 : 0] x7bank$DIA, x7bank$DIB, x7bank$DOA;
  wire [4 : 0] x7bank$ADDRA, x7bank$ADDRB;
  wire x7bank$ENA, x7bank$ENB, x7bank$WEA, x7bank$WEB;

  // ports of submodule y1bank
  wire [31 : 0] y1bank$DIA, y1bank$DIB, y1bank$DOB;
  wire [6 : 0] y1bank$ADDRA, y1bank$ADDRB;
  wire y1bank$ENA, y1bank$ENB, y1bank$WEA, y1bank$WEB;

  // ports of submodule y2bank
  wire [31 : 0] y2bank$DIA, y2bank$DIB, y2bank$DOB;
  wire [6 : 0] y2bank$ADDRA, y2bank$ADDRB;
  wire y2bank$ENA, y2bank$ENB, y2bank$WEA, y2bank$WEB;

  // ports of submodule y3bank
  wire [31 : 0] y3bank$DIA, y3bank$DIB, y3bank$DOB;
  wire [6 : 0] y3bank$ADDRA, y3bank$ADDRB;
  wire y3bank$ENA, y3bank$ENB, y3bank$WEA, y3bank$WEB;

  // ports of submodule y4bank
  wire [31 : 0] y4bank$DIA, y4bank$DIB, y4bank$DOB;
  wire [6 : 0] y4bank$ADDRA, y4bank$ADDRB;
  wire y4bank$ENA, y4bank$ENB, y4bank$WEA, y4bank$WEB;

  // rule scheduling signals
  wire WILL_FIRE_RL_rl_fifoyenq,
       WILL_FIRE_RL_rl_schedulingconv,
       WILL_FIRE_RL_rl_schedulingweightdisable,
       WILL_FIRE_RL_rl_schedulingweightenable1,
       WILL_FIRE_RL_rl_weight,
       WILL_FIRE_RL_rl_weightenable2,
       WILL_FIRE_RL_rl_xinputenq,
       WILL_FIRE_RL_rl_xwriteend,
       WILL_FIRE_RL_rl_xwritestatus,
       WILL_FIRE_RL_rl_y1bankoutputput,
       WILL_FIRE_RL_rl_y2bankoutputput,
       WILL_FIRE_RL_rl_y3bankoutputput,
       WILL_FIRE_RL_rl_y4bankoutput,
       WILL_FIRE_RL_rl_youtputenq,
       WILL_FIRE_RL_rl_youtputwrite;

  // inputs to muxes for submodule ports
  wire [6 : 0] MUX_rg_convcount$write_1__VAL_1, MUX_rg_ywriadd$write_1__VAL_1;
  wire [4 : 0] MUX_rg_xwriadd$write_1__VAL_1, MUX_rg_xwricase$write_1__VAL_1;
  wire MUX_rg_ywriadd$write_1__SEL_1,
       MUX_x1bank$a_put_1__SEL_1,
       MUX_x2bank$a_put_1__SEL_1,
       MUX_x3bank$a_put_1__SEL_1,
       MUX_x4bank$a_put_1__SEL_1,
       MUX_x5bank$a_put_1__SEL_1,
       MUX_x6bank$a_put_1__SEL_1,
       MUX_x7bank$a_put_1__SEL_1;

  // remaining internal signals
  wire [1 : 0] x__h4227;
  wire NOT_rg_xadd_6_ULE_1_8___d19,
       NOT_rg_ywriadd_08_ULE_1_25___d126,
       pefifo_RDY_xfifoin7_AND_pefifo_RDY_xfifoin6_AN_ETC___d14,
       pefifo_RDY_yfifoin4__9_AND_pefifo_RDY_yfifoin3_ETC___d55;

  // action method status
  assign RDY_status = 1'd1 ;

  // actionvalue method statusreturn
  assign statusreturn = rg_stat ;
  assign RDY_statusreturn = 1'd1 ;

  // action method writex
  assign RDY_writex = rg_xwriadd < 5'd13 ;

  // actionvalue method y1bankoutputread
  assign y1bankoutputread = y1bank$DOB ;
  assign RDY_y1bankoutputread =
	     NOT_rg_ywriadd_08_ULE_1_25___d126 && rg_ywricase == 2'd0 ;

  // actionvalue method y2bankoutputread
  assign y2bankoutputread = y2bank$DOB ;
  assign RDY_y2bankoutputread =
	     NOT_rg_ywriadd_08_ULE_1_25___d126 && rg_ywricase == 2'd1 ;

  // actionvalue method y3bankoutputread
  assign y3bankoutputread = y3bank$DOB ;
  assign RDY_y3bankoutputread =
	     NOT_rg_ywriadd_08_ULE_1_25___d126 && rg_ywricase == 2'd2 ;

  // actionvalue method y4bankoutputread
  assign y4bankoutputread = y4bank$DOB ;
  assign RDY_y4bankoutputread =
	     NOT_rg_ywriadd_08_ULE_1_25___d126 && rg_ywricase == 2'd3 ;

  // submodule pefifo
  mkPEFifo pefifo(.CLK(CLK),
		  .RST_N(RST_N),
		  .pearray_convs_x(pefifo$pearray_convs_x),
		  .pearray_weighttran_x(pefifo$pearray_weighttran_x),
		  .pearray_winput1_x(pefifo$pearray_winput1_x),
		  .pearray_winput2_x(pefifo$pearray_winput2_x),
		  .pearray_winput3_x(pefifo$pearray_winput3_x),
		  .pearray_winput4_x(pefifo$pearray_winput4_x),
		  .pearray_xinput1_x(pefifo$pearray_xinput1_x),
		  .pearray_xinput2_x(pefifo$pearray_xinput2_x),
		  .pearray_xinput3_x(pefifo$pearray_xinput3_x),
		  .pearray_xinput4_x(pefifo$pearray_xinput4_x),
		  .pearray_xinput5_x(pefifo$pearray_xinput5_x),
		  .pearray_xinput6_x(pefifo$pearray_xinput6_x),
		  .pearray_xinput7_x(pefifo$pearray_xinput7_x),
		  .pearray_yinput1_x(pefifo$pearray_yinput1_x),
		  .pearray_yinput2_x(pefifo$pearray_yinput2_x),
		  .pearray_yinput3_x(pefifo$pearray_yinput3_x),
		  .pearray_yinput4_x(pefifo$pearray_yinput4_x),
		  .tr_conv_x(pefifo$tr_conv_x),
		  .tr_inputfifo_x(pefifo$tr_inputfifo_x),
		  .tr_outfifo_x(pefifo$tr_outfifo_x),
		  .tr_weigh_x(pefifo$tr_weigh_x),
		  .tr_weightfifo_x(pefifo$tr_weightfifo_x),
		  .wfifoin1_x(pefifo$wfifoin1_x),
		  .wfifoin2_x(pefifo$wfifoin2_x),
		  .wfifoin3_x(pefifo$wfifoin3_x),
		  .wfifoin4_x(pefifo$wfifoin4_x),
		  .xfifoin1_x(pefifo$xfifoin1_x),
		  .xfifoin2_x(pefifo$xfifoin2_x),
		  .xfifoin3_x(pefifo$xfifoin3_x),
		  .xfifoin4_x(pefifo$xfifoin4_x),
		  .xfifoin5_x(pefifo$xfifoin5_x),
		  .xfifoin6_x(pefifo$xfifoin6_x),
		  .xfifoin7_x(pefifo$xfifoin7_x),
		  .yfifoin1_x(pefifo$yfifoin1_x),
		  .yfifoin2_x(pefifo$yfifoin2_x),
		  .yfifoin3_x(pefifo$yfifoin3_x),
		  .yfifoin4_x(pefifo$yfifoin4_x),
		  .EN_xfifoin1(pefifo$EN_xfifoin1),
		  .EN_xfifoin2(pefifo$EN_xfifoin2),
		  .EN_xfifoin3(pefifo$EN_xfifoin3),
		  .EN_xfifoin4(pefifo$EN_xfifoin4),
		  .EN_xfifoin5(pefifo$EN_xfifoin5),
		  .EN_xfifoin6(pefifo$EN_xfifoin6),
		  .EN_xfifoin7(pefifo$EN_xfifoin7),
		  .EN_yfifoin1(pefifo$EN_yfifoin1),
		  .EN_yfifoin2(pefifo$EN_yfifoin2),
		  .EN_yfifoin3(pefifo$EN_yfifoin3),
		  .EN_yfifoin4(pefifo$EN_yfifoin4),
		  .EN_yfifoout1(pefifo$EN_yfifoout1),
		  .EN_yfifoout2(pefifo$EN_yfifoout2),
		  .EN_yfifoout3(pefifo$EN_yfifoout3),
		  .EN_yfifoout4(pefifo$EN_yfifoout4),
		  .EN_wfifoin1(pefifo$EN_wfifoin1),
		  .EN_wfifoin2(pefifo$EN_wfifoin2),
		  .EN_wfifoin3(pefifo$EN_wfifoin3),
		  .EN_wfifoin4(pefifo$EN_wfifoin4),
		  .EN_tr_inputfifo(pefifo$EN_tr_inputfifo),
		  .EN_tr_outfifo(pefifo$EN_tr_outfifo),
		  .EN_tr_weightfifo(pefifo$EN_tr_weightfifo),
		  .EN_tr_weigh(pefifo$EN_tr_weigh),
		  .EN_tr_conv(pefifo$EN_tr_conv),
		  .EN_pearray_xinput1(pefifo$EN_pearray_xinput1),
		  .EN_pearray_xinput2(pefifo$EN_pearray_xinput2),
		  .EN_pearray_xinput3(pefifo$EN_pearray_xinput3),
		  .EN_pearray_xinput4(pefifo$EN_pearray_xinput4),
		  .EN_pearray_xinput5(pefifo$EN_pearray_xinput5),
		  .EN_pearray_xinput6(pefifo$EN_pearray_xinput6),
		  .EN_pearray_xinput7(pefifo$EN_pearray_xinput7),
		  .EN_pearray_yinput1(pefifo$EN_pearray_yinput1),
		  .EN_pearray_yinput2(pefifo$EN_pearray_yinput2),
		  .EN_pearray_yinput3(pefifo$EN_pearray_yinput3),
		  .EN_pearray_yinput4(pefifo$EN_pearray_yinput4),
		  .EN_pearray_winput1(pefifo$EN_pearray_winput1),
		  .EN_pearray_winput2(pefifo$EN_pearray_winput2),
		  .EN_pearray_winput3(pefifo$EN_pearray_winput3),
		  .EN_pearray_winput4(pefifo$EN_pearray_winput4),
		  .EN_pearray_weighttran(pefifo$EN_pearray_weighttran),
		  .EN_pearray_convs(pefifo$EN_pearray_convs),
		  .RDY_xfifoin1(pefifo$RDY_xfifoin1),
		  .RDY_xfifoin2(pefifo$RDY_xfifoin2),
		  .RDY_xfifoin3(pefifo$RDY_xfifoin3),
		  .RDY_xfifoin4(pefifo$RDY_xfifoin4),
		  .RDY_xfifoin5(pefifo$RDY_xfifoin5),
		  .RDY_xfifoin6(pefifo$RDY_xfifoin6),
		  .RDY_xfifoin7(pefifo$RDY_xfifoin7),
		  .RDY_yfifoin1(pefifo$RDY_yfifoin1),
		  .RDY_yfifoin2(pefifo$RDY_yfifoin2),
		  .RDY_yfifoin3(pefifo$RDY_yfifoin3),
		  .RDY_yfifoin4(pefifo$RDY_yfifoin4),
		  .yfifoout1(pefifo$yfifoout1),
		  .RDY_yfifoout1(pefifo$RDY_yfifoout1),
		  .yfifoout2(pefifo$yfifoout2),
		  .RDY_yfifoout2(pefifo$RDY_yfifoout2),
		  .yfifoout3(pefifo$yfifoout3),
		  .RDY_yfifoout3(pefifo$RDY_yfifoout3),
		  .yfifoout4(pefifo$yfifoout4),
		  .RDY_yfifoout4(pefifo$RDY_yfifoout4),
		  .RDY_wfifoin1(pefifo$RDY_wfifoin1),
		  .RDY_wfifoin2(pefifo$RDY_wfifoin2),
		  .RDY_wfifoin3(pefifo$RDY_wfifoin3),
		  .RDY_wfifoin4(pefifo$RDY_wfifoin4),
		  .RDY_tr_inputfifo(),
		  .RDY_tr_outfifo(),
		  .RDY_tr_weightfifo(),
		  .RDY_tr_weigh(),
		  .RDY_tr_conv(),
		  .tr_convout(),
		  .RDY_tr_convout(),
		  .RDY_pearray_xinput1(),
		  .RDY_pearray_xinput2(),
		  .RDY_pearray_xinput3(),
		  .RDY_pearray_xinput4(),
		  .RDY_pearray_xinput5(),
		  .RDY_pearray_xinput6(),
		  .RDY_pearray_xinput7(),
		  .RDY_pearray_yinput1(),
		  .RDY_pearray_yinput2(),
		  .RDY_pearray_yinput3(),
		  .RDY_pearray_yinput4(),
		  .RDY_pearray_winput1(),
		  .RDY_pearray_winput2(),
		  .RDY_pearray_winput3(),
		  .RDY_pearray_winput4(),
		  .pearray_youtput1(),
		  .RDY_pearray_youtput1(),
		  .pearray_youtput2(),
		  .RDY_pearray_youtput2(),
		  .pearray_youtput3(),
		  .RDY_pearray_youtput3(),
		  .pearray_youtput4(),
		  .RDY_pearray_youtput4(),
		  .RDY_pearray_weighttran(),
		  .RDY_pearray_convs());

  // submodule wbank
  BRAM2 #(.PIPELINED(1'd0),
	  .ADDR_WIDTH(32'd5),
	  .DATA_WIDTH(32'd32),
	  .MEMSIZE(6'd32)) wbank(.CLKA(CLK),
				 .CLKB(CLK),
				 .ADDRA(wbank$ADDRA),
				 .ADDRB(wbank$ADDRB),
				 .DIA(wbank$DIA),
				 .DIB(wbank$DIB),
				 .WEA(wbank$WEA),
				 .WEB(wbank$WEB),
				 .ENA(wbank$ENA),
				 .ENB(wbank$ENB),
				 .DOA(wbank$DOA),
				 .DOB());

  // submodule x1bank
  BRAM2 #(.PIPELINED(1'd1),
	  .ADDR_WIDTH(32'd5),
	  .DATA_WIDTH(32'd32),
	  .MEMSIZE(6'd32)) x1bank(.CLKA(CLK),
				  .CLKB(CLK),
				  .ADDRA(x1bank$ADDRA),
				  .ADDRB(x1bank$ADDRB),
				  .DIA(x1bank$DIA),
				  .DIB(x1bank$DIB),
				  .WEA(x1bank$WEA),
				  .WEB(x1bank$WEB),
				  .ENA(x1bank$ENA),
				  .ENB(x1bank$ENB),
				  .DOA(x1bank$DOA),
				  .DOB());

  // submodule x2bank
  BRAM2 #(.PIPELINED(1'd1),
	  .ADDR_WIDTH(32'd5),
	  .DATA_WIDTH(32'd32),
	  .MEMSIZE(6'd32)) x2bank(.CLKA(CLK),
				  .CLKB(CLK),
				  .ADDRA(x2bank$ADDRA),
				  .ADDRB(x2bank$ADDRB),
				  .DIA(x2bank$DIA),
				  .DIB(x2bank$DIB),
				  .WEA(x2bank$WEA),
				  .WEB(x2bank$WEB),
				  .ENA(x2bank$ENA),
				  .ENB(x2bank$ENB),
				  .DOA(x2bank$DOA),
				  .DOB());

  // submodule x3bank
  BRAM2 #(.PIPELINED(1'd1),
	  .ADDR_WIDTH(32'd5),
	  .DATA_WIDTH(32'd32),
	  .MEMSIZE(6'd32)) x3bank(.CLKA(CLK),
				  .CLKB(CLK),
				  .ADDRA(x3bank$ADDRA),
				  .ADDRB(x3bank$ADDRB),
				  .DIA(x3bank$DIA),
				  .DIB(x3bank$DIB),
				  .WEA(x3bank$WEA),
				  .WEB(x3bank$WEB),
				  .ENA(x3bank$ENA),
				  .ENB(x3bank$ENB),
				  .DOA(x3bank$DOA),
				  .DOB());

  // submodule x4bank
  BRAM2 #(.PIPELINED(1'd1),
	  .ADDR_WIDTH(32'd5),
	  .DATA_WIDTH(32'd32),
	  .MEMSIZE(6'd32)) x4bank(.CLKA(CLK),
				  .CLKB(CLK),
				  .ADDRA(x4bank$ADDRA),
				  .ADDRB(x4bank$ADDRB),
				  .DIA(x4bank$DIA),
				  .DIB(x4bank$DIB),
				  .WEA(x4bank$WEA),
				  .WEB(x4bank$WEB),
				  .ENA(x4bank$ENA),
				  .ENB(x4bank$ENB),
				  .DOA(x4bank$DOA),
				  .DOB());

  // submodule x5bank
  BRAM2 #(.PIPELINED(1'd1),
	  .ADDR_WIDTH(32'd5),
	  .DATA_WIDTH(32'd32),
	  .MEMSIZE(6'd32)) x5bank(.CLKA(CLK),
				  .CLKB(CLK),
				  .ADDRA(x5bank$ADDRA),
				  .ADDRB(x5bank$ADDRB),
				  .DIA(x5bank$DIA),
				  .DIB(x5bank$DIB),
				  .WEA(x5bank$WEA),
				  .WEB(x5bank$WEB),
				  .ENA(x5bank$ENA),
				  .ENB(x5bank$ENB),
				  .DOA(x5bank$DOA),
				  .DOB());

  // submodule x6bank
  BRAM2 #(.PIPELINED(1'd1),
	  .ADDR_WIDTH(32'd5),
	  .DATA_WIDTH(32'd32),
	  .MEMSIZE(6'd32)) x6bank(.CLKA(CLK),
				  .CLKB(CLK),
				  .ADDRA(x6bank$ADDRA),
				  .ADDRB(x6bank$ADDRB),
				  .DIA(x6bank$DIA),
				  .DIB(x6bank$DIB),
				  .WEA(x6bank$WEA),
				  .WEB(x6bank$WEB),
				  .ENA(x6bank$ENA),
				  .ENB(x6bank$ENB),
				  .DOA(x6bank$DOA),
				  .DOB());

  // submodule x7bank
  BRAM2 #(.PIPELINED(1'd1),
	  .ADDR_WIDTH(32'd5),
	  .DATA_WIDTH(32'd32),
	  .MEMSIZE(6'd32)) x7bank(.CLKA(CLK),
				  .CLKB(CLK),
				  .ADDRA(x7bank$ADDRA),
				  .ADDRB(x7bank$ADDRB),
				  .DIA(x7bank$DIA),
				  .DIB(x7bank$DIB),
				  .WEA(x7bank$WEA),
				  .WEB(x7bank$WEB),
				  .ENA(x7bank$ENA),
				  .ENB(x7bank$ENB),
				  .DOA(x7bank$DOA),
				  .DOB());

  // submodule y1bank
  BRAM2 #(.PIPELINED(1'd1),
	  .ADDR_WIDTH(32'd7),
	  .DATA_WIDTH(32'd32),
	  .MEMSIZE(8'd128)) y1bank(.CLKA(CLK),
				   .CLKB(CLK),
				   .ADDRA(y1bank$ADDRA),
				   .ADDRB(y1bank$ADDRB),
				   .DIA(y1bank$DIA),
				   .DIB(y1bank$DIB),
				   .WEA(y1bank$WEA),
				   .WEB(y1bank$WEB),
				   .ENA(y1bank$ENA),
				   .ENB(y1bank$ENB),
				   .DOA(),
				   .DOB(y1bank$DOB));

  // submodule y2bank
  BRAM2 #(.PIPELINED(1'd1),
	  .ADDR_WIDTH(32'd7),
	  .DATA_WIDTH(32'd32),
	  .MEMSIZE(8'd128)) y2bank(.CLKA(CLK),
				   .CLKB(CLK),
				   .ADDRA(y2bank$ADDRA),
				   .ADDRB(y2bank$ADDRB),
				   .DIA(y2bank$DIA),
				   .DIB(y2bank$DIB),
				   .WEA(y2bank$WEA),
				   .WEB(y2bank$WEB),
				   .ENA(y2bank$ENA),
				   .ENB(y2bank$ENB),
				   .DOA(),
				   .DOB(y2bank$DOB));

  // submodule y3bank
  BRAM2 #(.PIPELINED(1'd1),
	  .ADDR_WIDTH(32'd7),
	  .DATA_WIDTH(32'd32),
	  .MEMSIZE(8'd128)) y3bank(.CLKA(CLK),
				   .CLKB(CLK),
				   .ADDRA(y3bank$ADDRA),
				   .ADDRB(y3bank$ADDRB),
				   .DIA(y3bank$DIA),
				   .DIB(y3bank$DIB),
				   .WEA(y3bank$WEA),
				   .WEB(y3bank$WEB),
				   .ENA(y3bank$ENA),
				   .ENB(y3bank$ENB),
				   .DOA(),
				   .DOB(y3bank$DOB));

  // submodule y4bank
  BRAM2 #(.PIPELINED(1'd1),
	  .ADDR_WIDTH(32'd7),
	  .DATA_WIDTH(32'd32),
	  .MEMSIZE(8'd128)) y4bank(.CLKA(CLK),
				   .CLKB(CLK),
				   .ADDRA(y4bank$ADDRA),
				   .ADDRB(y4bank$ADDRB),
				   .DIA(y4bank$DIA),
				   .DIB(y4bank$DIB),
				   .WEA(y4bank$WEA),
				   .WEB(y4bank$WEB),
				   .ENA(y4bank$ENA),
				   .ENB(y4bank$ENB),
				   .DOA(),
				   .DOB(y4bank$DOB));

  // rule RL_rl_xinputenq
  assign WILL_FIRE_RL_rl_xinputenq =
	     pefifo_RDY_xfifoin7_AND_pefifo_RDY_xfifoin6_AN_ETC___d14 &&
	     rg_stat &&
	     !EN_writex ;

  // rule RL_rl_weight
  assign WILL_FIRE_RL_rl_weight =
	     pefifo$RDY_wfifoin4 && pefifo$RDY_wfifoin1 &&
	     pefifo$RDY_wfifoin2 &&
	     pefifo$RDY_wfifoin3 &&
	     rg_stat ;

  // rule RL_rl_youtputwrite
  assign WILL_FIRE_RL_rl_youtputwrite =
	     pefifo$RDY_yfifoout4 && pefifo$RDY_yfifoout3 &&
	     pefifo$RDY_yfifoout2 &&
	     pefifo$RDY_yfifoout1 &&
	     rg_ycount == 6'd53 &&
	     rg_stat ;

  // rule RL_rl_schedulingconv
  assign WILL_FIRE_RL_rl_schedulingconv = rg_conv && rg_stat ;

  // rule RL_rl_schedulingweightdisable
  assign WILL_FIRE_RL_rl_schedulingweightdisable = rg_wstatus && rg_stat ;

  // rule RL_rl_schedulingweightenable1
  assign WILL_FIRE_RL_rl_schedulingweightenable1 =
	     rg_ycount == 6'd0 && rg_stat ;

  // rule RL_rl_weightenable2
  assign WILL_FIRE_RL_rl_weightenable2 =
	     rg_convcount == 7'd13 && rg_ycount != 6'd53 && rg_stat &&
	     !WILL_FIRE_RL_rl_schedulingconv ;

  // rule RL_rl_fifoyenq
  assign WILL_FIRE_RL_rl_fifoyenq =
	     pefifo_RDY_yfifoin4__9_AND_pefifo_RDY_yfifoin3_ETC___d55 &&
	     rg_ycount < 6'd13 &&
	     rg_stat ;

  // rule RL_rl_youtputenq
  assign WILL_FIRE_RL_rl_youtputenq =
	     pefifo$RDY_yfifoout4 && pefifo$RDY_yfifoout3 &&
	     pefifo$RDY_yfifoout2 &&
	     pefifo$RDY_yfifoout1 &&
	     pefifo_RDY_yfifoin4__9_AND_pefifo_RDY_yfifoin3_ETC___d55 &&
	     rg_ycount > 6'd12 &&
	     rg_ycount < 6'd53 &&
	     rg_stat ;

  // rule RL_rl_xwritestatus
  assign WILL_FIRE_RL_rl_xwritestatus =
	     !rg_stat && rg_xwriadd == 5'd13 && rg_xwricase != 5'd6 ;

  // rule RL_rl_xwriteend
  assign WILL_FIRE_RL_rl_xwriteend =
	     !rg_stat && rg_xwriadd == 5'd13 && rg_xwricase == 5'd6 ;

  // rule RL_rl_y1bankoutputput
  assign WILL_FIRE_RL_rl_y1bankoutputput =
	     rg_ywricase == 2'd0 && rg_ywriadd != 7'd54 ;

  // rule RL_rl_y2bankoutputput
  assign WILL_FIRE_RL_rl_y2bankoutputput =
	     rg_ywricase == 2'd1 && rg_ywriadd != 7'd54 ;

  // rule RL_rl_y3bankoutputput
  assign WILL_FIRE_RL_rl_y3bankoutputput =
	     rg_ywricase == 2'd2 && rg_ywriadd != 7'd54 ;

  // rule RL_rl_y4bankoutput
  assign WILL_FIRE_RL_rl_y4bankoutput =
	     rg_ywricase == 2'd3 && rg_ywriadd != 7'd54 ;

  // inputs to muxes for submodule ports
  assign MUX_rg_ywriadd$write_1__SEL_1 =
	     WILL_FIRE_RL_rl_y4bankoutput ||
	     WILL_FIRE_RL_rl_y3bankoutputput ||
	     WILL_FIRE_RL_rl_y2bankoutputput ||
	     WILL_FIRE_RL_rl_y1bankoutputput ;
  assign MUX_x1bank$a_put_1__SEL_1 = EN_writex && rg_xwricase == 5'd0 ;
  assign MUX_x2bank$a_put_1__SEL_1 = EN_writex && rg_xwricase == 5'd1 ;
  assign MUX_x3bank$a_put_1__SEL_1 = EN_writex && rg_xwricase == 5'd2 ;
  assign MUX_x4bank$a_put_1__SEL_1 = EN_writex && rg_xwricase == 5'd3 ;
  assign MUX_x5bank$a_put_1__SEL_1 = EN_writex && rg_xwricase == 5'd4 ;
  assign MUX_x6bank$a_put_1__SEL_1 = EN_writex && rg_xwricase == 5'd5 ;
  assign MUX_x7bank$a_put_1__SEL_1 = EN_writex && rg_xwricase == 5'd6 ;
  assign MUX_rg_convcount$write_1__VAL_1 = rg_convcount + 7'd1 ;
  assign MUX_rg_xwriadd$write_1__VAL_1 = rg_xwriadd + 5'd1 ;
  assign MUX_rg_xwricase$write_1__VAL_1 = rg_xwricase + 5'd1 ;
  assign MUX_rg_ywriadd$write_1__VAL_1 = rg_ywriadd + 7'd1 ;

  // register rg_conv
  assign rg_conv$D_IN = !WILL_FIRE_RL_rl_weightenable2 ;
  assign rg_conv$EN =
	     WILL_FIRE_RL_rl_weightenable2 ||
	     WILL_FIRE_RL_rl_schedulingweightdisable ;

  // register rg_convcount
  assign rg_convcount$D_IN =
	     WILL_FIRE_RL_rl_schedulingconv ?
	       MUX_rg_convcount$write_1__VAL_1 :
	       7'd0 ;
  assign rg_convcount$EN =
	     WILL_FIRE_RL_rl_schedulingconv || WILL_FIRE_RL_rl_weightenable2 ;

  // register rg_stat
  assign rg_stat$D_IN = !EN_status || status_stat ;
  assign rg_stat$EN = EN_status || WILL_FIRE_RL_rl_xwriteend ;

  // register rg_wadd
  assign rg_wadd$D_IN = rg_wadd + 5'd1 ;
  assign rg_wadd$EN = WILL_FIRE_RL_rl_weight ;

  // register rg_wstatus
  assign rg_wstatus$D_IN =
	     WILL_FIRE_RL_rl_weightenable2 ||
	     WILL_FIRE_RL_rl_schedulingweightenable1 ;
  assign rg_wstatus$EN =
	     WILL_FIRE_RL_rl_schedulingweightdisable ||
	     WILL_FIRE_RL_rl_weightenable2 ||
	     WILL_FIRE_RL_rl_schedulingweightenable1 ;

  // register rg_xadd
  assign rg_xadd$D_IN = rg_xadd + 5'd1 ;
  assign rg_xadd$EN = WILL_FIRE_RL_rl_xinputenq ;

  // register rg_xwriadd
  assign rg_xwriadd$D_IN = EN_writex ? MUX_rg_xwriadd$write_1__VAL_1 : 5'd0 ;
  assign rg_xwriadd$EN =
	     EN_writex || WILL_FIRE_RL_rl_xwriteend ||
	     WILL_FIRE_RL_rl_xwritestatus ;

  // register rg_xwricase
  assign rg_xwricase$D_IN =
	     WILL_FIRE_RL_rl_xwritestatus ?
	       MUX_rg_xwricase$write_1__VAL_1 :
	       5'd0 ;
  assign rg_xwricase$EN =
	     WILL_FIRE_RL_rl_xwritestatus || WILL_FIRE_RL_rl_xwriteend ;

  // register rg_yadd
  assign rg_yadd$D_IN = 7'h0 ;
  assign rg_yadd$EN = 1'b0 ;

  // register rg_ycount
  assign rg_ycount$D_IN = rg_ycount + 6'd1 ;
  assign rg_ycount$EN =
	     WILL_FIRE_RL_rl_youtputenq || WILL_FIRE_RL_rl_fifoyenq ;

  // register rg_ywriadd
  assign rg_ywriadd$D_IN =
	     MUX_rg_ywriadd$write_1__SEL_1 ?
	       MUX_rg_ywriadd$write_1__VAL_1 :
	       7'd0 ;
  assign rg_ywriadd$EN =
	     WILL_FIRE_RL_rl_y4bankoutput ||
	     WILL_FIRE_RL_rl_y3bankoutputput ||
	     WILL_FIRE_RL_rl_y2bankoutputput ||
	     WILL_FIRE_RL_rl_y1bankoutputput ||
	     rg_ywriadd == 7'd54 ;

  // register rg_ywricase
  assign rg_ywricase$D_IN = (rg_ywricase == 2'd3) ? 2'd0 : x__h4227 ;
  assign rg_ywricase$EN = rg_ywriadd == 7'd54 ;

  // submodule pefifo
  assign pefifo$pearray_convs_x = 32'h0 ;
  assign pefifo$pearray_weighttran_x = 32'h0 ;
  assign pefifo$pearray_winput1_x = 32'h0 ;
  assign pefifo$pearray_winput2_x = 32'h0 ;
  assign pefifo$pearray_winput3_x = 32'h0 ;
  assign pefifo$pearray_winput4_x = 32'h0 ;
  assign pefifo$pearray_xinput1_x = 32'h0 ;
  assign pefifo$pearray_xinput2_x = 32'h0 ;
  assign pefifo$pearray_xinput3_x = 32'h0 ;
  assign pefifo$pearray_xinput4_x = 32'h0 ;
  assign pefifo$pearray_xinput5_x = 32'h0 ;
  assign pefifo$pearray_xinput6_x = 32'h0 ;
  assign pefifo$pearray_xinput7_x = 32'h0 ;
  assign pefifo$pearray_yinput1_x = 32'h0 ;
  assign pefifo$pearray_yinput2_x = 32'h0 ;
  assign pefifo$pearray_yinput3_x = 32'h0 ;
  assign pefifo$pearray_yinput4_x = 32'h0 ;
  assign pefifo$tr_conv_x = WILL_FIRE_RL_rl_weightenable2 ? 32'd0 : 32'd1 ;
  assign pefifo$tr_inputfifo_x = 32'd1 ;
  assign pefifo$tr_outfifo_x = 32'd1 ;
  assign pefifo$tr_weigh_x =
	     (WILL_FIRE_RL_rl_weightenable2 ||
	      WILL_FIRE_RL_rl_schedulingweightenable1) ?
	       32'd1 :
	       32'd0 ;
  assign pefifo$tr_weightfifo_x = 32'd1 ;
  assign pefifo$wfifoin1_x = wbank$DOA ;
  assign pefifo$wfifoin2_x = wbank$DOA ;
  assign pefifo$wfifoin3_x = wbank$DOA ;
  assign pefifo$wfifoin4_x = wbank$DOA ;
  assign pefifo$xfifoin1_x = x1bank$DOA ;
  assign pefifo$xfifoin2_x = x2bank$DOA ;
  assign pefifo$xfifoin3_x = x3bank$DOA ;
  assign pefifo$xfifoin4_x = x4bank$DOA ;
  assign pefifo$xfifoin5_x = x5bank$DOA ;
  assign pefifo$xfifoin6_x = x6bank$DOA ;
  assign pefifo$xfifoin7_x = x7bank$DOA ;
  assign pefifo$yfifoin1_x =
	     WILL_FIRE_RL_rl_youtputenq ? pefifo$yfifoout1 : 32'd0 ;
  assign pefifo$yfifoin2_x =
	     WILL_FIRE_RL_rl_youtputenq ? pefifo$yfifoout2 : 32'd0 ;
  assign pefifo$yfifoin3_x =
	     WILL_FIRE_RL_rl_youtputenq ? pefifo$yfifoout3 : 32'd0 ;
  assign pefifo$yfifoin4_x =
	     WILL_FIRE_RL_rl_youtputenq ? pefifo$yfifoout4 : 32'd0 ;
  assign pefifo$EN_xfifoin1 =
	     WILL_FIRE_RL_rl_xinputenq && NOT_rg_xadd_6_ULE_1_8___d19 ;
  assign pefifo$EN_xfifoin2 =
	     WILL_FIRE_RL_rl_xinputenq && NOT_rg_xadd_6_ULE_1_8___d19 ;
  assign pefifo$EN_xfifoin3 =
	     WILL_FIRE_RL_rl_xinputenq && NOT_rg_xadd_6_ULE_1_8___d19 ;
  assign pefifo$EN_xfifoin4 =
	     WILL_FIRE_RL_rl_xinputenq && NOT_rg_xadd_6_ULE_1_8___d19 ;
  assign pefifo$EN_xfifoin5 =
	     WILL_FIRE_RL_rl_xinputenq && NOT_rg_xadd_6_ULE_1_8___d19 ;
  assign pefifo$EN_xfifoin6 =
	     WILL_FIRE_RL_rl_xinputenq && NOT_rg_xadd_6_ULE_1_8___d19 ;
  assign pefifo$EN_xfifoin7 =
	     WILL_FIRE_RL_rl_xinputenq && NOT_rg_xadd_6_ULE_1_8___d19 ;
  assign pefifo$EN_yfifoin1 =
	     WILL_FIRE_RL_rl_youtputenq || WILL_FIRE_RL_rl_fifoyenq ;
  assign pefifo$EN_yfifoin2 =
	     WILL_FIRE_RL_rl_youtputenq || WILL_FIRE_RL_rl_fifoyenq ;
  assign pefifo$EN_yfifoin3 =
	     WILL_FIRE_RL_rl_youtputenq || WILL_FIRE_RL_rl_fifoyenq ;
  assign pefifo$EN_yfifoin4 =
	     WILL_FIRE_RL_rl_youtputenq || WILL_FIRE_RL_rl_fifoyenq ;
  assign pefifo$EN_yfifoout1 =
	     WILL_FIRE_RL_rl_youtputwrite || WILL_FIRE_RL_rl_youtputenq ;
  assign pefifo$EN_yfifoout2 =
	     WILL_FIRE_RL_rl_youtputwrite || WILL_FIRE_RL_rl_youtputenq ;
  assign pefifo$EN_yfifoout3 =
	     WILL_FIRE_RL_rl_youtputwrite || WILL_FIRE_RL_rl_youtputenq ;
  assign pefifo$EN_yfifoout4 =
	     WILL_FIRE_RL_rl_youtputwrite || WILL_FIRE_RL_rl_youtputenq ;
  assign pefifo$EN_wfifoin1 = WILL_FIRE_RL_rl_weight && rg_wadd[1:0] == 2'd1 ;
  assign pefifo$EN_wfifoin2 = WILL_FIRE_RL_rl_weight && rg_wadd[1:0] == 2'd2 ;
  assign pefifo$EN_wfifoin3 = WILL_FIRE_RL_rl_weight && rg_wadd[1:0] == 2'd3 ;
  assign pefifo$EN_wfifoin4 =
	     WILL_FIRE_RL_rl_weight && rg_wadd != 5'd0 &&
	     rg_wadd[1:0] == 2'd0 ;
  assign pefifo$EN_tr_inputfifo = rg_stat ;
  assign pefifo$EN_tr_outfifo = rg_stat ;
  assign pefifo$EN_tr_weightfifo = rg_stat ;
  assign pefifo$EN_tr_weigh =
	     WILL_FIRE_RL_rl_schedulingweightdisable ||
	     WILL_FIRE_RL_rl_weightenable2 ||
	     WILL_FIRE_RL_rl_schedulingweightenable1 ;
  assign pefifo$EN_tr_conv =
	     WILL_FIRE_RL_rl_weightenable2 ||
	     WILL_FIRE_RL_rl_schedulingweightdisable ;
  assign pefifo$EN_pearray_xinput1 = 1'b0 ;
  assign pefifo$EN_pearray_xinput2 = 1'b0 ;
  assign pefifo$EN_pearray_xinput3 = 1'b0 ;
  assign pefifo$EN_pearray_xinput4 = 1'b0 ;
  assign pefifo$EN_pearray_xinput5 = 1'b0 ;
  assign pefifo$EN_pearray_xinput6 = 1'b0 ;
  assign pefifo$EN_pearray_xinput7 = 1'b0 ;
  assign pefifo$EN_pearray_yinput1 = 1'b0 ;
  assign pefifo$EN_pearray_yinput2 = 1'b0 ;
  assign pefifo$EN_pearray_yinput3 = 1'b0 ;
  assign pefifo$EN_pearray_yinput4 = 1'b0 ;
  assign pefifo$EN_pearray_winput1 = 1'b0 ;
  assign pefifo$EN_pearray_winput2 = 1'b0 ;
  assign pefifo$EN_pearray_winput3 = 1'b0 ;
  assign pefifo$EN_pearray_winput4 = 1'b0 ;
  assign pefifo$EN_pearray_weighttran = 1'b0 ;
  assign pefifo$EN_pearray_convs = 1'b0 ;

  // submodule wbank
  assign wbank$ADDRA = rg_wadd ;
  assign wbank$ADDRB = 5'h0 ;
  assign wbank$DIA = 32'hAAAAAAAA /* unspecified value */  ;
  assign wbank$DIB = 32'h0 ;
  assign wbank$WEA = 1'd0 ;
  assign wbank$WEB = 1'b0 ;
  assign wbank$ENA = WILL_FIRE_RL_rl_weight ;
  assign wbank$ENB = 1'b0 ;

  // submodule x1bank
  assign x1bank$ADDRA = MUX_x1bank$a_put_1__SEL_1 ? rg_xwriadd : rg_xadd ;
  assign x1bank$ADDRB = 5'h0 ;
  assign x1bank$DIA =
	     MUX_x1bank$a_put_1__SEL_1 ?
	       writex_x :
	       32'hAAAAAAAA /* unspecified value */  ;
  assign x1bank$DIB = 32'h0 ;
  assign x1bank$WEA = MUX_x1bank$a_put_1__SEL_1 ;
  assign x1bank$WEB = 1'b0 ;
  assign x1bank$ENA =
	     EN_writex && rg_xwricase == 5'd0 || WILL_FIRE_RL_rl_xinputenq ;
  assign x1bank$ENB = 1'b0 ;

  // submodule x2bank
  assign x2bank$ADDRA = MUX_x2bank$a_put_1__SEL_1 ? rg_xwriadd : rg_xadd ;
  assign x2bank$ADDRB = 5'h0 ;
  assign x2bank$DIA =
	     MUX_x2bank$a_put_1__SEL_1 ?
	       writex_x :
	       32'hAAAAAAAA /* unspecified value */  ;
  assign x2bank$DIB = 32'h0 ;
  assign x2bank$WEA = MUX_x2bank$a_put_1__SEL_1 ;
  assign x2bank$WEB = 1'b0 ;
  assign x2bank$ENA =
	     EN_writex && rg_xwricase == 5'd1 || WILL_FIRE_RL_rl_xinputenq ;
  assign x2bank$ENB = 1'b0 ;

  // submodule x3bank
  assign x3bank$ADDRA = MUX_x3bank$a_put_1__SEL_1 ? rg_xwriadd : rg_xadd ;
  assign x3bank$ADDRB = 5'h0 ;
  assign x3bank$DIA =
	     MUX_x3bank$a_put_1__SEL_1 ?
	       writex_x :
	       32'hAAAAAAAA /* unspecified value */  ;
  assign x3bank$DIB = 32'h0 ;
  assign x3bank$WEA = MUX_x3bank$a_put_1__SEL_1 ;
  assign x3bank$WEB = 1'b0 ;
  assign x3bank$ENA =
	     EN_writex && rg_xwricase == 5'd2 || WILL_FIRE_RL_rl_xinputenq ;
  assign x3bank$ENB = 1'b0 ;

  // submodule x4bank
  assign x4bank$ADDRA = MUX_x4bank$a_put_1__SEL_1 ? rg_xwriadd : rg_xadd ;
  assign x4bank$ADDRB = 5'h0 ;
  assign x4bank$DIA =
	     MUX_x4bank$a_put_1__SEL_1 ?
	       writex_x :
	       32'hAAAAAAAA /* unspecified value */  ;
  assign x4bank$DIB = 32'h0 ;
  assign x4bank$WEA = MUX_x4bank$a_put_1__SEL_1 ;
  assign x4bank$WEB = 1'b0 ;
  assign x4bank$ENA =
	     EN_writex && rg_xwricase == 5'd3 || WILL_FIRE_RL_rl_xinputenq ;
  assign x4bank$ENB = 1'b0 ;

  // submodule x5bank
  assign x5bank$ADDRA = MUX_x5bank$a_put_1__SEL_1 ? rg_xwriadd : rg_xadd ;
  assign x5bank$ADDRB = 5'h0 ;
  assign x5bank$DIA =
	     MUX_x5bank$a_put_1__SEL_1 ?
	       writex_x :
	       32'hAAAAAAAA /* unspecified value */  ;
  assign x5bank$DIB = 32'h0 ;
  assign x5bank$WEA = MUX_x5bank$a_put_1__SEL_1 ;
  assign x5bank$WEB = 1'b0 ;
  assign x5bank$ENA =
	     EN_writex && rg_xwricase == 5'd4 || WILL_FIRE_RL_rl_xinputenq ;
  assign x5bank$ENB = 1'b0 ;

  // submodule x6bank
  assign x6bank$ADDRA = MUX_x6bank$a_put_1__SEL_1 ? rg_xwriadd : rg_xadd ;
  assign x6bank$ADDRB = 5'h0 ;
  assign x6bank$DIA =
	     MUX_x6bank$a_put_1__SEL_1 ?
	       writex_x :
	       32'hAAAAAAAA /* unspecified value */  ;
  assign x6bank$DIB = 32'h0 ;
  assign x6bank$WEA = MUX_x6bank$a_put_1__SEL_1 ;
  assign x6bank$WEB = 1'b0 ;
  assign x6bank$ENA =
	     EN_writex && rg_xwricase == 5'd5 || WILL_FIRE_RL_rl_xinputenq ;
  assign x6bank$ENB = 1'b0 ;

  // submodule x7bank
  assign x7bank$ADDRA = MUX_x7bank$a_put_1__SEL_1 ? rg_xwriadd : rg_xadd ;
  assign x7bank$ADDRB = 5'h0 ;
  assign x7bank$DIA =
	     MUX_x7bank$a_put_1__SEL_1 ?
	       writex_x :
	       32'hAAAAAAAA /* unspecified value */  ;
  assign x7bank$DIB = 32'h0 ;
  assign x7bank$WEA = MUX_x7bank$a_put_1__SEL_1 ;
  assign x7bank$WEB = 1'b0 ;
  assign x7bank$ENA =
	     EN_writex && rg_xwricase == 5'd6 || WILL_FIRE_RL_rl_xinputenq ;
  assign x7bank$ENB = 1'b0 ;

  // submodule y1bank
  assign y1bank$ADDRA = rg_yadd ;
  assign y1bank$ADDRB = rg_ywriadd ;
  assign y1bank$DIA = pefifo$yfifoout1 ;
  assign y1bank$DIB = 32'hAAAAAAAA /* unspecified value */  ;
  assign y1bank$WEA = 1'd1 ;
  assign y1bank$WEB = 1'd0 ;
  assign y1bank$ENA = WILL_FIRE_RL_rl_youtputwrite ;
  assign y1bank$ENB = WILL_FIRE_RL_rl_y1bankoutputput ;

  // submodule y2bank
  assign y2bank$ADDRA = rg_yadd ;
  assign y2bank$ADDRB = rg_ywriadd ;
  assign y2bank$DIA = pefifo$yfifoout2 ;
  assign y2bank$DIB = 32'hAAAAAAAA /* unspecified value */  ;
  assign y2bank$WEA = 1'd1 ;
  assign y2bank$WEB = 1'd0 ;
  assign y2bank$ENA = WILL_FIRE_RL_rl_youtputwrite ;
  assign y2bank$ENB = WILL_FIRE_RL_rl_y2bankoutputput ;

  // submodule y3bank
  assign y3bank$ADDRA = rg_yadd ;
  assign y3bank$ADDRB = rg_ywriadd ;
  assign y3bank$DIA = pefifo$yfifoout3 ;
  assign y3bank$DIB = 32'hAAAAAAAA /* unspecified value */  ;
  assign y3bank$WEA = 1'd1 ;
  assign y3bank$WEB = 1'd0 ;
  assign y3bank$ENA = WILL_FIRE_RL_rl_youtputwrite ;
  assign y3bank$ENB = WILL_FIRE_RL_rl_y3bankoutputput ;

  // submodule y4bank
  assign y4bank$ADDRA = rg_yadd ;
  assign y4bank$ADDRB = rg_ywriadd ;
  assign y4bank$DIA = pefifo$yfifoout4 ;
  assign y4bank$DIB = 32'hAAAAAAAA /* unspecified value */  ;
  assign y4bank$WEA = 1'd1 ;
  assign y4bank$WEB = 1'd0 ;
  assign y4bank$ENA = WILL_FIRE_RL_rl_youtputwrite ;
  assign y4bank$ENB = WILL_FIRE_RL_rl_y4bankoutput ;

  // remaining internal signals
  assign NOT_rg_xadd_6_ULE_1_8___d19 = rg_xadd > 5'd1 ;
  assign NOT_rg_ywriadd_08_ULE_1_25___d126 = rg_ywriadd > 7'd1 ;
  assign pefifo_RDY_xfifoin7_AND_pefifo_RDY_xfifoin6_AN_ETC___d14 =
	     pefifo$RDY_xfifoin7 && pefifo$RDY_xfifoin6 &&
	     pefifo$RDY_xfifoin5 &&
	     pefifo$RDY_xfifoin4 &&
	     pefifo$RDY_xfifoin3 &&
	     pefifo$RDY_xfifoin2 &&
	     pefifo$RDY_xfifoin1 ;
  assign pefifo_RDY_yfifoin4__9_AND_pefifo_RDY_yfifoin3_ETC___d55 =
	     pefifo$RDY_yfifoin4 && pefifo$RDY_yfifoin3 &&
	     pefifo$RDY_yfifoin2 &&
	     pefifo$RDY_yfifoin1 ;
  assign x__h4227 = rg_ywricase + 2'd1 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        rg_conv <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_convcount <= `BSV_ASSIGNMENT_DELAY 7'd0;
	rg_stat <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_wadd <= `BSV_ASSIGNMENT_DELAY 5'd0;
	rg_wstatus <= `BSV_ASSIGNMENT_DELAY 1'd0;
	rg_xadd <= `BSV_ASSIGNMENT_DELAY 5'd0;
	rg_xwriadd <= `BSV_ASSIGNMENT_DELAY 5'd0;
	rg_xwricase <= `BSV_ASSIGNMENT_DELAY 5'd0;
	rg_yadd <= `BSV_ASSIGNMENT_DELAY 7'd0;
	rg_ycount <= `BSV_ASSIGNMENT_DELAY 6'd0;
	rg_ywriadd <= `BSV_ASSIGNMENT_DELAY 7'd0;
	rg_ywricase <= `BSV_ASSIGNMENT_DELAY 2'd0;
      end
    else
      begin
        if (rg_conv$EN) rg_conv <= `BSV_ASSIGNMENT_DELAY rg_conv$D_IN;
	if (rg_convcount$EN)
	  rg_convcount <= `BSV_ASSIGNMENT_DELAY rg_convcount$D_IN;
	if (rg_stat$EN) rg_stat <= `BSV_ASSIGNMENT_DELAY rg_stat$D_IN;
	if (rg_wadd$EN) rg_wadd <= `BSV_ASSIGNMENT_DELAY rg_wadd$D_IN;
	if (rg_wstatus$EN)
	  rg_wstatus <= `BSV_ASSIGNMENT_DELAY rg_wstatus$D_IN;
	if (rg_xadd$EN) rg_xadd <= `BSV_ASSIGNMENT_DELAY rg_xadd$D_IN;
	if (rg_xwriadd$EN)
	  rg_xwriadd <= `BSV_ASSIGNMENT_DELAY rg_xwriadd$D_IN;
	if (rg_xwricase$EN)
	  rg_xwricase <= `BSV_ASSIGNMENT_DELAY rg_xwricase$D_IN;
	if (rg_yadd$EN) rg_yadd <= `BSV_ASSIGNMENT_DELAY rg_yadd$D_IN;
	if (rg_ycount$EN) rg_ycount <= `BSV_ASSIGNMENT_DELAY rg_ycount$D_IN;
	if (rg_ywriadd$EN)
	  rg_ywriadd <= `BSV_ASSIGNMENT_DELAY rg_ywriadd$D_IN;
	if (rg_ywricase$EN)
	  rg_ywricase <= `BSV_ASSIGNMENT_DELAY rg_ywricase$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    rg_conv = 1'h0;
    rg_convcount = 7'h2A;
    rg_stat = 1'h0;
    rg_wadd = 5'h0A;
    rg_wstatus = 1'h0;
    rg_xadd = 5'h0A;
    rg_xwriadd = 5'h0A;
    rg_xwricase = 5'h0A;
    rg_yadd = 7'h2A;
    rg_ycount = 6'h2A;
    rg_ywriadd = 7'h2A;
    rg_ywricase = 2'h2;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkTop

