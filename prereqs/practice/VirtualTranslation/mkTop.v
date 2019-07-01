//
// Generated by Bluespec Compiler, version 2018.10.beta1 (build e1df8052c, 2018-10-17)
//
// On Fri May 31 15:29:39 IST 2019
//
//
// Ports:
// Name                         I/O  size props
// CLK                            I     1 clock
// RST_N                          I     1 reset
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
	     RST_N);
  input  CLK;
  input  RST_N;

  // register rg_count
  reg [9 : 0] rg_count;
  wire [9 : 0] rg_count$D_IN;
  wire rg_count$EN;

  // remaining internal signals
  wire [31 : 0] x1_avValue_add__h588, x_add__h584;
  wire c_wr_pin_wget_ULT_0x5000___d10;

  // register rg_count
  assign rg_count$D_IN = rg_count + 10'd1 ;
  assign rg_count$EN = 1'd1 ;

  // remaining internal signals
  assign c_wr_pin_wget_ULT_0x5000___d10 = x_add__h584 < 32'h00005000 ;
  assign x1_avValue_add__h588 =
	     c_wr_pin_wget_ULT_0x5000___d10 ? x_add__h584 : 32'hFFFFFFFF ;
  assign x_add__h584 = 32'b00000000000000000000000000010101 + 32'h00004000 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        rg_count <= `BSV_ASSIGNMENT_DELAY 10'd0;
      end
    else
      begin
        if (rg_count$EN) rg_count <= `BSV_ASSIGNMENT_DELAY rg_count$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    rg_count = 10'h2AA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE) $write("The Virtual address is ");
    if (RST_N != `BSV_RESET_VALUE) $write("Virpack { ", "add: ");
    if (RST_N != `BSV_RESET_VALUE) $write("'h%h", 32'h00000015);
    if (RST_N != `BSV_RESET_VALUE) $write(", ", "req: ");
    if (RST_N != `BSV_RESET_VALUE) $write("'h%h", 1'b0, " }");
    if (RST_N != `BSV_RESET_VALUE) $write("\n");
    if (RST_N != `BSV_RESET_VALUE) $write("The physical address is ");
    if (RST_N != `BSV_RESET_VALUE) $write("Phypack { ", "add: ");
    if (RST_N != `BSV_RESET_VALUE) $write("'h%h", x1_avValue_add__h588);
    if (RST_N != `BSV_RESET_VALUE) $write(", ", "req: ");
    if (RST_N != `BSV_RESET_VALUE) $write("'h%h", 1'b0);
    if (RST_N != `BSV_RESET_VALUE) $write(", ", "acc: ");
    if (RST_N != `BSV_RESET_VALUE)
      $write("'h%h", c_wr_pin_wget_ULT_0x5000___d10, " }");
    if (RST_N != `BSV_RESET_VALUE) $write("\n");
    if (RST_N != `BSV_RESET_VALUE) if (rg_count == 10'd5) $finish(32'd1);
  end
  // synopsys translate_on
endmodule  // mkTop

