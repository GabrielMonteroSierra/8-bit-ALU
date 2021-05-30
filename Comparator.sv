//Gabriel Montero

module Comparator(input Clk,
                  input Reset, 
                  input [3:0] Opcode,
                  input [7:0] A,
                  input [7:0] B,
                  output reg [7:0] Comparator_Result,
                  output reg Flag,
                  input [2:0] Select);
    parameter A_GT_B = 4'b1100;
    parameter A_LT_B = 4'b1101;
    parameter A_EQ_B = 4'b1110;

    wire [7:0] Result;

    comp8 c1 (A, B, Result);

    always @(posedge Clk, posedge Reset) begin
        if(Reset) begin
            Comparator_Result = 0;
            Flag = 0;
        end
        else begin
            $display("Comparator - Opcode: %b", Opcode);
            if(Select == 3'b011) begin
                case(Opcode)
                    A_GT_B: begin
                        Comparator_Result = Result;
                        Flag = 1;
                    end
                    A_LT_B: begin
                        Comparator_Result = Result;
                        Flag = 1;
                    end
                    A_EQ_B: begin
                        Comparator_Result = Result;
                        Flag = 1;
                    end
                    default: begin
                        Comparator_Result = 0;
                        Flag = 0;
                    end
                endcase
            end
        end
    end
endmodule