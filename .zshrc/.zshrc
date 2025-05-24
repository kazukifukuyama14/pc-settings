# ========================================
# Zsh 設定ファイル (Apple Silicon 最適化版)
# ========================================

# ----------------------------------------
# 環境変数設定
# ----------------------------------------
export EDITOR='nvim'
export BAT_THEME='TwoDark'
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

# ----------------------------------------
# PATH 設定 (Apple Silicon 対応)
# ----------------------------------------
# Homebrew パス (Apple Silicon)
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
# ユーザー固有のパス
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
# Node.js パス (Apple Silicon)
export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
# RVM パス
export PATH="$PATH:$HOME/.rvm/bin"

# ----------------------------------------
# 基本エイリアス設定
# ----------------------------------------
alias ll='ls -lF --color=auto'
alias la='ls -la'
alias ..='cd ..'
alias ...='cd ../..'
alias cat='bat' # シンタックスハイライト付きcat

# ----------------------------------------
# 補完システム初期化
# ----------------------------------------
# Docker CLI 補完設定 (Apple Silicon 対応)
FPATH="$HOME/.docker/completions:$FPATH"

# 補完システムの初期化 (一度だけ実行)
autoload -Uz compinit
compinit

# ----------------------------------------
# バージョン管理ツール
# ----------------------------------------
# asdf 初期化 (Apple Silicon)
ASDF_DIR="/opt/homebrew/opt/asdf"
[[ -f "$ASDF_DIR/libexec/asdf.sh" ]] && source "$ASDF_DIR/libexec/asdf.sh"

# Node.js 環境 (NVM)
export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
[[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"

# Ruby 環境 (rbenv)
[[ -x "$(command -v rbenv)" ]] && eval "$(rbenv init -)"

# ----------------------------------------
# クラウドツール設定
# ----------------------------------------
# Google Cloud SDK (Apple Silicon)
GCLOUD_SDK_DIR="/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk"
[[ -f "$GCLOUD_SDK_DIR/path.zsh.inc" ]] && source "$GCLOUD_SDK_DIR/path.zsh.inc"
[[ -f "$GCLOUD_SDK_DIR/completion.zsh.inc" ]] && source "$GCLOUD_SDK_DIR/completion.zsh.inc"

# ----------------------------------------
# プラグインマネージャー (Zinit)
# ----------------------------------------
# Zinit の自動インストール
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
  echo "Zinit をインストール中..."
  mkdir -p "$HOME/.local/share/zinit" && chmod g-rwX "$HOME/.local/share/zinit"
  git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git"
fi

# Zinit の読み込み
source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"

# ----------------------------------------
# Zsh プラグイン設定
# ----------------------------------------
zinit light zsh-users/zsh-autosuggestions     # コマンド自動補完候補
zinit light zsh-users/zsh-syntax-highlighting # シンタックスハイライト
zinit light olivierverdier/zsh-git-prompt     # Git 状態表示

# ----------------------------------------
# 外部ツール初期化
# ----------------------------------------
# Starship プロンプト (高速・多機能)
[[ -x "$(command -v starship)" ]] && eval "$(starship init zsh)"

# fzf ファジーファインダー
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

# ----------------------------------------
# API キー・認証情報
# ----------------------------------------
export CODY_ACCESS_TOKEN="your_new_token_here"
