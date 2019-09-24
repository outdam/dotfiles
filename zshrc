export ZSH=~/.oh-my-zsh
source ~/.aliases

# ** ZSH THEME ** #
ZSH_THEME=powerlevel10k/powerlevel10k

# ** Environment Paths ** #
export PATH=$PATH:~/bin/
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/Library/Python/3.7/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin

# ** Basic Config ** #
export EDITOR=nvim
export zshrc=~/.zshrc
export vimrc=~/.vimrc
export dotfiles=~/Dropbox/Backups/dotfiles
export PG=~/Library/Application\ Support/Postgres

# ** Evaluate plugins ** #
export TERM=xterm-256color-italic        # italic color is required for trueclor in tmux mode
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# ** NPM **
NPM_PACKAGES="${HOME}/.npm-packages"

export PATH="$PATH:$NPM_PACKAGES/bin"

# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

# ** Plugins ** #
plugins=(
  ssh-agent
  zsh-syntax-highlighting
)

# ** Evaluate plugins ** #
eval "$(rbenv init -)"

# ** Programming languages version manager ** #
# nvm for node

# jenv for java
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

source $ZSH/oh-my-zsh.sh

# ** Custom powerlevel 10k ** #
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# ** Other Functions ** #
# Output as yaml
function vaml() {
 vim -R -c 'set syntax=yaml' -;
}

## Google cloud
#export CLOUDSDK_COMPUTE_ZONE=australia-southeast1-a
#export CLOUDSDK_COMPUTE_REGION=australia-southeast1

