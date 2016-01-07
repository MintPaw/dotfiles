hi CursorLine term=bold cterm=bold guibg=Grey40
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
hi IndentGuidesOdd ctermbg=235
hi IndentGuidesEven ctermbg=236
let mapleader = "-"
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P

" Semantic Highlight
let g:indent_guides_auto_colors = 0
" Would hide indent chars if not on line
" hi SpecialKey ctermfg=00 guifg=#649A9A
hi NonText ctermfg=00 guifg=#649A9A
let g:semanticTermColors = [28,1,2,3,4,5,6,7,25,9,10,34,12,13,14,15,125,124,19]
nmap <Leader>s :SemanticHighlightToggle<cr>

call matchadd('Conceal', 'function', 10, 100, {'conceal': '𝒇'})
set conceallevel=2

set number
set showmatch
set spelllang=en_us

set smartindent
set showcmd
set cursorline
set wildmenu
set autowrite
set timeoutlen=1000 ttimeoutlen=0
set laststatus=2
set autoread
set scrolloff=7
set lazyredraw
set background=dark

set incsearch

set foldenable
set foldmethod=indent
set foldlevelstart=10
set foldnestmax=10

set tabstop=1
set softtabstop=1
set shiftwidth=1
set colorcolumn=81

set listchars=tab:>-,trail:~,extends:>,precedes:<
set nolist

imap jj <Esc>
nmap <leader><space> :nohlsearch<CR>
nmap gV `[v`]
nmap <leader>u :GundoToggle<CR>
nmap <C-F> /

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

nmap <M-j> :m. + <cr>
nmap <M-k> :m. -2 <cr>

map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s= z=

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

function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

" Indent if we're at the beginning of a line. Else, do completion.
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>

execute pathogen#infect()
Helptags
