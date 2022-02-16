# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# asdf
# install asdf:
# https://asdf-vm.com/guide/getting-started.html#_1-install-dependencies
# for pacman and zsh:
# git clone https://aur.archlinux.org/asdf-vm.git && cd asdf-vm && makepkg -si
. /opt/asdf-vm/asdf.sh

# default editor for ranger
# export VISUAL=nvim;
# export EDITOR=nvim;

# aliases
neofetch
tmux

# nitrongen for awesomewm random wallpapers
# alias w='nitrogen --set-zoom-fill --random ~/Pictures/wallpapers'

# active mose pad awesome
# xinput set-prop "$(xinput list --name-only | grep -i touch)" "libinput Tapping Enabled" 1
