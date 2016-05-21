#
# f2hex.pl �t�H���g�f�[�^���o
# 
# 2014/11/14 �쐬
# 2015/01/27 �C��
#
#�y�����z
# bdf�`���̃t�H���g��`�t�@�C������A�t�H���g�R�[�h�ƃt�H���g�f�[�^�𒊏o���ďo�͂���B
#
#�y�g�����z
#  perl f2hex.pl  bdf�t�@�C���� �o�̓f�[�^�t�@�C���� 
#
#�y�o�͌`���z
#  16�i�����R�[�h\t�t�H���g�f�[�^(16�i����)
#  2121	0000000000000000000000000000000000000000000000000000000000000000
#  2122	0000000000000000000000000000000000000000000000002000100008000800
# �@�@�E�E�E
#  7426	00003FBE242224222F222922293E2F20242024213FA1001F1444122221114111  
#

# �����`�F�b�N�A�t�@�C���I�[�v��
($#ARGV == 1) or die "useage :f2hex bdf�t�@�C����\n";
open($f_bdf, $ARGV[0]) or die "f2hex: �t�@�C�� $ARGV[0] �̃I�[�v���Ɏ��s���܂���.";
open($f_data, ">", $ARGV[1]) or "f2hex: �t�@�C�� $ARGV[1] �̃I�[�v���Ɏ��s���܂���.";
$flg_data=0;

#�f�[�^���o���[�v
while ($line = readline $f_bdf) {
	chomp $line;
	$line = uc $line;
	if ($line =~ m/^STARTCHAR/) {
		$code = (split(/ /, $line))[1];
		$code = substr("0000" .$code, -4);
		print $f_data $code  . "\t";
	} elsif ($line =~ m/^BITMAP/) {
		$flg_data=1;
	} elsif ($line =~ m/^ENDCHAR/) {
		$flg_data = 0;
		print $f_data "\n";
	} else {		
		if ($flg_data == 1) {
			print $f_data $line;
		}
	}	
}
close($f_bdf);
close($f_data);
