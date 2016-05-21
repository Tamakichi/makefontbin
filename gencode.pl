#
# gencode.pl ライブラリ用コードの生成
# 使い方: gencode.pl テーブルファイル名 出力データファイル名
##
# 2015/01/27 作成
# 
#

# 引数チェック、ファイルオープン
($#ARGV == 1) or die "useage :gencode.pl テーブルファイル名 出力データファイル名\n";
open($f_tbl,  $ARGV[0]) or "gencode.pl: ファイル $ARGV[0] のオープンに失敗しました.";
open($f_ccd,">",$ARGV[1]) or die "gencode.pl: ファイル $ARGV[1] のオープンに失敗しました.";

@fnt = (
 [8,  4, 8],
 [10, 5,10],
 [12, 6,12],
 [14, 7,14],
 [16, 8,16],
 [40,10,20],
 [48,12,24],
 [8,  8, 8],
 [20,10,10],
 [24,12,12],
 [28,14,14],
 [32,16,16],
 [60,20,20],
 [72,24,24]
);

#テーブルのロード
$idx=0;
my @table;
while ($line = readline $f_tbl) {
	if ($line =~/^#/) {
		next;
	}	
	chomp $line;
	($d1,$d2,$d3) = split(/\t/, $line);
	$table[$idx] = [$d1,$d2,$d3];
	$idx++;
}
close $f_tbl;

#C言語コード生成
$addr=0;

print $f_ccd "static FontInfo _finfo[EXFONTNUM] = {\n";
for ($i=0; $i <@fnt; $i++) {
	$c1 = sprintf "0x%06X", $addr;
	$addr += $table[$i][1]*2;
	$c2 = sprintf "0x%06X", $addr;
	$addr += $table[$i][2];
	$c3 = sprintf "%4D", $table[$i][1];
	$c4 = sprintf "%2D", $fnt[$i][0];
	$c5 = sprintf "%2D", $fnt[$i][1];
	$c6 = sprintf "%2D", $fnt[$i][2];
	$c7 = $table[$i][0]; 
	 
	print $f_ccd "\t{ $c1, $c2, $c3, $c4, $c5, $c6 }, // $i:$c7\n";
}
print $f_ccd "};\n";
close $f_ccd;
