#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential
sudo apt-get install python3-matplotlib

local=$(pwd)
cd C_function
gcc -O3 aux_install.c -o aux_install -w -lm
./aux_install "${local}/EPIGUI"
cd ..

chmod +x EPIGUI

gcc -O3 C_function/MBI_MAIN.c -o EPIGUI/IBM_MAIN -w -lm
gcc -O3 C_function/MBI_WRITTER.c -o EPIGUI/IBM_WRITER -w -lm
gcc -O3 C_function/measures.c -o EPIGUI/measures -w -lm
gcc -O3 C_function/networks/random.c -o EPIGUI/models/ran -w -lm
gcc -O3 C_function/networks/small_world.c -o EPIGUI/models/smw -w -lm
gcc -O3 C_function/networks/scale_free.c -o EPIGUI/models/scf -w -lm
gcc -O3 C_function/networks/modular.c -o EPIGUI/models/mod -w -lm
gcc -O3 C_function/networks/hierarquical.c -o EPIGUI/models/hie -w -lm
gcc -O3 C_function/networks/other.c -o EPIGUI/models/other -w -lm

rm -r C_function/
