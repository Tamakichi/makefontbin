#
# cnvutf.pl �t�H���g�f�[�^(HEX)�����j�R�[�h�ϊ�����
# �g����: cnvutf.pl hex�t�@�C��  �o�̓f�[�^�t�@�C����
#
# ���p�ɂ͕ϊ��e�[�u�� JIS0208.TXT ���K�v
#
# 2014/11/14 �쐬
# 2015/01/27 �C�� 
#

my $tb_filename =  "JIS0208.TXT";

# �����`�F�b�N�A�t�@�C���I�[�v��
($#ARGV == 1) or die "useage :cnvutf.pl bdf�t�@�C����\n";
open($f_tbf,  $tb_filename ) or die "cnvutf.pl: �t�@�C�� $tb_filename  �̃I�[�v���Ɏ��s���܂���.";
open($f_dat,  $ARGV[0]) or "cnvutf.pl: �t�@�C�� $ARGV[0] �̃I�[�v���Ɏ��s���܂���.";
open($f_udat,">",$ARGV[1]) or die "cnvutf.pl: �t�@�C�� $ARGV[1] �̃I�[�v���Ɏ��s���܂���.";

#�e�[�u���̃��[�h
my @table;
while ($line = readline $f_tbf) {
	if ($line =~/^#/) {
		next;
	}
	chomp $line;
	$line =~ s/0x//g;
	($scode, $jcode, $ucode) = split(/\t/,uc $line);
	
	$table{uc $jcode} = uc $ucode;
	#print $table{$jcode}. ":" . $jcode  . "\n"; 

}
close $f_tbf;

#�t�H���g�f�[�^�̃��[�h
while ($line = readline $f_dat) {
	chomp $line;
	($jcode, $data) = split(/\t/, $line);
	if ($table{$jcode} ne "") {
#		$data = $table{$jcode} . "\t" . $jcode ."\t". $data;
		$data = $table{$jcode} . "\t" . $data;
		print $f_udat $data . "\n";
	} else {
		print "cnvutf.pl: jis->ucode�ϊ��G���[ jis=$jcode data=$data\n"
    }
}
close $f_dat;
close $f_udat;

$cmd = "sort $ARGV[1] > temp.dat";
system ($cmd);
$cmd = "copy temp.dat $ARGV[1]";
system ($cmd);
system ("del temp.dat");

