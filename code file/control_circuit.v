module control_circuit(
input [4:0]opcode ,
output RegDst,Jump,Branch,MemToReg,ALUop,MemWrite,ALUinB,RegWriteEnable
);

parameter Rtype =5'b00000,addi=5'b00101,sw=5'b00111,lw=5'b01000;
//parameter j=5'b00001,bne=5'b00010,jal=5'b00011,jr=5'b00100,blt=5'b00110,
//			 bex=5'b10110,setx=5'b10101 ;//This will be used in Full processor
reg [7:0] out;
assign RegDst = out[0];
assign Jump = out[1];
assign Branch = out[2];
assign MemToReg = out[3];
assign ALUop = out[4];
assign MemWrite = out[5];
assign ALUinB = out[6];
assign RegWriteEnable = out[7];
always @ (opcode)
begin
 case (opcode)
 Rtype:out=8'b10010001;
 addi:out=8'b11000001;
 sw:out=8'b01100000;
 lw:out=8'b11001001;
 default:out=8'b00000000;
 
 endcase
end
endmodule
