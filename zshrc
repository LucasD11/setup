export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Oh-My-ZSH
export ZSH="/Users/dail/.oh-my-zsh"
export LANG=en_US.UTF-8
export UPDATE_ZSH_DAYS=30

ZSH_THEME="tjkirch_mod"
COMPLETION_WAITING_DOTS="true"
plugins=(
  git docker docker-compose autojump tmux pip
)
source $ZSH/oh-my-zsh.sh

# Apps
export PYTHONDONTWRITEBYTECODE=1
export KUBECONFIG=$HOME/.kube.yml
export NVM_DIR="/Users/dail/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH=/usr/local/opt/postgresql@9.6/bin:/usr/local/opt/gettext/bin:$HOME/bin:/usr/local/bin:$PATH

# Aliases
alias dl="docker-compose logs -f --tail=10"
alias dc="docker-compose"

## User configuration
export http_proxy="proxy.vmware.com:3128"
export https_proxy="proxy.vmware.com:3128"

# ZSH plugins
zplug "MichaelAquilina/zsh-autoswitch-virtualenv"
source =virtualenvwrapper.sh
zplug load

