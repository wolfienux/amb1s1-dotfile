# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
neofetch
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit"
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias p="cd ~/Documents/projects"

~/.vim/plugged/gruvbox/gruvbox_256palette_osx.sh
export CLICOLOR=1
export TERM=xterm-256color
alias vim='nvim'
alias cg='ssh gomez.c.googlers.com'
alias cm='ssh dgomez.mtv.corp.google.com'
alias cw='ssh gomdavid.svl.corp.google.com'

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Use .bash_profile or other configuration file for your shell
export USER_CONFIG=$HOME/.bash_profile
echo >> $USER_CONFIG
# Use the fully-qualified hostname of your Linux workstation, which can be
# found by running the "hostname" command on your workstation.
echo '. $HOME/.bagpipe/setup.sh $HOME/.bagpipe dgomez.mtv.corp.google.com' >> $USER_CONFIG
echo 'export PATH=$HOME/bin:$PATH' >> $USER_CONFIG
source $USER_CONFIG

# If $BAGPIPE_DIR is empty, retry the above instructions with a different
# $USER_CONFIG.

export P4CONFIG=.p4config
export P4EDITOR=vim # Or your choice of editor
