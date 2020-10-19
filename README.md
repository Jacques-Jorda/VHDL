# VHDL
## Analyse des fichiers
ghdl -a decoder.vhd  
ghdl -a testbench.vhd  
## Creation d'un exécutable et lancement de la simulation
Si l'entité dans le testbench s'appelle test :  
ghdl -e test  
permet de créer un exécutable qui simulera le fonctionnement de l'unité de conception de test. L'exécution de la simulation avec création d'un fichier de trace se fait grace à la commande :  
./test --vcd=test.vcd  
La trace peut ensuite être visualisée dans gtkwave
## Simulation depuis ghdl
Certaines versions de ghdl ne produisent pas de fichier exécutable lors de l'utilisation de la commande ghdl -e. Dans ce cas il est possible de demander à ghdl d'effectuer directement la simulation de l'unité de conception en utilisans la commande suivante :  
ghdl -r test --vcd=test.vcd
