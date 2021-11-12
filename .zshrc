# Oh My Zsh config
export ZSH=~/.oh-my-zsh
ZSH_THEME=""
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Aliases and personal functions
alias ls="ls -al"
alias vim="nvim"

# Print the most recently modified file in working directory
alias latest="ls -t1 |  head -n 1"

# Convert to mono and normalize (for processing mono synth recordings)
function monofy() {
  ffmpeg -i "$1" -filter:a loudnorm -map_channel 0.0.0 "mono-$1"
  cp "mono-$1" "$1"
  rm "mono-$1"
}

# ls -a after cd
function chpwd() {
    emulate -L zsh
    \ls -a
}

# Add to PATH
pathadd() {
    newelement=${1%/}
    if [ -d "$1" ] && ! echo $PATH | grep -E -q "(^|:)$newelement($|:)" ; then
        if [ "$2" = "after" ] ; then
            PATH="$PATH:$newelement"
        else
            PATH="$newelement:$PATH"
        fi
    fi
}

# Remove from PATH
pathrm() {
  PATH="$(echo $PATH | sed -e "s;\(^\|:\)${1%/}\(:\|\$\);\1\2;g" -e 's;^:\|:$;;g' -e 's;::;:;g')"
}

# Variables
export DEFAULT_USER=allie
export GOPATH=~/Dev/go
export CLICOLOR=1
export CLICOLOR_FORCE=1
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export EDITOR="nvim"
export FZF_DEFAULT_COMMAND="fd --type f"

# Configure PATH
pathadd "/opt/homebrew/bin"
pathadd "/usr/local/bin"
pathadd "/usr/local/sbin"
pathadd "$GOPATH/bin"
export PATH

# Pure prompt
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(direnv hook zsh)"

