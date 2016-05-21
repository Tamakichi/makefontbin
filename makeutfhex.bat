@echo off

REM 半角フォント
copy  .\fonthex\4x8a.hex     .\utf_fonthex\u_4x8a.hex
copy  .\fonthex\5x10a.hex   .\utf_fonthex\u_5x10a.hex
copy  .\fonthex\6x12a.hex   .\utf_fonthex\u_6x12a.hex
copy  .\fonthex\7x14a.hex   .\utf_fonthex\u_7x14a.hex
copy  .\fonthex\8x16a.hex   .\utf_fonthex\u_8x16a.hex
copy  .\fonthex\10x20a.hex  .\utf_fonthex\u_10x20a.hex
copy  .\fonthex\12x24a.hex  .\utf_fonthex\u_12x24a.hex
REM 全角フォント
cnvutf.pl  .\fonthex\8x8.hex     .\utf_fonthex\u_8x8.hex
cnvutf.pl  .\fonthex\10x10.hex   .\utf_fonthex\u_10x10.hex
cnvutf.pl  .\fonthex\12x12.hex   .\utf_fonthex\u_12x12.hex
cnvutf.pl  .\fonthex\14x14.hex   .\utf_fonthex\u_14x14.hex
cnvutf.pl  .\fonthex\16x16.hex   .\utf_fonthex\u_16x16.hex
cnvutf.pl  .\fonthex\20x20.hex   .\utf_fonthex\u_20x20.hex
cnvutf.pl  .\fonthex\24x24.hex   .\utf_fonthex\u_24x24.hex
