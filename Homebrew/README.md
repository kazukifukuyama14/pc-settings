# Homebrew 設定

以下は、`.Brewfile` に記載された内容を `brew` コマンドに変換したスクリプトです。  
これをターミナルで順に実行すれば、同じ状態を再現できます。

## 🔹 Homebrew Tap の追加

```bash
brew tap homebrew/autoupdate
```

## 🔹 brew install（CLI ツールなど）

```bash
brew install aom
brew install asdf
brew install docker
brew install docker-buildx
brew install docker-compose
brew install fzf
brew install gh
brew install pinentry-mac
brew install rbenv
brew install starship
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
code --install-extension hashicorp.terraform
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-ceintl.vscode-language-pack-ja
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-vscode-remote.remote-containers
code --install-extension negokaz.zenn-editor
code --install-extension redhat.vscode-yaml
code --install-extension sourcegraph.cody-ai
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

# CLIツールのインストール
brew install aom asdf docker docker-buildx docker-compose fzf gh pinentry-mac rbenv starship tree zsh-async zsh-autosuggestions zsh-completions zsh-syntax-highlighting

# GUIアプリのインストール
brew install --cask 1password alt-tab appcleaner arc coteditor cursor deepl discord displaylink elgato-stream-deck figma google-cloud-sdk google-drive jordanbaird-ice karabiner-elements logi-options+ notion onyx raycast rectangle slack spotify the-unarchiver thunderbird warp zoom

# VSCode拡張のインストール
code --install-extension 4ops.terraform
code --install-extension artdiniz.quitcontrol-vscode
code --install-extension davidanson.vscode-markdownlint
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension hashicorp.terraform
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-ceintl.vscode-language-pack-ja
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-vscode-remote.remote-containers
code --install-extension negokaz.zenn-editor
code --install-extension redhat.vscode-yaml
code --install-extension sourcegraph.cody-ai
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

Homebrew を通してインストールしたパッケージやアプリのリストを ~/.Brewfile に出力します。

```.Brewfile
───────┬───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
       │ File: /Users/wan0ri/.Brewfile
───────┼───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   1   │ tap "homebrew/autoupdate"
   2   │ brew "aom"
   3   │ brew "asdf"
   4   │ brew "docker"
   5   │ brew "docker-buildx"
   6   │ brew "docker-compose"
   7   │ brew "fzf"
   8   │ brew "gh"
   9   │ brew "pinentry-mac"
  10   │ brew "rbenv"
  11   │ brew "starship"
  12   │ brew "zsh-async"
  13   │ brew "zsh-autosuggestions"
  14   │ brew "zsh-completions"
  15   │ brew "zsh-syntax-highlighting"
  16   │ cask "1password"
  17   │ cask "alt-tab"
  18   │ cask "appcleaner"
  19   │ cask "arc"
  20   │ cask "coteditor"
  21   │ cask "cursor"
  22   │ cask "deepl"
  23   │ cask "discord"
  24   │ cask "displaylink"
  25   │ cask "elgato-stream-deck"
  26   │ cask "figma"
  27   │ cask "google-cloud-sdk"
  28   │ cask "google-drive"
  29   │ cask "jordanbaird-ice"
  30   │ cask "karabiner-elements"
  31   │ cask "logi-options+"
  32   │ cask "notion"
  33   │ cask "onyx"
  34   │ cask "raycast"
  35   │ cask "rectangle"
  36   │ cask "slack"
  37   │ cask "spotify"
  38   │ cask "the-unarchiver"
  39   │ cask "thunderbird"
  40   │ cask "warp"
  41   │ cask "zoom"
  42   │ vscode "4ops.terraform"
  43   │ vscode "artdiniz.quitcontrol-vscode"
  44   │ vscode "davidanson.vscode-markdownlint"
  45   │ vscode "eamodio.gitlens"
  46   │ vscode "esbenp.prettier-vscode"
  47   │ vscode "hashicorp.terraform"
  48   │ vscode "ms-azuretools.vscode-docker"
  49   │ vscode "ms-ceintl.vscode-language-pack-ja"
  50   │ vscode "ms-kubernetes-tools.vscode-kubernetes-tools"
  51   │ vscode "ms-vscode-remote.remote-containers"
  52   │ vscode "negokaz.zenn-editor"
  53   │ vscode "redhat.vscode-yaml"
  54   │ vscode "sourcegraph.cody-ai"
  55   │ vscode "waddy.zenn-style-markdown-preview"
  56   │ vscode "wesbos.theme-cobalt2"
  57   │ vscode "yzhang.markdown-all-in-one"
  58   │ vscode "zenn.zenn-preview"
───────┴───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
```
