//Gabriel Montero

module Mux4_1(input Clk,
              input Reset,
              input Flag,
              input [7:0] Transfer_Result,
              input [7:0] Comparator_Result,
              input [7:0] Gate_Result,
              input [7:0] AdderSubtractor_Result,
              input [2:0] Select,
              output reg [7:0] Mux_Out);
    reg FlagTemp = 0;

    always @(posedge Clk, posedge Reset) begin
        if(Reset) begin
            Mux_Out = 0;
        end
        else begin
            case(Select)
                3'b000: begin
                    FlagTemp = Flag;
                    if(FlagTemp) begin
                        Mux_Out = Transfer_Result;
                        FlagTemp = 0;
                    end
                end
                3'b001: begin
                    FlagTemp = Flag;
                    if(FlagTemp) begin
                        Mux_Out = AdderSubtractor_Result;
                        FlagTemp = 0;
                    end
                end
                3'b010: begin
                    FlagTemp = Flag;
                    if(FlagTemp) begin
                        Mux_Out = Gate_Result;
                        FlagTemp = 0;
                    end
                end
                3'b011: begin
                    FlagTemp = Flag;
                    if(FlagTemp) begin
                        Mux_Out = Comparator_Result;
                        FlagTemp = 0;
                    end
                end
                default: begin
                    $display("stop");
                end
            endcase
        end
    end
endmodule