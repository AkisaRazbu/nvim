let mapleader = " "
let g:Hexokinase_highlighters = ['background'] " Hexokinase
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
set smartcase
set incsearch
set ignorecase
set number
set wrap
set encoding=utf-8
set relativenumber
set numberwidth=3  
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
syntax on

call plug#begin("~/.config/nvim/plugged")
Plug 'RRethy/vim-hexokinase'
Plug 'scrooloose/nerdtree'
Plug 'bfrg/vim-cpp-modern'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
call plug#end()

map <C-n> :tabn <CR>
map <C-p> :tabp <CR>
map <leader>n :tabnew <CR>
map <leader>g :set notermguicolors <CR>
map <leader>f :set termguicolors <CR>
map <leader>q :NERDTreeToggle <CR>
map <leader>s :source % <CR>
map <leader><C-p> :PlugInstall <CR>
map <leader>l :q <CR>
map <leader>k 10k <CR>
map <leader>j 10j <CR>


filetype plugin on
colorscheme PaperColor 

autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/skeleton.cpp
autocmd BufNewFile *.py 0r ~/.config/nvim/templates/skeleton.py
autocmd BufNewFile *.c 0r ~/.config/nvim/templates/skeleton.c
