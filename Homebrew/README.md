# Homebrew 設定

以下は、`Brewfile` に記載された内容を `brew` コマンドに変換したスクリプトです。  
これをターミナルで順に実行すれば、同じ状態を再現できます。

## インストール前

### Brewfile にインストールしているパッケージのバックアップを取る

Brewfile を作成したい場所で以下のコマンドを実行します。

```bash
brew install rcmdnk/file/brew-file
```

また、以下を `.bashrc` or `.zshrc` 自分のシェル環境に合わせて記載します。

```bash
# Homebrew ラッパー (brew-wrap)
BREW_WRAP_PATH="/opt/homebrew/etc/brew-wrap"
[[ -f "$BREW_WRAP_PATH" ]] && source "$BREW_WRAP_PATH"
```

### Brewfile を生成する

初めて利用する時にはまず Brewfile の生成をします。  
以下のコマンドを実行すると生成されます。

```bash
brew init
```

ファイルは `~/.config/brewfile/Brewfile` に置かれます。  
以下のコマンドでファイルの内容が確認できます。

```bash
brew file cat
```

## 🔹 Homebrew Tap の追加

```bash
brew tap homebrew/autoupdate
brew tap rcmdnk/file
```

## 🔹 brew install（CLI ツールなど）

```bash
brew install aom
brew install asdf
brew install bat
brew install docker
brew install docker-buildx
brew install docker-compose
brew install fzf
brew install gh
brew install kubernetes-cli
brew install pinentry-mac
brew install rbenv
brew install starship
brew install terraform
brew install tree
brew install zsh-async
brew install zsh-autosuggestions
brew install zsh-completions
brew install zsh-syntax-highlighting
```

## 🔹 brew install --cask（GUI アプリなど）

```bash
brew install --cask 1password
brew install --cask alt-tab
brew install --cask appcleaner
brew install --cask arc
brew install --cask coteditor
brew install --cask cursor
brew install --cask deepl
brew install --cask discord
brew install --cask displaylink
brew install --cask elgato-stream-deck
brew install --cask figma
brew install --cask google-cloud-sdk
brew install --cask google-drive
brew install --cask jordanbaird-ice
brew install --cask karabiner-elements
brew install --cask logi-options+
brew install --cask notion
brew install --cask onyx
brew install --cask raycast
brew install --cask rectangle
brew install --cask slack
brew install --cask spotify
brew install --cask the-unarchiver
brew install --cask thunderbird
brew install --cask warp
brew install --cask zoom
```

## 🔹 VSCode 拡張のインストール

```bash
code --install-extension 4ops.terraform
code --install-extension artdiniz.quitcontrol-vscode
code --install-extension davidanson.vscode-markdownlint
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension foxundermoon.shell-format
code --install-extension hashicorp.terraform
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-ceintl.vscode-language-pack-ja
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode.remote-explorer
code --install-extension negokaz.zenn-editor
code --install-extension pkief.material-icon-theme
code --install-extension redhat.vscode-yaml
code --install-extension sourcegraph.cody-ai
code --install-extension vscodevim.vim
code --install-extension waddy.zenn-style-markdown-preview
code --install-extension wesbos.theme-cobalt2
code --install-extension yzhang.markdown-all-in-one
code --install-extension zenn.zenn-preview
```

## 一括実行スクリプト

すべてのコマンドを一度に実行したい場合は、以下のスクリプトを使用してください：

```bash
#!/bin/bash

# Homebrew Tap の追加
brew tap homebrew/autoupdate
brew tap rcmdnk/file

# CLIツールのインストール
brew install aom asdf bat docker docker-buildx docker-compose fzf gh kubernetes-cli pinentry-mac rbenv starship terraform tree zsh-async zsh-autosuggestions zsh-completions zsh-syntax-highlighting

# GUIアプリのインストール
brew install --cask 1password alt-tab appcleaner arc coteditor cursor deepl discord displaylink elgato-stream-deck figma google-cloud-sdk google-drive jordanbaird-ice karabiner-elements logi-options+ notion onyx raycast rectangle slack spotify the-unarchiver thunderbird warp zoom

# VSCode拡張のインストール
code --install-extension 4ops.terraform
code --install-extension artdiniz.quitcontrol-vscode
code --install-extension davidanson.vscode-markdownlint
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension foxundermoon.shell-format
code --install-extension hashicorp.terraform
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-ceintl.vscode-language-pack-ja
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode.remote-explorer
code --install-extension negokaz.zenn-editor
code --install-extension pkief.material-icon-theme
code --install-extension redhat.vscode-yaml
code --install-extension sourcegraph.cody-ai
code --install-extension vscodevim.vim
code --install-extension waddy.zenn-style-markdown-preview
code --install-extension wesbos.theme-cobalt2
code --install-extension yzhang.markdown-all-in-one
code --install-extension zenn.zenn-preview

echo "インストールが完了しました！"
```

## 設定完了後

(前回、もしくは今回) 環境構築を終えたあとに以下のコマンドを実行します。

```bash
brew bundle dump --global
```

Homebrew を通してインストールしたパッケージやアプリのリストを `~/.Brewfile` に出力します。

```.Brewfile
───────┬───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
       │ File: Brewfile
───────┼───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   1   │ tap "homebrew/autoupdate"
   2   │ tap "rcmdnk/file"
   3   │ brew "aom"
   4   │ brew "asdf"
   5   │ brew "bat"
   6   │ brew "docker"
   7   │ brew "docker-buildx"
   8   │ brew "docker-compose"
   9   │ brew "fzf"
  10   │ brew "gh"
  11   │ brew "kubernetes-cli"
  12   │ brew "pinentry-mac"
  13   │ brew "rbenv"
  14   │ brew "starship"
  15   │ brew "terraform"
  16   │ brew "tree"
  17   │ brew "zsh-async"
  18   │ brew "zsh-autosuggestions"
  19   │ brew "zsh-completions"
  20   │ brew "zsh-syntax-highlighting"
  21   │ cask "1password"
  22   │ cask "alt-tab"
  23   │ cask "appcleaner"
  24   │ cask "arc"
  25   │ cask "coteditor"
  26   │ cask "cursor"
  27   │ cask "deepl"
  28   │ cask "discord"
  29   │ cask "displaylink"
  30   │ cask "elgato-stream-deck"
  31   │ cask "figma"
  32   │ cask "google-cloud-sdk"
  33   │ cask "google-drive"
  34   │ cask "jordanbaird-ice"
  35   │ cask "karabiner-elements"
  36   │ cask "logi-options+"
  37   │ cask "notion"
  38   │ cask "onyx"
  39   │ cask "raycast"
  40   │ cask "rectangle"
  41   │ cask "slack"
  42   │ cask "spotify"
  43   │ cask "the-unarchiver"
  44   │ cask "thunderbird"
  45   │ cask "warp"
  46   │ cask "zoom"
  47   │ vscode "4ops.terraform"
  48   │ vscode "artdiniz.quitcontrol-vscode"
  49   │ vscode "davidanson.vscode-markdownlint"
  50   │ vscode "eamodio.gitlens"
  51   │ vscode "esbenp.prettier-vscode"
  52   │ vscode "foxundermoon.shell-format"
  53   │ vscode "hashicorp.terraform"
  54   │ vscode "ms-azuretools.vscode-docker"
  55   │ vscode "ms-ceintl.vscode-language-pack-ja"
  56   │ vscode "ms-kubernetes-tools.vscode-kubernetes-tools"
  57   │ vscode "ms-vscode-remote.remote-containers"
  58   │ vscode "ms-vscode-remote.remote-ssh"
  59   │ vscode "ms-vscode-remote.remote-ssh-edit"
  60   │ vscode "ms-vscode.remote-explorer"
  61   │ vscode "negokaz.zenn-editor"
  62   │ vscode "pkief.material-icon-theme"
  63   │ vscode "redhat.vscode-yaml"
  64   │ vscode "sourcegraph.cody-ai"
  65   │ vscode "vscodevim.vim"
  66   │ vscode "waddy.zenn-style-markdown-preview"
  67   │ vscode "wesbos.theme-cobalt2"
  68   │ vscode "yzhang.markdown-all-in-one"
  69   │ vscode "zenn.zenn-preview"
───────┴───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
```
