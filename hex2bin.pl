#
# hex2bin.pl フォントデータをバイナリデータに変換する
# 使い方: hex2bin.pl fdout.plで作成したデータファイル  出力データファイル名
#
# 2015/01/27 作成
# 2015/01/28 修正

use File::Basename;

# 引数チェック、ファイルオープン
($#ARGV == 1) or die "useage hex2bin.pl hexファイル名 bdfファイル名\n";
open($f_hex,  $ARGV[0]) or "fdout: ファイル $ARGV[0] のオープンに失敗しました.";

# 出力はバイナリーモードに設定する
open($f_bin,">",$ARGV[1]) or die "fdout: ファイル $ARGV[1] のオープンに失敗しました.";
binmode $f_bin; 

#インデックス部の作成
open($f_hex,  $ARGV[0]) or "fdout: ファイル $ARGV[0] のオープンに失敗しました.";
while ($line = readline $f_hex) {
	chomp $line;
	($code, $data) = split(/\t/, $line);
	$code =~ s/[^0-9a-fA-F]//g;
	$bin = pack("H*","$code");
	print $f_bin $bin;
}
close $f_dat;

#データ部の作成
$size=0;
$cnt=0;
open($f_hex,  $ARGV[0]) or "fdout: ファイル $ARGV[0] のオープンに失敗しました.";
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
