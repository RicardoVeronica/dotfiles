# Help

## Create symbolic links into home/user

- Exmple

```sh
ln -s .dotfiles/.vimrc .vimrc
ln -s .dotfiles/.tmux.conf .tmux.conf
```

## VIM

- Install vim 8
- Install vundle
- Open vim and run :PluginInstall
- Install cmake, build-essential, python3-dev

### Go to .vim/bundle/YouCompleteMe and run python3 install.py

## NEOVIM

```sh
cd ~/.config/nvim/init.vim
```

## Install Plug

[github](https://github.com/junegunn/vim-plug)

### For this error

[coc.nvim] Error on execute python script:
request error nvim_command - Vim(pyxfile):E319:
No "python3" provider found. Run ":checkhealth provider"

### Try this

```sh
python3 -m pip install --user --upgrade pynvim
```

[source](https://github.com/neoclide/coc-snippets/issues/196)
