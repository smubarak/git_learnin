 `timescale 1ns / 1ps  

module tb_alu;
//Inputs
 reg[7:0] A,B;
 reg[3:0] ALU_Sel;

//Outputs
 wire[7:0] ALU_Out;
 wire CarryOut;
 // Verilog code for ALU
 integer i;
 alu test_unit(
            A,B,  // ALU 8-bit Inputs                 
            ALU_Sel,// ALU Selection
            ALU_Out, // ALU 8-bit Output
            CarryOut // Carry Out Flag
     );


  task test(input reg [3:0] sel);
     A = $random();
     B = $random();
     ALU_Sel = sel;
     #10;
  endtask

  initial begin

    // Test 1 : Addition
    test(0);
    if(ALU_Out != A + B) $display("Test Failed")
    else $display("Test passed");

      
  end
endmodule