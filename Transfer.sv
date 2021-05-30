//Gabriel Montero

module Transfer(input Clk,
                input Reset, 
                input [3:0] Opcode,
                input [7:0] A,
                input [7:0] B,
                output reg [7:0] Transfer_Result,
                output reg Flag,
                input [2:0] Select);
    parameter Transfer = 4'b0000;

    wire [7:0] Result;
    
    AND8 a1 (A, B, Result);

    always @(posedge Clk, posedge Reset) begin
        if(Reset) begin
            Transfer_Result = 0;
            Flag = 0;
        end
        else begin
            $display("Transfer - Opcode: %b", Opcode);
            if(Select == 3'b000) begin
                case(Opcode)
                    Transfer: begin
                        Transfer_Result = Result;
                        $display("Transfer_Result: %b", Transfer_Result);
                        Flag = 1;
                    end
                    default: begin
                        Transfer_Result = 0;
                        $display("Default - Transfer_Result: %b", Transfer_Result);
                        Flag = 0;
                    end
                endcase
            end
        end
    end
endmodule