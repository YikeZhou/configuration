let mapleader=";"

filetype on
filetype plugin on

nmap LB 0
nmap LE $

vnoremap <Leader>y "+y
nmap <Leader>p "+p

nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>WQ :wa<CR>:q<CR>
nmap <Leader>Q :qa!<CR>

" nnoremap nw <C-W><C-W>
nnoremap <Leader>lw <C-W>l
nnoremap <Leader>hw <C-W>h
nnoremap <Leader>kw <C-W>k
nnoremap <Leader>jw <C-W>j

nmap <Leader>M %

autocmd BufWritePost $MYVIMRC source $MYVIMRC

set incsearch
set ignorecase
set nocompatible
set wildmenu
set noswapfile
set foldenable

" Vundle settings
"
" usages:
" :PluginInstall
" :PluginClean
" :PluginUpdate
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'dyng/ctrlsf.vim'

call vundle#end()
filetype plugin indent on

" color theme
set background=dark
" colorscheme solarized
colorscheme molokai
" colorscheme phd

set gcr=a:block-blinkon0
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set guioptions-=m
set guioptions-=T

set laststatus=2
set ruler
set number
set cursorline
set cursorcolumn
set colorcolumn=120
set hlsearch

set nowrap
let g:Powerline_colorscheme='solarized256'

syntax enable
syntax on

filetype indent on
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" set foldmethod=indent
set foldmethod=syntax
set nofoldenable

" nerdtree config
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and leave the cursor in it
" autocmd VimEnter * NERDTree
" Start NERDTree and put the cursor back in other window
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window left
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
  \ quit | endif

" Open the existing NERDTree on each new tab
autocmd BufWinEnter * silent NERDTreeMirror

" If another buffer tries to replace NERDTree, put it in the other window, and
" bring back NERDTree.
" autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('&') > 1 |
"   \ let buf=bufnr() | buffer# | execute "normal! \<C-w>w" | execute 'buffer'.buf | endif

" CtrlSF config
nnoremap <Leader>sn :CtrlSF<CR>
nnoremap <Leader>sw :CtrlSF -S -W<CR>

let g:ctrlsf_auto_focus = {
  \ "at": "done",
  \ "duration_less_than": 1000
  \ }
