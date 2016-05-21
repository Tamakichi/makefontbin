call clean.bat
call makehex.bat
call makeutfhex.bat
call makejisbin.bat
call makeutfbin.bat
gencode.pl table.txt table.h
gencode.pl u_table.txt u_table.h