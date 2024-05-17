force /sample_ori 11111111 0 ns, 00000000 20 ns -r 40 ns
force /sample_can 00000000 0 ns, 00000000 20 ns -r 40 ns
force /CLOCk 0 0 ns, 1 20 ns -r 40 ns
force /iniciar 0 0 ns, 1 40 ns
force /reset 0 0 ns

#força a entrada cin para 0 no tempo 0 ns
#força sel para 00 no tempo 1 ns, 01 no tempo 80ns, 110 no tempo 160 ns, 11 no tempo 240 ns e repete a cada 320
#force /sel 00 1 ns, 01 80 ns, 10 160 ns, 11 240 ns -r 320 ns
#force /a 0101 0 ns, 0001 80 ns, 1000 160 ns, 0010 240 ns -r 320 ns
#force /b 0001 0 ns, 0101 80 ns, 0111 160 ns, 1011 240 ns -r 320 ns
#force /c 0111 0 ns, 1101 80 ns, 1010 160 ns, 0011 240 ns -r 320 ns
#force /d 0011 0 ns, 1111 80 ns, 0110 160 ns, 1001 240 ns -r 320 ns
