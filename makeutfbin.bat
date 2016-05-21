@echo off
REM 半角フォント
hex2bin.pl  .\utf_fonthex\u_4x8a.hex    .\utf_fontbin\u_4x8a.bin   > u_table.txt
hex2bin.pl  .\utf_fonthex\u_5x10a.hex   .\utf_fontbin\u_5x10a.bin  >>u_table.txt
hex2bin.pl  .\utf_fonthex\u_6x12a.hex   .\utf_fontbin\u_6x12a.bin  >>u_table.txt
hex2bin.pl  .\utf_fonthex\u_7x14a.hex   .\utf_fontbin\u_7x14a.bin  >>u_table.txt
hex2bin.pl  .\utf_fonthex\u_8x16a.hex   .\utf_fontbin\u_8x16a.bin  >>u_table.txt
hex2bin.pl  .\utf_fonthex\u_10x20a.hex  .\utf_fontbin\u_10x20a.bin >>u_table.txt
hex2bin.pl  .\utf_fonthex\u_12x24a.hex  .\utf_fontbin\u_12x24a.bin >>u_table.txt
REM 全角フォント
hex2bin.pl  .\utf_fonthex\u_8x8.hex     .\utf_fontbin\u_8x8.bin    >>u_table.txt
hex2bin.pl  .\utf_fonthex\u_10x10.hex   .\utf_fontbin\u_10x10.bin  >>u_table.txt
hex2bin.pl  .\utf_fonthex\u_12x12.hex   .\utf_fontbin\u_12x12.bin  >>u_table.txt
hex2bin.pl  .\utf_fonthex\u_14x14.hex   .\utf_fontbin\u_14x14.bin  >>u_table.txt
hex2bin.pl  .\utf_fonthex\u_16x16.hex   .\utf_fontbin\u_16x16.bin  >>u_table.txt
hex2bin.pl  .\utf_fonthex\u_20x20.hex   .\utf_fontbin\u_20x20.bin  >>u_table.txt
hex2bin.pl  .\utf_fonthex\u_24x24.hex   .\utf_fontbin\u_24x24.bin  >>u_table.txt
REM 結合

cd .\utf_fontbin
copy u_4x8a.bin/B +u_5x10a.bin/B +u_6x12a.bin/B +u_7x14a.bin/B +u_8x16a.bin/B +u_10x20a.bin/B +u_12x24a.bin/B u_ank.bin/B
copy u_8x8.bin/B +u_10x10.bin/B +u_12x12.bin/B +u_14x14.bin/B +u_16x16.bin/B +u_20x20.bin/B +u_24x24.bin/B u_full.bin/B
copy u_ank.bin/B +u_full.bin/B u_font.bin/B
cd ..

