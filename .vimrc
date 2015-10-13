let mapleader = "-"

set number
set showmatch

set smartindent
set showcmd
set cursorline
set wildmenu

set incsearch
set hlsearch

set foldenable
set foldlevelstart=10
set foldnestmax=10

set tabstop=4
set softtabstop=4
set shiftwidth=4
set colorcolumn=81

imap jj <Esc>
nnoremap <leader><space> :nohlsearch<CR>

filetype plugin indent on
syntax on

execute pathogen#infect()
