//Gabriel Montero

module Gate(input Clk,
            input Reset, 
            input [3:0] Opcode,
            input [7:0] A,
            input [7:0] B,
            output reg [7:0] Gate_Result,
            output reg Flag,
            input [2:0] Select);
    parameter A_AND_B = 4'b0110;
    parameter A_NAND_B = 4'b0111;
    parameter A_OR_B = 4'b1000;
    parameter A_NOR_B = 4'b1001;
    parameter A_XOR_B = 4'b1010;
    parameter A_XNOR_B = 4'b1011;

    wire [7:0] and_Result;
    wire [7:0] nand_Result;
    wire [7:0] or_Result;
    wire [7:0] nor_Result;
    wire [7:0] xor_Result;
    wire [7:0] xnor_Result;

    AND8 a1 (A, B, and_Result);
    NAND8 n2 (A, B, nand_Result);
    OR8 a3 (A, B, or_Result);
    NOR8 a4 (A, B, nor_Result);
    XOR8 a5 (A, B, xor_Result);
    XNOR8 a6 (A, B, xnor_Result);

    always @(posedge Clk, posedge Reset) begin
        if(Reset) begin
            Gate_Result = 0;
            Flag = 0;
        end
        else begin
            $display("Gate - Opcode: %b", Opcode);
            if(Select == 3'b010) begin
                case(Opcode)
                    A_AND_B: begin
                        Gate_Result = and_Result;
                        Flag = 1;
                    end
                    A_NAND_B: begin
                        Gate_Result = nand_Result;
                        Flag = 1;
                    end
                    A_OR_B: begin
                        Gate_Result = or_Result;
                        Flag = 1;
                    end
                    A_NOR_B: begin
                        Gate_Result = nor_Result;
                        Flag = 1;
                    end
                    A_XOR_B: begin
                        Gate_Result = xor_Result;
                        Flag = 1;
                    end
                    A_XNOR_B: begin
                        Gate_Result = xnor_Result;
                        Flag = 1;
                    end
                    default: begin
                        Gate_Result = 0;
                        Flag = 0;
                    end
                endcase
            end
        end
    end
endmodule