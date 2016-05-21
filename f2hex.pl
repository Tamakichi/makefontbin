#
# f2hex.pl フォントデータ抽出
# 
# 2014/11/14 作成
# 2015/01/27 修正
#
#【説明】
# bdf形式のフォント定義ファイルから、フォントコードとフォントデータを抽出して出力する。
#
#【使い方】
#  perl f2hex.pl  bdfファイル名 出力データファイル名 
#
#【出力形式】
#  16進文字コード\tフォントデータ(16進数列)
#  2121	0000000000000000000000000000000000000000000000000000000000000000
#  2122	0000000000000000000000000000000000000000000000002000100008000800
# 　　・・・
#  7426	00003FBE242224222F222922293E2F20242024213FA1001F1444122221114111  
#

# 引数チェック、ファイルオープン
($#ARGV == 1) or die "useage :f2hex bdfファイル名\n";
open($f_bdf, $ARGV[0]) or die "f2hex: ファイル $ARGV[0] のオープンに失敗しました.";
open($f_data, ">", $ARGV[1]) or "f2hex: ファイル $ARGV[1] のオープンに失敗しました.";
$flg_data=0;

#データ抽出ループ
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
