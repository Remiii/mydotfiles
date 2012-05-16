syntax on
filetype plugin indent on

map <F11> :%s/\s\+$//g<CR>
map <F12> :!ctags -R --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

colorscheme wombat256

set number
set nocompatible
set backspace=indent,eol,start
set wrapscan
set showmatch
set ruler
set showmode
set undolevels=200
set autoindent
set history=50
set wildmenu
set ttyfast
set incsearch
set hlsearch
set mouse=a
set scrolloff=10
set list
set lcs=tab:»·
set lcs+=trail:·

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

set cursorline
hi CursorLine term=none cterm=none ctermbg=0
hi CursorColumn term=none cterm=none ctermbg=0

highlight WhitespaceEOL ctermbg=red
match WhitespaceEOL /\s\+$/
autocmd WinEnter * match WhiteSpaceEOL /\s\+$/

set guioptions-=T
set guioptions-=m
set guioptions+=c
set guifont=Clean\ 8
