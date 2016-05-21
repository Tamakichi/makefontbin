#
# cnvutf.pl フォントデータ(HEX)をユニコード変換する
# 使い方: cnvutf.pl hexファイル  出力データファイル名
#
# 利用には変換テーブル JIS0208.TXT が必要
#
# 2014/11/14 作成
# 2015/01/27 修正 
#

my $tb_filename =  "JIS0208.TXT";

# 引数チェック、ファイルオープン
($#ARGV == 1) or die "useage :cnvutf.pl bdfファイル名\n";
open($f_tbf,  $tb_filename ) or die "cnvutf.pl: ファイル $tb_filename  のオープンに失敗しました.";
open($f_dat,  $ARGV[0]) or "cnvutf.pl: ファイル $ARGV[0] のオープンに失敗しました.";
open($f_udat,">",$ARGV[1]) or die "cnvutf.pl: ファイル $ARGV[1] のオープンに失敗しました.";

#テーブルのロード
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

#フォントデータのロード
while ($line = readline $f_dat) {
	chomp $line;
	($jcode, $data) = split(/\t/, $line);
	if ($table{$jcode} ne "") {
#		$data = $table{$jcode} . "\t" . $jcode ."\t". $data;
		$data = $table{$jcode} . "\t" . $data;
		print $f_udat $data . "\n";
	} else {
		print "cnvutf.pl: jis->ucode変換エラー jis=$jcode data=$data\n"
    }
}
close $f_dat;
close $f_udat;

$cmd = "sort $ARGV[1] > temp.dat";
system ($cmd);
$cmd = "copy temp.dat $ARGV[1]";
system ($cmd);
system ("del temp.dat");

