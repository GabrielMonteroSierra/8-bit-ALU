//Gabriel Montero

module AdderSubtractor(input Clk,
                       input Reset,
                       input [3:0] Opcode,
                       input [7:0] A,
                       input [7:0] B,
                       output reg [7:0] AdderSubtractor_Result,
                       output reg Flag,
                       input [2:0] Select);
    parameter Increment = 4'b0001;
    parameter Addition = 4'b0010;
    parameter Subtraction = 4'b0011;
    parameter Decrement = 4'b0100;
    parameter OnesComplement = 4'b0101;

    wire Cout;
    reg Cin;

    wire [7:0] AdderResult;
    wire [7:0] OnesCompResult;

    A_S_RCA8 a1 (A, B, Cin, AdderResult, Cout);
    Oscom8b o1 (A, OnesCompResult);

    always @(posedge Clk, posedge Reset) begin
        if(Reset) begin
            AdderSubtractor_Result = 0;
            Flag = 0;
        end
        else begin
            if(Select == 3'b001) begin
                case(Opcode)
                   Increment: begin
                       Cin = Opcode[0];
                       AdderSubtractor_Result = AdderResult;
                       Flag = 1;
                   end
                   Decrement: begin
                       Cin = Opcode[0];
                       AdderSubtractor_Result = AdderResult;
                       Flag = 1;
                   end
                   Addition: begin
                       Cin = Opcode[0];
                       AdderSubtractor_Result = AdderResult;
                       Flag = 1;
                   end
                   Subtraction: begin
                       Cin = Opcode[0];
                       AdderSubtractor_Result = AdderResult;
                       Flag = 1;
                   end
                   OnesComplement: begin
                       AdderSubtractor_Result = OnesCompResult;
                       Flag = 1;
                   end
                   default: begin
                       AdderSubtractor_Result = 0;
                       Flag = 0;
                   end
               endcase
            end
        end
    end
endmodule