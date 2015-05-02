set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'gmarik/Vundle.vim'
" Snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'davidhalter/jedi-vim'

Bundle "marijnh/tern_for_vim"
" let Vundle manage Vundle, required
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

execute pathogen#infect()
set ruler
syntax on
set number
set hlsearch
set incsearch

set backspace=indent,eol,start

let &t_Co=256

set tabstop=2
set shiftwidth=2
set expandtab

set numberwidth=5

set background=light
syntax on
"colorscheme mango
"colorscheme github
"colorscheme vividchalk
colorscheme jellybeans


"Used to show gitgutter ALL THE TIME!!!
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
autocmd BufWritePre * :%s/\s\+$//e

map <F2> :NERDTreeToggle<CR>
map <F3> :tabp<CR>
map <F4> :tabn<CR>
map <F5> :tabnew<CR>:NERDTreeToggle<CR>
map <F6> :split<CR>
map <F7> :splitv<CR>
map <F8> :exit<CR>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
nnoremap <F9> :GundoToggle<CR>

