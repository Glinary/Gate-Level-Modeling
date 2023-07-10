//Gleezell Vina A. Uy S14

`timescale 1ns / 1ps

module XUyG_tb();
    wire t_F;
    reg [3:0] t_input;
    integer i;
    //reg t_A, t_B, t_C, t_D;
    
    XUyG dut(t_F, t_input[3], t_input[2], t_input[1], t_input[0]);

    initial 
    begin
        t_input = 4'b0000;
        for (i=1; i<17; i++)
            #10 t_input = i;

    end
        initial
        begin
            $display("Written by Gleezell Vina A. Uy");
            $display("Boolean Function: F = A(CD+B) + BC'");
            $display("Verilog Model: Gate-level modeling");
            $monitor("time = %0d ", $time, "A = %b B = %b C = %b D = %b output_F = %b", t_input[3], t_input[2], t_input[1], t_input[0], t_F);
            $dumpfile("XUyG.vcd");
            $dumpvars();
        end
endmodule