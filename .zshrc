# Oh My Zsh config
export ZSH=~/.oh-my-zsh
ZSH_THEME=""
plugins=(git zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Aliases
alias ls="ls -al"
alias vim="nvim"

# ls -a after cd
function chpwd() {
    emulate -L zsh
    \ls -a
}

# Variables
export DEFAULT_USER=alison
export GOPATH=~/Dev/go
PATH="/Users/alison/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/alison/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/alison/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/alison/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/alison/perl5"; export PERL_MM_OPT;
unset LSCOLORS
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

# Pure prompt
autoload -U promptinit; promptinit
prompt pure

