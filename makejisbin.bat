@echo off
REM 半角フォント
hex2bin.pl  .\fonthex\4x8a.hex    .\jis_fontbin\4x8a.bin   > table.txt
hex2bin.pl  .\fonthex\5x10a.hex   .\jis_fontbin\5x10a.bin  >>table.txt
hex2bin.pl  .\fonthex\6x12a.hex   .\jis_fontbin\6x12a.bin  >>table.txt
hex2bin.pl  .\fonthex\7x14a.hex   .\jis_fontbin\7x14a.bin  >>table.txt
hex2bin.pl  .\fonthex\8x16a.hex   .\jis_fontbin\8x16a.bin  >>table.txt
hex2bin.pl  .\fonthex\10x20a.hex  .\jis_fontbin\10x20a.bin >>table.txt
hex2bin.pl  .\fonthex\12x24a.hex  .\jis_fontbin\12x24a.bin >>table.txt
REM 全角フォント
hex2bin.pl  .\fonthex\8x8.hex     .\jis_fontbin\8x8.bin    >>table.txt
hex2bin.pl  .\fonthex\10x10.hex   .\jis_fontbin\10x10.bin  >>table.txt
hex2bin.pl  .\fonthex\12x12.hex   .\jis_fontbin\12x12.bin  >>table.txt
hex2bin.pl  .\fonthex\14x14.hex   .\jis_fontbin\14x14.bin  >>table.txt
hex2bin.pl  .\fonthex\16x16.hex   .\jis_fontbin\16x16.bin  >>table.txt
hex2bin.pl  .\fonthex\20x20.hex   .\jis_fontbin\20x20.bin  >>table.txt
hex2bin.pl  .\fonthex\24x24.hex   .\jis_fontbin\24x24.bin  >>table.txt
REM 結合

cd .\jis_fontbin
copy 4x8a.bin/B +5x10a.bin/B +6x12a.bin/B +7x14a.bin/B +8x16a.bin/B +10x20a.bin/B +12x24a.bin/B ank.bin/B
copy 8x8.bin/B +10x10.bin/B +12x12.bin/B +14x14.bin/B +16x16.bin/B +20x20.bin/B +24x24.bin/B full.bin/B
copy ank.bin/B +full.bin/B font.bin/B
cd ..

