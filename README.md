# 個人用nvim設定ファイル

## Windows(PowerShell)で使う際に必要な設定

### 「No C compiler found! "cc", "gcc", "clang", "cl", "zig" are not executable.」のエラーを直す
C言語用のコンパイラを入れることで直る。
Mingwを入れる場合の対応は下記。
PowerShellを管理者権限で実行し、下記を実行する。

#### chocolately(パッケージ管理システム)
> Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

> choco --version
2.3.0

#### chocolatelyを使ってmingwをインストール
> choco install mingw


#### インストールしたmingwのPATHを通す
> refreshenv

上記対応後、nvimを実行してエラーが直っていることを確認する。

### 絵文字用のフォントの文字化けを直す
Nerdフォントを入れる必要がある。
下記の「HackGen_NF_v2.10.0.zip」をダウンロードしてHackGen35 系統を実行。（Regular、Bold）
https://github.com/yuru7/HackGen

PowerShellの設定を開いて、外観のフォントフェイスを変更する。

### telescopeの日本語文字化けを直す
1. Powershellで以下を実行
> notepad $PROFILE
2. 末尾に以下を追記
> chcp 65001
> $OutputEncoding = [Console]::OutputEncoding = [Text.UTF8Encoding]::UTF8
3. Powershellで以下を実行
> winget install 'ripgrep msvc'


### Powershell上でgitの補完を有効にする
管理者権限でPowershellを実行する。
下記を実行する。
> Install-Module posh-git -Scope CurrentUser -Force

その後、PowerShellのプロファイルを開く(Microsoft.PowerShell_profile.ps1)
> notepad $PROFILE

末尾に下記を追記
> Import-Module posh-git
このままだと、Powershellを開いた際に以下のエラーが出る。
> このシステムではスクリプトの実行が無効になっているため...

PowerShellを管理者権限で開き、実行ポリシーを変更
> Set-ExecutionPolicy RemoteSigned

### MarkdownをHTMLに変換する


