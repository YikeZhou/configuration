# Quick Start

## Vim

1. `git clone` repo [Vundle](https://github.com/VundleVim/Vundle.vim#quick-start)
2. open vim and run `:PluginInstall`

## TMUX

Consult the [tpm](https://github.com/tmux-plugins/tpm) readme.

**Tip**: make symbolic link under `~`

## Git

Global `.gitignore` file:

```shell
git config --global core.excludesfile $(pwd)/global.gitignore
```

Git alias commands:

```shell
curl -O https://raw.githubusercontent.com/GitAlias/gitalias/main/gitalias.txt # optional
git config --global include.path $(pwd)/gitalias.txt
```