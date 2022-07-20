# addsub-base
#name Kenglung Hsu 
#netID kh460

#code  explanation 
processor.v : Combining various modules to create a single cycle processor.
control_circuit.v: The control signal is determined by OPcode.The input of  this circuit is opcode.Output is control signal.
ALU_control.v:  This circuit is used when there is ALU operation
sign_extension.v: This circuit turns a 16-bit signed number into a 32-bit signed number.
skleton.v:skeleton module  output the four clocks imem_clock, dmem_clock, processor_clock, and regfile_clock.

PC.v: Save the current PC value
add4.v: Used to increase the PC value.
frequency_divider_by2.v: Used for frequency division
clk_div4.v: Used for frequency division
regfile.v:sample module provided by the original project
alu.v:sample module provided by the original project



