//Gabriel Montero

module Controller(input Clk,
                  input Reset,
                  input [7:0] A,
                  input [7:0] B,
                  input [3:0] Opcode, 
                  output reg [3:0] Controller_Output, 
                  output reg [7:0] dataA,
                  output reg [7:0] dataB,
                  output reg [2:0] Select);
    parameter Transfer = 4'b0000;
    parameter Increment = 4'b0001;
    parameter Addition = 4'b0010;
    parameter Subtraction = 4'b0011;
    parameter Decrement = 4'b0100;
    parameter OnesComplement = 4'b0101;
    parameter A_AND_B = 4'b0110;
    parameter A_NAND_B = 4'b0111;
    parameter A_OR_B = 4'b1000;
    parameter A_NOR_B = 4'b1001;
    parameter A_XOR_B = 4'b1010;
    parameter A_XNOR_B = 4'b1011;
    parameter A_GT_B = 4'b1100;
    parameter A_LT_B = 4'b1101;
    parameter A_EQ_B = 4'b1110;

    always @(posedge Clk, posedge Reset) begin
        if(Reset) begin
            Controller_Output = 4'b1111;
            dataA = 0;
            dataB = 0;
            Select = 3'b100;
        end
        else begin
            //$display("Opcode: %b", Opcode);
            case(Opcode)
                Transfer: begin
                    dataA = A;
                    dataB = 8'b11111111;
                    Controller_Output = Opcode;
                    Select = 3'b000;
                    $display("Transfer - dataA: %b, dataB: %b", dataA, dataB);
                    $display("Transfer - Controller_Output: %h", Controller_Output);
                end
                Increment: begin
                    dataA = A;
                    dataB = 8'b00000001;
                    Controller_Output = Opcode;
                    Select = 3'b001;
                    $display("Increment - dataA: %b, dataB: %b", dataA, dataB);
                    $display("Increment - Controller_Output: %h", Controller_Output);
                end
                Addition: begin
                    dataA = A;
                    dataB = B;
                    Controller_Output = Opcode;
                    Select = 3'b001;
                    $display("Addition - dataA: %b, dataB: %b", dataA, dataB);
                    $display("Addition - Controller_Output: %h", Controller_Output);
                end
                Subtraction: begin
                    dataA = A;
                    dataB = B;
                    Controller_Output = Opcode;
                    Select = 3'b001;
                    $display("Subtraction - dataA: %b, dataB: %b", dataA, dataB);
                    $display("Subtraction - Controller_Output: %h", Controller_Output);
                end
                Decrement: begin
                    dataA = A;
                    dataB = B;
                    Controller_Output = Opcode;
                    Select = 3'b001;
                    $display("Decrement - dataA: %b, dataB: %b", dataA, dataB);
                    $display("Decrement - Controller_Output: %h", Controller_Output);
                end
                OnesComplement: begin
                    dataA = A;
                    dataB = 0;
                    Controller_Output = Opcode;
                    Select = 3'b001;
                    $display("OnesComplement - dataA: %b, dataB: %b", dataA, dataB);
                    $display("OnesComplement - Controller_Output: %h", Controller_Output);
                end
                A_AND_B: begin
                    dataA = A;
                    dataB = B;
                    Controller_Output = Opcode;
                    Select = 3'b001;
                    $display("A_AND_B - dataA: %b, dataB: %b", dataA, dataB);
                    $display("A_AND_B - Controller_Output: %h", Controller_Output);
                end
                A_NAND_B: begin
                    dataA = A;
                    dataB = B;
                    Controller_Output = Opcode;
                    Select = 3'b010;
                    $display("A_NAND_B - dataA: %b, dataB: %b", dataA, dataB);
                    $display("A_NAND_B - Controller_Output: %h", Controller_Output);
                end
                A_OR_B: begin
                    dataA = A;
                    dataB = B;
                    Controller_Output = Opcode;
                    Select = 3'b010;
                    $display("A_OR_B - dataA: %b, dataB: %b", dataA, dataB);
                    $display("A_OR_B - Controller_Output: %h", Controller_Output);
                end
                A_NOR_B: begin
                    dataA = A;
                    dataB = B;
                    Controller_Output = Opcode;
                    Select = 3'b010;
                    $display("A_NOR_B - dataA: %b, dataB: %b", dataA, dataB);
                    $display("A_NOR_B - Controller_Output: %h", Controller_Output);
                end
                A_XOR_B: begin
                    dataA = A;
                    dataB = B;
                    Controller_Output = Opcode;
                    Select = 3'b010;
                    $display("A_XOR_B - dataA: %b, dataB: %b", dataA, dataB);
                    $display("A_XOR_B - Controller_Output: %h", Controller_Output);
                end
                A_XNOR_B: begin
                    dataA = A;
                    dataB = B;
                    Controller_Output = Opcode;
                    Select = 3'b010;
                    $display("A_XNOR_B - dataA: %b, dataB: %b", dataA, dataB);
                    $display("A_XNOR_B - Controller_Output: %h", Controller_Output);
                end
                A_GT_B: begin
                    dataA = A;
                    dataB = B;
                    Controller_Output = Opcode;
                    Select = 3'b011;
                    $display("A_GT_B - dataA: %b, dataB: %b", dataA, dataB);
                    $display("A_GT_B - Controller_Output: %h", Controller_Output);
                end
                A_LT_B: begin
                    dataA = A;
                    dataB = B;
                    Controller_Output = Opcode;
                    Select = 3'b011;
                    $display("A_LT_B - dataA: %b, dataB: %b", dataA, dataB);
                    $display("A_LT_B - Controller_Output: %h", Controller_Output);
                end
                A_EQ_B: begin
                    dataA = A;
                    dataB = B;
                    Controller_Output = Opcode;
                    Select = 3'b011;
                    $display("A_EQ_B - dataA: %b, dataB: %b", dataA, dataB);
                    $display("A_EQ_B - Controller_Output: %h", Controller_Output);
                end
                default: begin
                    dataA = 0;
                    dataB = 0;
                    Controller_Output = 4'b1111;
                    Select = 3'b100;
                    $display("Default - dataA: %h, dataB: %h", dataA, dataB);
                    $display("Default - Controller_Output: %h", Controller_Output);
                end
            endcase
        end
    end
endmodule