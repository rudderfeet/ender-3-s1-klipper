scp -O -r smccrory@ender3s1.local:/home/smccrory/printer_data .
rm  -rf printer_data/config/kamp/.git
rm  -rf printer_data/config/kamp/.github
rm  -rf printer_data/gcodes