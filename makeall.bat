call clean.bat
call makehex.bat
call makeutfhex.bat
call makesjishex.bat
call makejisbin.bat
call makeutfbin.bat
call makesjisbin.bat
gencode.pl table.txt table.h
gencode.pl u_table.txt u_table.h
gencode.pl s_table.txt s_table.h