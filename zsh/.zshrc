# only check cached .zcompdump once a day
# https://gist.github.com/ctechols/ca1035271ad134841284#gistcomment-2308206
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
    compinit
done
compinit -C
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

setopt autocd

PATH="/usr/lib/ccache/bin:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/scripts:$PATH"
export QT_QPA_PLATFORM=wayland

bindkey "^[[1;5C" emacs-forward-word
bindkey "^[[1;5D" backward-word
bindkey "^H" backward-kill-word
bindkey "^[[3;5~" kill-word




# aliases
alias ls='eza --icons=always --group-directories-first'
alias lsa='eza -a --icons=always --group-directories-first'
alias ll='eza -al --icons=always --group-directories-first'

alias 'gc'='git clone'
alias 'git commit'='git commit -S'

alias vim=nvim
# reset build system
alias 'rb'='cd ..; rm -rf ./build; mkdir build; cd build'


# plugins
source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# set up FZF key binds
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/aliens.custom.omp.json)"
