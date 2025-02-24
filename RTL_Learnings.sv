94. What is VCLP?
Ans - VCLP stands for Voltage and Clock Level Power, a low power static rule checker used in VLSI. It helps to optimize power consumption in digital design.

95. What is "ENTITY" in RTL?
Ans - egister Transfer Level) design, an "entity" refers to a fundamental building block that defines the interface of a specific module or circuit, specifying its input and output signals,
essentially acting as a blueprint for the module's functionality without detailing the internal logic, which is handled by the corresponding "architecture" section within the HDL code.

96. What is synthesis? What is a HLS IP?
Ans - Synthesis is a process of converting a high-level description of design written at register transfer level (RTL) in a technology mapped gate-level representation.
  The final output is a netlist that describes the circuit in terms of basic logic gates and flip-flops.
HLS stands for High Level Synthesis. It is the process of taking an abstract functional-only design description and translating
and optimizing it into a logic synthesizable register transfer language (RTL) description. High-level synthesis tools perform numerous optimizations such as 
scheduling and resource sharing to improve the power, performance, and area (PPA) of the design. Languages like C, C++, Chisel and MATLAB etc supports HLS.

  ref - https://www.chipverify.com/verilog/verilog-synthesis

97. What is non-synthesizable RTL code? Also what is SDC? Also explain about use case of LINT.
Ans -

98. What is OCC in clock?
Ans - OCC stands for On-Chip Clock Controller.  Its use case is that of a simple mux. It is used in dft mode. We have general clk, scan_clk and scan_en as inputs to the occ module 
along with few other signals. When we have  scan_en as 1 then output signal clk_out will have scan_clk otherwise general clk.


99. What is the difference between simple mux and glitchless mux? Where it is used?
Ans- Let's consider clock multiplexer. So if we have a simple multiplexer incase of sel signal being changed 
i.e mux_out is selecting a different clock, in this case there would be clock timeperiod/freq change during the transition.
Whereas in case of glitchless mux we won't have such glitch.

100. lets say we have a wrapper rtl code - 
Ans - module adder_wrapper 

#() (
input logic clk_in,
input logic a_in,
input logic b_in,
output logic c_out,
);

logic gated_clk;
logic qactive;
logic c;

gated_clk = clk_in & qactive;
c_out = c;

module adder(
.clk (gated_clk),
.a (a_in),
.b (b_in),
.c,
.qactive,
);

endmodule : adder_wrapper

Caveat : The output signals from module adder have not been specifically connected to any signal because they will
automatically get connected to the internal logic mentioned under adder_wrapper module i.e We don't neeed to
explicitly connect c & qactive when we have exactly the same name signals
