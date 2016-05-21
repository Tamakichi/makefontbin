#
# hex2bin.pl �t�H���g�f�[�^���o�C�i���f�[�^�ɕϊ�����
# �g����: hex2bin.pl fdout.pl�ō쐬�����f�[�^�t�@�C��  �o�̓f�[�^�t�@�C����
#
# 2015/01/27 �쐬
# 2015/01/28 �C��

use File::Basename;

# �����`�F�b�N�A�t�@�C���I�[�v��
($#ARGV == 1) or die "useage hex2bin.pl hex�t�@�C���� bdf�t�@�C����\n";
open($f_hex,  $ARGV[0]) or "fdout: �t�@�C�� $ARGV[0] �̃I�[�v���Ɏ��s���܂���.";

# �o�͂̓o�C�i���[���[�h�ɐݒ肷��
open($f_bin,">",$ARGV[1]) or die "fdout: �t�@�C�� $ARGV[1] �̃I�[�v���Ɏ��s���܂���.";
binmode $f_bin; 

#�C���f�b�N�X���̍쐬
open($f_hex,  $ARGV[0]) or "fdout: �t�@�C�� $ARGV[0] �̃I�[�v���Ɏ��s���܂���.";
while ($line = readline $f_hex) {
	chomp $line;
	($code, $data) = split(/\t/, $line);
	$code =~ s/[^0-9a-fA-F]//g;
	$bin = pack("H*","$code");
	print $f_bin $bin;
}
close $f_dat;

#�f�[�^���̍쐬
$size=0;
$cnt=0;
open($f_hex,  $ARGV[0]) or "fdout: �t�@�C�� $ARGV[0] �̃I�[�v���Ɏ��s���܂���.";
while ($line = readline $f_hex) {
	chomp $line;
	($code, $data) = split(/\t/, $line);

	$data =~ s/[^0-9a-fA-F]//g;
	$bin = pack("H*","$data");
	print $f_bin $bin;
	$size += length($bin);
	$cnt++;	
}
close $f_dat;

close $f_bin;
$fname = basename($ARGV[0]);
print "$fname\t$cnt\t$size\n";	
