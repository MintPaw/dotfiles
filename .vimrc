hi CursorLine term=bold cterm=bold guibg=Grey40
hi SpecialKey ctermfg=00 guifg=#649A9A
hi NonText ctermfg=00 guifg=#649A9A
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
let mapleader = "-"

set number
set showmatch
set spelllang=en_us

set smartindent
set showcmd
set cursorline
set wildmenu
set autowrite
set timeoutlen=1000 ttimeoutlen=0

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
set nolist

imap jj <Esc>
ino <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>
nmap <leader><space> :nohlsearch<CR>
nmap gV `[v`]
nmap <leader>u :GundoToggle<CR>
nmap j gj
nmap k gk
nmap <Up> <Nop>
nmap <Down> <Nop>
nmap <Left> <Nop>
nmap <Right> <Nop>
imap <Up> <Nop>
imap <Down> <Nop>
imap <Left> <Nop>
imap <Right> <Nop>
imap <C-j> <C-n>
imap <C-k> <C-p>
ab \\real\\ ℝ
ab \\forall\\ ∀
ab \\in\\ ∈
ab \\ep\\ ϵ
ab \\null\\ ∅
ab \\subeq\\ ⊆
ab \\sub\\ ⊂
ab \\smallomega\\ ω
ab \\theta\\ θ

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
