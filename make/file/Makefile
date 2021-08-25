    cc = gcc
    prom = file
 # 	deps = calc.h
    obj = file.o
    
    $(prom): $(obj)
	$(cc) -o $(prom) $(obj)

    %.o: %.c $(deps)
	$(cc) -c $< -o $@

    clean:
	rm -rf $(obj) $(prom)
