# 00_hello_world

## macOS

「この前も説明したが、macOSのllvmは機能が削られていて、この例を実行するには不適当だ。[Homebrew](https://brew.sh/)経由でフル機能のllvmをダウンロードしてほしい。」

「Homebrewのインストール方法については https://brew.sh/ を参照してねー」

「Homebrewが入った状態で下記のコマンドを実行すれば、llvmと、デバッグ用のqemuがインストールされる。」

```
brew install llvm qemu
```

「正しくインストールされていれば、こんな感じでバージョン情報が見れるはずだよ」

```
$ qemu-system-x86_64 --version
QEMU emulator version 4.1.1
Copyright (c) 2003-2019 Fabrice Bellard and the QEMU Project developers
```
```
$ /usr/local/opt/llvm/bin/clang++ --version
clang version 9.0.0 (tags/RELEASE_900/final)
Target: x86_64-apple-darwin19.0.0
Thread model: posix
InstalledDir: /usr/local/opt/llvm/bin
```

「バージョンがこれより新しくても問題ないはずだが、もしうまくいかない場合は私たちに言ってほしい。あとは、以下のようにすればビルドと実行ができる。」

```
./build.sh hello.cc
```

```
./qemu.sh
```

「他に質問があれば、issueを立ててもらえば対応するからねー」

「「Happy Hacking!」」

---

検証済み環境

```
$ sw_vers
ProductName:    Mac OS X
ProductVersion: 10.15.1
BuildVersion:   19B88
```

