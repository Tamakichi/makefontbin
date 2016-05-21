
arduino 用 フォントライブラリ exfont用 フォント作成ツール 補足マニュアル 

作成日 2015/01/28
作成者 たま吉さん

はじめに

このドキュメントは、arduino用フォントライブラリ exfont で利用するためのフォントデータを
作成するツールの補足説明です。
本ツールはWindows 8.1にて利用することを前提に作成しています。
また、本ツールの利用にはperl(開発環境 ActivePerl 5.16.3 Build 1604)が必要です。

必要ファイルの入手
フォントデータの作成には次のファイルをダウンロードして解凍し、
所定のフォルダに配置して下さい。

1)8×8 ドット日本語フォント「美咲フォント」 X11 BDF 形式
   HP: http://www.geocities.jp/littlimi/misaki.htm
   ダウンロードリンク: http://www.geocities.jp/littlimi/arc/misaki/misaki_bdf_2012-06-03.tar.gz
   ファイル: misaki_bdf_2012-06-03.tar.gz
   解凍したファイルから、次のファイルを .\bdf フォルダに配置して下さい。 
    misaki_4x8_iso8859.bdf
    misaki_gothic.bdf

2)/efont/ 日本語 ビットマップフォント集
   HP: http://openlab.ring.gr.jp/efont/japanese/index.html.ja
   ダウンロードリンク: http://openlab.ring.gr.jp/efont/dist/japanese/japanese-bitmap-fonts-0.4.5.tar.bz2
   ファイル: japanese-bitmap-fonts-0.4.5.tar.bz2
   解凍したファイルから、次のファイルを .\bdf フォルダに配置して下さい。 
    .\kappa20\10x20a.bdf
    .\kappa20\k20.bdf
    .\naga10\5x10a.bdf
    .\naga10\knj10.bdf
    .\shinonome12\shnm6x12a.bdf
    .\shinonome12\shnmk12.bdf
    .\shinonome14\shnm7x14a.bdf
    .\shinonome14\shnmk14.bdf
    .\shinonome16\shnm8x16a.bdf
    .\shinonome16\shnmk16.bdf
    .\x11\12x24a.bdf
    .\x11\jiskan24.bdf

使い方
  1)バイナリフォントデータの作成
     makeall.bat を実行して下さい。
     これにより、次のバイナリフォント等を作成します。
     沢山のファイルを生成しますが、利用するファイルは、次の２つのみです。
      .\utf_fontbin\u_font.bin      … 全種半角全角結合フォント
      .u_table.h   … Arduinoライブラリ exfont用フォントテーブル構造体ソース

  2)インストール等
     u_font.bin を　フラッシュメモリ WQ2564BVに書込みます。
     u_table.h を    Arduinoライブラリ exfont のディレクトリ に格納します。      

作成物詳細
    ・JISコード順 バイナリフォントファイル(.\jis_fontbin\ フォルダ下)
       個別フォント(Wxh.bin Wは幅、Hは高さ、aは半角)
        10x10.bin
        10x20a.bin
        12x12.bin
        12x24a.bin
        14x14.bin
        16x16.bin
        20x20.bin
        24x24.bin
        4x8a.bin
        5x10a.bin
        6x12a.bin
        7x14a.bin
        8x16a.bin
        8x8.bin
      結合フォント 
        ank.bin       … 全種半角結合フォント
        font.bin      … 全種半角全角結合フォント
        full.bin        … 全種全角結合フォント

    ・UTF-16コード順 バイナリフォントファイル(.\utf_fontbin\ フォルダ下)
       個別フォント(Wxh.bin Wは幅、Hは高さ、aは半角)
        u_10x10.bin
        u_10x20a.bin
        u_12x12.bin
        u_12x24a.bin
        u_14x14.bin
        u_16x16.bin
        u_20x20.bin
        u_24x24.bin
        u_4x8a.bin
        u_5x10a.bin
        u_6x12a.bin
        u_7x14a.bin
        u_8x16a.bin
        u_8x8.bin
      結合フォント 
        u_ank.bin       … 全種半角結合フォント
        u_font.bin      … 全種半角全角結合フォント
        u_full.bin        … 全種全角結合フォント
  
   ・テキスト形式フォントデータ
      .\fonthex、.\utf_fonthex に格納
      ファイル名はバイナリフォント名に対応、ただし拡張子は.hex
 
   ・Arduinoライブラリ exfont用フォントテーブル構造体ソース
      u_table.h    … UTF16コード漢字用テーブル
      table.h        … JISコード漢字用テーブル(未対応)
     u_table.txt, table.txt … ソース作成用

      このテーブルは下記のようになっており、 u_font.bin (全種半角全角結合フォント)内の
      データ配置を示しています。
      各フィールドの意味は、左から
        インデックス部先頭アドレス、データ部先頭アドレス、格納フォント数、
        フォント高さ(ドット)、フォント幅（ドット)、１フォント当たりのバイト数
     となります。
      static FontInfo _finfo[EXFONTNUM] = {
	{ 0x000000, 0x00017E,  191,  8,  4,  8 }, // 0:u_4x8a.hex
	{ 0x000776, 0x000976,  256, 10,  5, 10 }, // 1:u_5x10a.hex
	{ 0x001376, 0x001576,  256, 12,  6, 12 }, // 2:u_6x12a.hex
	{ 0x002176, 0x002330,  221, 14,  7, 14 }, // 3:u_7x14a.hex
	{ 0x002F46, 0x003100,  221, 16,  8, 16 }, // 4:u_8x16a.hex
	{ 0x003ED0, 0x00404C,  190, 40, 10, 20 }, // 5:u_10x20a.hex
	{ 0x005DFC, 0x005FB6,  221, 48, 12, 24 }, // 6:u_12x24a.hex
	{ 0x008926, 0x00BEE4, 6879,  8,  8,  8 }, // 7:u_8x8.hex
	{ 0x0195DC, 0x01CB96, 6877, 20, 10, 10 }, // 8:u_10x10.hex
	{ 0x03E4DA, 0x041A98, 6879, 24, 12, 12 }, // 9:u_12x12.hex
	{ 0x069F80, 0x06D53E, 6879, 28, 14, 14 }, // 10:u_14x14.hex
	{ 0x09C5A2, 0x09FB60, 6879, 32, 16, 16 }, // 11:u_16x16.hex
	{ 0x0D5740, 0x0D8CFE, 6879, 60, 20, 20 }, // 12:u_20x20.hex
	{ 0x13D942, 0x140EFC, 6877, 72, 24, 24 }, // 13:u_24x24.hex
     };

 以上