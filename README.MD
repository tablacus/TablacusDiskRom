[English](https://github.com/tablacus/TablacusDiskRom/blob/main/README_EN.MD)

# Tabacus DISK ROM for MSX Gaku

## 機能概略

このソフトはMSXのDISK環境のソフトをROM化するソフトです。  
ROM起動後にDRVTBLで使うスロットを書き換えて低レベルのディスクアクセスをROMディスクに置き換えます。  
RS-232Cのワークエリアを使用しています。RS-232Cを変更するソフトは動作しないと思われます。

[LSX-Dodgers](https://github.com/tablacus/LSX-Dodgers)と違ってBASICのソフトをROM化することができますが、DISK BIOSが入っているMSXに限ります。LSX-DodgersはC-BIOSでも動作可能

[Tabacus DISK ROM Lite](https://github.com/tablacus/TablacusDiskRomLite)はBASIC専用ですが、DISK BIOSが入っていないMSXでも動作します。

ROM DISKが1枚の場合はAドライブがROM DISKにBドライブがフロッピーのAドライブになります。

## ダウンロード

以下のページの Assets からダウンロードできます。  
https://github.com/tablacus/TablacusDiskRom/releases

## DSKファイルのROM化方法

1. Windowsのコマンドラインで`msxcat.bat`を実行してシステムとディスクイメージ`ROM.DSK`を連結する

※DISKROM.BIN(8KB)の後ろに2DDのDSKファイルを連結しさえすればやり方は何を使ってもOKです。

2DDの２枚組をROM化する事もできます。誑かしているだけなので２ドライブ使うには２ドライブマシンに限るのかと思いましたが、エミュレータフロッピー１台にしても２枚目をBドライブとして見ることができました。

1. DISKROM.BIN(8KB)の後ろに2DDのDSKファイルを2つ連結してください。

Windowsのコマンドラインで２枚のイメージファイルを連結する例
```bat
copy /b DISKROM.BIN + DISK1.DSK + DISK2.dsk DISK1_2.ROM
```

## 実行方法

1. ROMスロットに`MSX.ROM`をセット
2. ROMイメージのタイプを`ASCII-8K`(2MB以下の場合のみ)、`Konami-8K`か`Konami-SCC`(512MB以下の場合のみ)のいずれかに設定
3. 起動しない場合はリセットする


## ライセンス

[MIT License](https://github.com/tablacus/TablacusDiskRom/blob/main/LICENSE.TXT)
MIT License のオープンソースです。  

※有料、無料にかかわらず同人ソフトなどに組み込んで配布してもらっても問題ありません。

## 感謝

[HRA!](https://twitter.com/thara1129)さんのMSX Memory Architecture のお陰でメガROMに対応することができました。
本当にありがたいです。

https://github.com/hra1129/msx_documents/blob/main/memory/MSX_memory_architecture.pdf
