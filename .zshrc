export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git fzf k zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# User configuration
export EDITOR='nvim'
export PATH="$HOME/.npm/bin:$PATH"

# Aliases
alias nvim="~/nvim.appimage"
alias cvenv="python3 -m venv venv"
alias avenv="source venv/bin/activate"
alias ytaudio="youtube-dl --extract-audio --audio-format mp3"
alias config='nvim ~/.config/nvim/init.vim'
alias plugconfig='nvim ~/.vim/plugins.vim'
alias mapconfig='nvim ~/.vim/maps.vim'
alias zsconfg='nvim ~/.zshrc'
alias alconfig='nvim ~/.config/alacritty/alacritty.yml'
alias listnpmglobal='npm list -g --depth 0'
alias srctmux='tmux source-file ~/.tmux.conf'
