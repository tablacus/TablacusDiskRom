Tabacus DISK ROM for MSX Gaku

# 機能概略

このソフトはMSXのDISK環境のソフトをROM化するソフトです。  
カラクリとしてはインタースロットコールのCALSLTをフックして低レベルのディスクアクセスをROMディスクに置き換えます。  
インタースロットコールのCALSLTをフックするのにRS-232Cとカセット用パラメータのワークエリアを使用しています。RS-232Cやカセットを使用しているソフトは動作しないと思われます。  
[LSX-Dodgers](https://github.com/tablacus/LSX-Dodgers)と違ってBASICのソフトをROM化することができますが、DISK BIOSが入っているMSXに限ります。LSX-DodgersはC-BIOSでも動作可能

# ダウンロード

以下のページの Assets からダウンロードできます。  
https://github.com/tablacus/TablacusDiskRom/releases

# DSKファイルのROM化方法

1. Windowsのコマンドラインで`msxcat.bat`を実行してシステムとディスクイメージ`ROM.DSK`を連結する

※DISKROM.BIN(16KB)の後ろに2DDのDSKファイルを連結しさえすればやり方は何を使ってもOKです。

2DDの２枚組をROM化する事もできます。誑かしているだけなので２ドライブ使うには２ドライブマシンに限るのかと思いましたが、エミュレータフロッピー１台にしても２枚目をBドライブとして見ることができました。

1. DISKROM.BIN(16KB)の後ろに2DDのDSKファイルを2つ連結してください。

Windowsのコマンドラインで２枚のイメージファイルを連結する例
```bat
copy /b DISKROM.BIN + DISK1.DSK + DISK2.dsk DISK1_2.ROM
```

# 実行方法

1. ROMスロットに`MSX.ROM`をセット
2. ROMイメージのタイプを`ASCII-16K`、`ASCII-8K`(2MB以下の場合のみ)、`Konami-8K`(512MB以下の場合のみ)のいずれかに設定
3. 起動しない場合はリセットする

## ライセンス

[MIT License](https://github.com/tablacus/TablacusDiskRom/blob/main/LICENSE.TXT)

## 感謝

[HRA!](https://twitter.com/thara1129)さんのMSX Memory Architecture のお陰でメガROMに対応することができました。
本当にありがたいです。

https://github.com/hra1129/msx_documents/blob/main/memory/MSX_memory_architecture.pdf
