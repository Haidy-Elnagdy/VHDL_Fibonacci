force -freeze sim:/count_dec/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/count_dec/rst 1 0
force -freeze sim:/count_dec/rst 0 120
force -freeze sim:/count_dec/ld 0 0
force -freeze sim:/count_dec/ld 1 200
force -freeze sim:/count_dec/ld 0 250
force -freeze sim:/count_dec/d 0011 0
force -freeze sim:/count_dec/en 0 0
force -freeze sim:/count_dec/en 1 300
force -freeze sim:/count_dec/en 0 350
force -freeze sim:/count_dec/en 1 500
force -freeze sim:/count_dec/en 0 550

