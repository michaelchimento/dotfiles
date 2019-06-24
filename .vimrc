"      __   _                __               _
" ____/ /  (_)_ _  ___ ___  / /____     _  __(_)_ _  ________
"/ __/ _ \/ /  ' \/ -_) _ \/ __/ _ \  _| |/ / /  ' \/ __/ __/
"\__/_//_/_/_/_/_/\__/_//_/\__/\___/ (_)___/_/_/_/_/_/  \__/
"

set nocompatible              " be iMproved, required
filetype off                  " required

"                    ____
" _  ____ _____  ___/ / /__
"| |/ / // / _ \/ _  / / -_)
"|___/\_,_/_//_/\_,_/_/\__/
"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'briandoll/change-inside-surroundings.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'vim-latex/vim-latex'
Plugin 'luochen1990/rainbow'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"               __             _          __  _
" ______ _____ / /____  __ _  (_)__ ___ _/ /_(_)__  ___
"/ __/ // (_-</ __/ _ \/  ' \/ /_ // _ `/ __/ / _ \/ _ \
"\__/\_,_/___/\__/\___/_/_/_/_//__/\_,_/\__/_/\___/_//_/

let mapleader = " "
syntax on
set textwidth=80
set encoding=utf-8
set wildmode=longest,list,full
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
let g:rainbow_active=1
"save swap files to default location
set directory=$HOME/.vim/swapfiles//


map <Leader>so :so $MYVIMRC<CR>
autocmd BufWritePre * %s/\s\+$//e "removes trailing whitespace
set splitbelow splitright "splits open at bottom and right"
set number relativenumber "relative numbering for easy motions"
"map ctl-s to save in any mode (if buffer is modified)
noremap <silent> <C-s> :update<CR>
vnoremap <silent> <C-s> <C-C>:update<CR>
inoremap <silent> <C-s> <C-O>:update<CR>
set backspace=2
"carriage return inserts blank line without entering insert mode
nnoremap <CR> o<Esc>
"handles wrapped lines
nnoremap j gj
nnoremap k gk
"goyo map
map <leader>g :Goyo<CR>
"change movement between panes
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"set tab
set tabstop=4
set softtabstop=4
set cursorline

"gruvbox related items
colorscheme gruvbox
let g:gruvbox_contrast_dark = "soft"
let g:gruvbox_contrast_light= "soft"
set background=dark

let g:airline_theme='molokai'

"live latex preview"
map <Leader>p :w <CR> :!latexmk -pdf % <CR><CR>
map <Leader>v :!evince %:r.pdf <CR>

"vim-latex package
let g:tex_flavor='latex'

"nerd tree"
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %
