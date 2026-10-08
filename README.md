# .vim

My Vim config. Clone it into your home folder and it becomes `~/.vim`.

## Install

```sh
git clone https://github.com/lambo12000/.vim.git ~/.vim
```

Then open Vim. The first launch clones the plugins into `~/.vim/plugged`, so you need `git` installed.

If you already have a `~/.vimrc`, move it out of the way. Vim uses it instead of `~/.vim/vimrc` when both exist.

## What's in it

- `vimrc` loads the other files.
- `tony.vim` has the general settings: 4-space indents, relative line numbers and syntax highlighting.
- `keybinds.vim` sets space as the leader key and maps `<leader>cd` to open netrw.
- `plugins.vim` clones and loads the plugins without a plugin manager.
- `colors.vim` sets the Tokyo Night colorscheme in its night style.
- `lightline.vim` configures the status line.
- `clipboard.vim` connects the `+` and `*` registers to `xclip` on X11.

## Plugins

- [tokyonight-vim](https://github.com/ghifarit53/tokyonight-vim)
- [lightline.vim](https://github.com/itchyny/lightline.vim)

To add another, put a `call s:ensure('user/repo')` line in `plugins.vim`.
