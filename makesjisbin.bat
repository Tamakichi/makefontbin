@echo off
REM 半角フォント
hex2bin.pl  .\sjis_fonthex\s_4x8a.hex    .\sjis_fontbin\s_4x8a.bin   > s_table.txt
hex2bin.pl  .\sjis_fonthex\s_5x10a.hex   .\sjis_fontbin\s_5x10a.bin  >>s_table.txt
hex2bin.pl  .\sjis_fonthex\s_6x12a.hex   .\sjis_fontbin\s_6x12a.bin  >>s_table.txt
hex2bin.pl  .\sjis_fonthex\s_7x14a.hex   .\sjis_fontbin\s_7x14a.bin  >>s_table.txt
hex2bin.pl  .\sjis_fonthex\s_8x16a.hex   .\sjis_fontbin\s_8x16a.bin  >>s_table.txt
hex2bin.pl  .\sjis_fonthex\s_10x20a.hex  .\sjis_fontbin\s_10x20a.bin >>s_table.txt
hex2bin.pl  .\sjis_fonthex\s_12x24a.hex  .\sjis_fontbin\s_12x24a.bin >>s_table.txt
REM 全角フォント
hex2bin.pl  .\sjis_fonthex\s_8x8.hex     .\sjis_fontbin\s_8x8.bin    >>s_table.txt
hex2bin.pl  .\sjis_fonthex\s_10x10.hex   .\sjis_fontbin\s_10x10.bin  >>s_table.txt
hex2bin.pl  .\sjis_fonthex\s_12x12.hex   .\sjis_fontbin\s_12x12.bin  >>s_table.txt
hex2bin.pl  .\sjis_fonthex\s_14x14.hex   .\sjis_fontbin\s_14x14.bin  >>s_table.txt
hex2bin.pl  .\sjis_fonthex\s_16x16.hex   .\sjis_fontbin\s_16x16.bin  >>s_table.txt
hex2bin.pl  .\sjis_fonthex\s_20x20.hex   .\sjis_fontbin\s_20x20.bin  >>s_table.txt
hex2bin.pl  .\sjis_fonthex\s_24x24.hex   .\sjis_fontbin\s_24x24.bin  >>s_table.txt
REM 結合

cd .\sjis_fontbin
copy s_4x8a.bin/B +s_5x10a.bin/B +s_6x12a.bin/B +s_7x14a.bin/B +s_8x16a.bin/B +s_10x20a.bin/B +s_12x24a.bin/B s_ank.bin/B
copy s_8x8.bin/B +s_10x10.bin/B +s_12x12.bin/B +s_14x14.bin/B +s_16x16.bin/B +s_20x20.bin/B +s_24x24.bin/B s_full.bin/B
copy s_ank.bin/B +s_full.bin/B s_font.bin/B
cd ..

