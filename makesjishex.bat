@echo off

REM 半角フォント
copy  .\fonthex\4x8a.hex    .\sjis_fonthex\s_4x8a.hex
copy  .\fonthex\5x10a.hex   .\sjis_fonthex\s_5x10a.hex
copy  .\fonthex\6x12a.hex   .\sjis_fonthex\s_6x12a.hex
copy  .\fonthex\7x14a.hex   .\sjis_fonthex\s_7x14a.hex
copy  .\fonthex\8x16a.hex   .\sjis_fonthex\s_8x16a.hex
copy  .\fonthex\10x20a.hex  .\sjis_fonthex\s_10x20a.hex
copy  .\fonthex\12x24a.hex  .\sjis_fonthex\s_12x24a.hex
REM 全角フォント
cnvsjis.pl  .\fonthex\8x8.hex     .\sjis_fonthex\s_8x8.hex
cnvsjis.pl  .\fonthex\10x10.hex   .\sjis_fonthex\s_10x10.hex
cnvsjis.pl  .\fonthex\12x12.hex   .\sjis_fonthex\s_12x12.hex
cnvsjis.pl  .\fonthex\14x14.hex   .\sjis_fonthex\s_14x14.hex
cnvsjis.pl  .\fonthex\16x16.hex   .\sjis_fonthex\s_16x16.hex
cnvsjis.pl  .\fonthex\20x20.hex   .\sjis_fonthex\s_20x20.hex
cnvsjis.pl  .\fonthex\24x24.hex   .\sjis_fonthex\s_24x24.hex
