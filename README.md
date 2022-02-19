# My dotfiles in Linux

## Help

### Create symbolic links into home/user/

- Exmple

```sh
ln -s .dotfiles/.vimrc .vimrc
ln -s .dotfiles/.tmux.conf .tmux.conf
```

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

### Rofi

```sh
ln -s ~/.dotfiles/config.rasi
```

From Eric Murphy

[github](https://github.com/ericmurphyxyz/archrice)
[youtube](https://www.youtube.com/watch?v=TutfIwxSE_s&t=424s)

### Ranger

Copy all config in ~/.config/ranger

```sh
ranger --copy-config=all
```

Install w3m for imamge viewer inside ranger

```sh
sudo pacman -S w3m
```

Link to my .conf

```sh
ln -s ~/.dotfiles/rifle.conf rifle.conf
```

### ZSH with p10k

[youtube](https://www.youtube.com/watch?v=m73YqImFd4o&t=901s)
