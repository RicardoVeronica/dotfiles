# My dotfiles in Linux

## Help

### Create symbolic links into home/user/

- Exmple

```sh
ln -s .dotfiles/.vimrc .vimrc
ln -s .dotfiles/.tmux.conf .tmux.conf
```

### SSH

Create dir ~/.ssh

```sh
# create ssh keys
ssh-keygen
```

Paste the id_rsa.pub in Github

```sh
# add private key to the ssh agent
ssh-add [private key]
```

---

### Paru

[paru](https://github.com/Morganamilo/paru)

```sh
# clone project
git clone https://aur.archlinux.org/paru
```

Go inside paru dir

```sh
# compile paru - syncdep and install
makepkg -si PKGBUILD
# install dependencies
```

Config file: /etc/paru.conf

---

### VIM with bundle and YouCompleteMe **(deprecated)**

- Install vim 8
- Install vundle
- Open vim and run :PluginInstall
- Install cmake, build-essential, python3-dev for YouCompleteMe

#### Go to .vim/bundle/YouCompleteMe

```sh
python3 install.py
```

---

### NEOVIM with vim-plug and coc

```sh
cd ~/.config/nvim/init.vim
```

Install nodejs with asdf

#### Install Plug

[github](https://github.com/junegunn/vim-plug)

```vim
:PlugInstall
```

#### CoC Error

[coc.nvim] Error on execute python script:
request error nvim_command - Vim(pyxfile):E319:
No "python3" provider found. Run ":checkhealth provider"

#### Try this

```sh
python3 -m pip install --user --upgrade pynvim
```

### If you don't have pip

```sh
sudo pacman -S python-pip
```

[source](https://github.com/neoclide/coc-snippets/issues/196)

---

### Alacritty config

```sh
cd ~/.config/alacritty/alacritty.yml
```

From DistroTube
[gitlab](https://gitlab.com/dwt1/st-distrotube)

---

### asdf

```sh
sudo pacman -S asdf
```

In .zshrc

```sh
. /opt/asdf-vm/asdf.sh
```

---

### Awesome config

```sh
cd ~/.config/awesome/rc.lua
```

Install picom - transparency

```sh
sudo pacman -S picom
```

Install nitrogen - wallpaper setter

```sh
sudo pacman -S nitrogen
```

From CopyCat

[github](https://github.com/lcpz/awesome-copycats)

---

### Rofi

Create ~/.config/rofi/config.rasi

```sh
ln -s ~/.dotfiles/config.rasi
```

From Eric Murphy

[github](https://github.com/ericmurphyxyz/archrice)
[youtube](https://www.youtube.com/watch?v=TutfIwxSE_s&t=424s)

---

### Ranger

Copy all config in ~/.config/ranger

```sh
ranger --copy-config=all
```

Install w3m for imamge viewer and mpv movie viewer inside ranger

```sh
sudo pacman -S w3m mpv
```

Command to copy the config in your home

```sh
ranger --copy-config=all
```

Link to my .conf

```sh
ln -s ~/.dotfiles/rifle.conf rifle.conf
```

---

### ZSH with p10k

[youtube](https://www.youtube.com/watch?v=m73YqImFd4o&t=901s)

Install zsh

```sh
sudo pacman -S zsh zsh-completions
```

Change shell (when you install oh-my-zsh, auto change this)

```sh
chsh -s /bin/zsh
```

Install oh-my-zsh

[oh-my-zsh](https://ohmyz.sh/#install)

Command

```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Link to ~/.dotfiles/.zshrc

#### Install powerlevel

```sh
paru zsh-theme-powerlevel10k-git
# powerline-common awesome-terminal-fonts ttf-meslo-nerd-font-powerlevel10k
```

Ejecutar

```sh
echo 'source /usr/share/zsh-theme-powerlevel110k/powerlevel10k.zsh-theme' >>~/.zshrc
```

Instalador

```sh
pk10 configure
```

Highlighting and autosugestions

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
# ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions
# ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
```

In .zshrc

```sh
plugins=(
zsh-autosuggestions
zsh-syntax-highlighting
)
```

### Qtile

```sh
ln -s ~/.dotfiles/config.py ~/.config/qtile/config.py
```
