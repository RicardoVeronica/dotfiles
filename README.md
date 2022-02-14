# My dotfiles in Linux

## Help

### Create symbolic links into home/user/

- Exmple

```sh
ln -s .dotfiles/.vimrc .vimrc
ln -s .dotfiles/.tmux.conf .tmux.conf
```

---

### VIM with bundle and YouCompleteMe **(bundle deprecated)**

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

[source](https://github.com/neoclide/coc-snippets/issues/196)

---

### Alacritty config

```sh
cd ~/.config/alacritty/alacritty.yml
```

### Awesome config

```sh
cd ~/.config/awesome/rc.lua
```

### Ranger

```sh
```
