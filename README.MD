Tabacus DISK ROM for MSX Gaku

# 機能概略

このソフトはMSXのDISK環境のソフトをROM化するソフトです。  
カラクリとしてはインタースロットコールのCALSLTをフックして低レベルのディスクアクセスをROMディスクに置き換えます。  
インタースロットコールのCALSLTをフックするのにMath-Packのワークエリアを使用しています。Math-Packを使用しているソフトは動作しないと思われます。  
[LSX-Dodgers](https://github.com/tablacus/LSX-Dodgers)と違ってBASICのソフトをROM化することができますが、DISK BIOSが入っているMSXに限ります。LSX-DodgersはC-BIOSでも動作可能  
今のところ、2DD(720KB)一枚をROM化することができます。

# ダウンロード

以下のページの Assets からダウンロードできます。  
https://github.com/tablacus/TablacusDiskRom/releases

# DSKファイルのROM化方法

1. Windowsのコマンドラインで`msxcat.bat`を実行してシステムとディスクイメージ`ROM.DSK`を連結する

※DISKROM.BIN(16KB)の後ろに2DDのDSKファイルを連結しさえすればやり方は何を使ってもOKです。

# 実行方法

1. ROMスロットに`MSX.ROM`をセット
2. ROMイメージのタイプを`ASCII-16K`、`ASCII-8K`(2MB以下の場合のみ)、`Konami-8K`(512MB以下の場合のみ)のいずれかに設定
3. 起動しない場合はリセットする

## ライセンス  
https://github.com/tablacus/TablacusDiskRom/blob/main/LICENSE.TXT
MIT License のオープンソースです。  
