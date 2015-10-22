hi CursorLine term=bold cterm=bold guibg=Grey40
hi SpecialKey ctermfg=00 guifg=#649A9A
hi NonText ctermfg=00 guifg=#649A9A
let mapleader = "-"

set number
set showmatch
set spelllang=en_us

set smartindent
set showcmd
set cursorline
set wildmenu
set autowrite

set incsearch

set foldenable
set foldmethod=indent
set foldlevelstart=10
set foldnestmax=10

set tabstop=2
set softtabstop=2
set shiftwidth=2
set colorcolumn=81

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

imap jj <Esc>
ino <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap gV `[v`]
nnoremap <leader>u :GundoToggle<CR>
nnoremap j gj
nnoremap k gk

set backup
set backupdir=/tmp
set backupskip=/tmp/*
set directory=/tmp
set writebackup

filetype plugin indent on
syntax on

function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

execute pathogen#infect()
Helptags
