//Gabriel Montero

    //`include "PowerALU_tb.sv"
    `include "Controller.sv"
    `include "Transfer.sv"
    `include "AdderSubtractor.sv"
    `include "Gate.sv"
    `include "Comparator.sv"
    `include "Mux4_1.sv"
    
    `include "A_S_RCA8.sv"
    `include "Oscom8b.sv"

    `include "AND8.sv"
    `include "NAND8.sv"
    `include "OR8.sv"
    `include "NOR8.sv"
    `include "XOR8.sv"
    `include "XNOR8.sv"

    `include "comp8.sv"
    `include "comp4.sv"

    `include "FA.sv"

module PowerALU_Gabriel_Montero();
    wire [7:0] A;
    wire [7:0] B;
    wire [7:0] dataA;
    wire [7:0] dataB;
    wire [3:0] Opcode;
    wire [3:0] Controller_Output;
    wire [7:0] Transfer_Result;
    wire [7:0] Comparator_Result;
    wire [7:0] Gate_Result;
    wire [7:0] AdderSubtractor_Result;
    wire [2:0] Select;
    wire [7:0] Mux_Out;
    
    wire Clk;
    wire Reset;
    wire Flag;

    //PowerALU_tb t1 (Clk, Reset, Opcode, A, B, Mux_Out);

    Controller c1 (Clk, Reset, A, B, Opcode, Controller_Output, dataA, dataB, Select);

    Transfer t2 (Clk, Reset, Controller_Output, dataA, dataB, Transfer_Result, Flag, Select);

    Comparator c2 (Clk, Reset, Controller_Output, dataA, dataB, Comparator_Result, Flag, Select);

    Gate g1 (Clk, Reset, Controller_Output, dataA, dataB, Gate_Result, Flag, Select);

    AdderSubtractor a1 (Clk, Reset, Controller_Output, dataA, dataB, AdderSubtractor_Result, Flag, Select);

    Mux4_1 m1 (Clk, Reset, Flag, Transfer_Result, Comparator_Result, Gate_Result, AdderSubtractor_Result, Select, Mux_Out);

endmodule