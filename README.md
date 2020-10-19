# VHDL
## Analyse des fichiers
ghdl -a decoder.vhd  
ghdl -a testbench.vhd  
## Creation d'un fichier de simulation
Si l'entité dans le testbench s'appelle test :  
ghdl -e test
## Exécution de la simulation avec création d'un fichier de trace
./test --vcd=test.vcd  
La trace peut ensuite être visualisée dans gtkwave
