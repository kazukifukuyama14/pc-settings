# ----------------------------------------
# 基本の alias 設定
# ----------------------------------------
alias ll='ls -lF --color=auto'
alias la='ls -la'
alias ..='cd ..'
alias ...='cd ../..'

# ----------------------------------------
# asdf 初期化
# ----------------------------------------
ASDF_DIR="$(brew --prefix asdf)"
[ -f "$ASDF_DIR/libexec/asdf.sh" ] && . "$ASDF_DIR/libexec/asdf.sh"

# ----------------------------------------
# Google Cloud SDK
# ----------------------------------------
GCLOUD_SDK_DIR="$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk"
[ -f "$GCLOUD_SDK_DIR/path.zsh.inc" ] && source "$GCLOUD_SDK_DIR/path.zsh.inc"
[ -f "$GCLOUD_SDK_DIR/completion.zsh.inc" ] && source "$GCLOUD_SDK_DIR/completion.zsh.inc"

# ----------------------------------------
# Docker CLI 補完設定
# ----------------------------------------
fpath=(/Users/k.fukuyama/.docker/completions $fpath)
autoload -Uz compinit
compinit

# ----------------------------------------
# Node.js, NVM, rbenv, RVM 設定
# ----------------------------------------
export PATH="/usr/local/opt/node@18/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

eval "$(rbenv init -)"
export PATH="$PATH:$HOME/.rvm/bin"

# ----------------------------------------
# Zinit (Plugin Manager)
# ----------------------------------------
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
  echo "Installing Zinit..."
  mkdir -p "$HOME/.local/share/zinit" && chmod g-rwX "$HOME/.local/share/zinit"
  git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"

# 補完読み込み
autoload -Uz compinit
compinit

# ----------------------------------------
# Zinit: プラグイン追加
# ----------------------------------------

# 自動補完
zinit light zsh-users/zsh-autosuggestions

# シンタックスハイライト
zinit light zsh-users/zsh-syntax-highlighting

# Git プロンプト情報
zinit light olivierverdier/zsh-git-prompt

# starship prompt (高速で情報豊富なプロンプト)
eval "$(starship init zsh)"

# ----------------------------------------
# fzf（ファジーファインダー） 設定
# ----------------------------------------
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ----------------------------------------
# bat（cat の代替）設定
# ----------------------------------------
alias cat='bat' # batがインストールされていれば

# ----------------------------------------
# プロンプト色などの表示設定
# ----------------------------------------
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'
export BAT_THEME='TwoDark'
export EDITOR='nvim'

# ----------------------------------------
# その他 PATH や export 設定
# ----------------------------------------
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
