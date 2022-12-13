# ZSH AutoComplete
#source ~/Workspace/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# ZSH AutoComplete
source ~/.oh-my-zsh/custom/plugins/fzf-tab/fzf-tab.plugin.zsh
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/daisho/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	github
    gitignore
	composer
    #clipboard
	node
	npm
	nvm
	tmux
	vscode
	colored-man-pages
	zsh-autosuggestions
	zsh-syntax-highlighting
    zbell
	)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
      #prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
# prompt_git_sha(){
#	$x=$(git rev-parse --short=5 HEAD)
#	$printf '%s\n' "[$x]"
# }

# Alias

alias zshconfig="nvim ~/.zshrc"
alias nvimconfig="nvim ~/.config/nvim/init.lua"
alias apache-serve="php -S localhost:8000"
alias server="http-server -o -p"
alias config="nvim -p ~/.config/bspwm/bspwmrc ~/.config/sxhkd/sxhkdrc ~/.config/bspwm/polybar/config"
alias ll="exa --long --header --icons --git -a"
#alias php='/bin/php'
#alias composer="/usr/local/bin/composer"
alias lg='lazygit'
alias e='ranger'
alias speed='speedometer -rx wlp3s2 -tx wlp3s2 -i 0.25'
alias ide="~/Workspace/Bash/ide.sh"
alias cleanswap="sudo swapoff -a ; sudo swapon -a;"

# Funciones
function stop_db(){
	service mysql stop
	service postgresql stop
	service mongodb stop
}

alias alert_helper='history|tail -n1|sed -e "s/^s*[0-9]+s*//" -e "s/;s*alert$//"'
alias alert='notify-send -i /usr/share/icons/gnome/32x32/apps/gnome-terminal.png "[$?] $(alert_helper)"'

export EDITOR='nvim'

alias luamake=/home/vojdel/Workspace/lua-language-server/3rd/luamake/luamake

export PATH="$HOME/tools/lua-language-server/bin/Linux:$PATH"

# Zoxide
eval "$(zoxide init zsh)"

# Bitwarden
#export BW_SESSION="Ab7A6BTZw51aOiSVAGYhgi75STeCrp4iwDeXo6xSauMlm1Drp7evthbAzcaZroBAsrXf4jwiw3PR9cLAqfEcKg=="


# Load Angular CLI autocompletion.
#source <(ng completion script)
#export LD_PRELOAD=/var/lib/snapd/snap/ppsspp-emu/11/usr/lib/x86_64-linux-gnu/dri/i915_dri.so
source /home/daisho/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
