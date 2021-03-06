create_clock -period 10.000 -name clk -waveform {0.000 5.000} -add [get_ports clk]
create_generated_clock -name half_clk -source [get_ports clk] -master_clock [get_ports clk] -divide_by 2 -add [get_ports half_clk]

set_input_delay -clock [get_clocks half_clk] -min -add_delay 0.000 [get_ports {urng_seed1[*]}]
set_input_delay -clock [get_clocks half_clk] -max -add_delay 0.000 [get_ports {urng_seed1[*]}]
set_input_delay -clock [get_clocks half_clk] -min -add_delay 0.000 [get_ports {urng_seed2[*]}]
set_input_delay -clock [get_clocks half_clk] -max -add_delay 0.000 [get_ports {urng_seed2[*]}]
set_input_delay -clock [get_clocks half_clk] -min -add_delay 0.000 [get_ports {urng_seed3[*]}]
set_input_delay -clock [get_clocks half_clk] -max -add_delay 0.000 [get_ports {urng_seed3[*]}]
set_input_delay -clock [get_clocks half_clk] -min -add_delay 0.000 [get_ports {urng_seed4[*]}]
set_input_delay -clock [get_clocks half_clk] -max -add_delay 0.000 [get_ports {urng_seed4[*]}]
set_input_delay -clock [get_clocks half_clk] -min -add_delay 0.000 [get_ports {urng_seed5[*]}]
set_input_delay -clock [get_clocks half_clk] -max -add_delay 0.000 [get_ports {urng_seed5[*]}]
set_input_delay -clock [get_clocks half_clk] -min -add_delay 0.000 [get_ports {urng_seed6[*]}]
set_input_delay -clock [get_clocks half_clk] -max -add_delay 0.000 [get_ports {urng_seed6[*]}]
set_input_delay -clock [get_clocks half_clk] -min -add_delay 0.000 [get_ports reset]
set_input_delay -clock [get_clocks half_clk] -max -add_delay 0.000 [get_ports reset]
set_output_delay -clock [get_clocks clk] -min -add_delay 0.000 [get_ports {awgn_out[*]}]
set_output_delay -clock [get_clocks clk] -max -add_delay 0.000 [get_ports {awgn_out[*]}]
set_output_delay -clock [get_clocks half_clk] -min -add_delay 0.000 [get_ports {awgn_out[*]}]
set_output_delay -clock [get_clocks half_clk] -max -add_delay 0.000 [get_ports {awgn_out[*]}]