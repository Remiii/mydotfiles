""""""""""""""""""""""""""""
" Vim config - file .vimrc "
" By Remiii - 2014/04/02   "
""""""""""""""""""""""""""""

" To start vim without using this .vimrc file, use:
"     vim -u NORC
"
" To start vim without loading any .vimrc or plugins, use:
"     vim -u NONE

" No Vi compatibility
set nocompatible

""""""""""""
" Pathogen "
""""""""""""
" Vim configs with Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()
"filetype plugin indent on                      " enable detection, plugins and indenting in one step"

"""""""""""""""""
" Global config "
"""""""""""""""""

" Path
"MY_HOME = '~/'

" Fix backspace indentation
set backspace=indent,eol,start

" Convince Vim it can use 256 colors inside Gnome Terminal.
" Needs CSApprox plugin
set t_Co=256

" Menus I like :-)
" This must happen before the syntax system is enabled
" aunmenu Help.
" aunmenu Window.

let no_buffers_menu=1

" Enable mouse everywhere
set mouse=a

" Hide mouse pointer while typing
set mousehide
set mousemodel=popup

" Code Folding, everything folded by default
set foldmethod=indent
set foldlevel=99
set foldenable

" Make mouse middle click paste without formatting it.
map <MouseMiddle> <Esc>"*p

" Better modes.  Remeber where we are, support yankring
set viminfo=!,'100,\"100,:20,<50,s10,h,n~/.viminfo

set nobackup
set noswapfile

" Move Backup Files to ~/.vim/sessions
"set backupdir=~/.vim/sessions
"set dir=~/.vim/sessions

" Turn off annoying swapfiles
set noswapfile

" Set persistent undo (v7.3 only)
set undodir=~/.vim/undodir
set undofile

" Enable Syntax Colors
"syntax on
"if has("gui_running")
"    set guifont=Mensch\ 10
"else
"    colorscheme mustang
"endif

" Don't wrap lines
set nowrap

" Set spaces instead of tab
set expandtab

" Set tab
set tabstop=4
set shiftwidth=4        " number of spaces to use for autoindenting
set softtabstop=4
" Some info: http://vim.wikia.com/wiki/Indenting_source_code

set backspace=indent,eol,start      " allow backspacing over everything in insert mode
set autoindent          " always set autoindenting on
set copyindent          " copy the previous indentation on autoindenting
set number              " always show line numbers
set relativenumber
set shiftround          " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch           " set show matching parenthesis
set ignorecase          " ignore case when searching
set smartcase           " ignore case if search pattern is all lowercase,
                        " case-sensitive otherwise
set smarttab            " insert tabs on the start of a line according to
                        " shiftwidth, not tabstop
set hlsearch            " highlight search terms
set incsearch           " show search matches as you type"

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep"

set hidden
set wrapscan
set ruler
set showmode
set autoindent
set wildmenu
set ttyfast
set incsearch
set hlsearch
set scrolloff=10
set list
set lcs=tab:»·
set lcs+=trail:·

"set cursorline
hi CursorLine term=none cterm=none ctermbg=0
hi CursorLine term=none cterm=none ctermbg=0

"let g:SuperTabDefaultCompletionType = "context"
highlight WhitespaceEOL ctermbg=red
match WhitespaceEOL /\s\+$/
autocmd WinEnter * match WhiteSpaceEOL /\s\+$/
"set guioptions-=T
"set guioptions-=m
"set guioptions+=c
"set guifont=Clean\ 8

"""""""""""""""""""""
" Global map config "
"""""""""""""""""""""
nnoremap ; :
nmap <silent> ,/ :nohlsearch<CR>

" Sudo RW
cmap w!! w !sudo tee % >/dev/null

" Map for Tab (v7.3 only)
"map  <Esc>:tabprevious<CR>
"map  <Esc>:tabnext<CR>

" Pentadactyl-like tab switching
nnoremap <C-n> gt
nnoremap <C-p> gT

cabbrev nt tabedit
map <leader>tt <Esc>:tabnew<CR>
map <leader>ts <Esc>:tab split<CR>
map <leader>tw <Esc>:close<CR>

noremap <Esc>1 1gt
noremap <Esc>2 2gt
noremap <Esc>3 3gt
noremap <Esc>4 4gt
noremap <Esc>5 5gt
noremap <Esc>6 6gt
noremap <Esc>7 7gt
noremap <Esc>8 8gt

"map <D-1> 1gt
"map <D-2> 2gt
"map <D-3> 3gt
"map <D-4> 4gt
"map <D-5> 5gt
"map <D-6> 6gt
"map <D-7> 7gt
"map <D-8> 8gt
"map <D-9> 9gt
"map <D-0> 10gt

""""""""""""""
" Vim Plugin "
""""""""""""""

"""""""""""""
" Solerized "
"""""""""""""
" Solerzied Config
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="hight"
let g:solarized_visibility="hight"
let g:solarized_underline = 1
colorscheme solarized

""""""""""
" CTRL-P "
""""""""""
" Map for CTRL-P
"noremap <leader>o <Esc>:CommandT<CR>
"noremap <leader>O <Esc>:CommandTFlush<CR>
"noremap <leader>m <Esc>:CommandTBuffer<CR>

""""""""""""
" CloseTag "
""""""""""""
" CloseTag config
autocmd FileType html,html.twig,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,html.twig,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

""""""""""
" Tagbar "
""""""""""
" Tagbar config
let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

""""""""""""
" Snipmate "
""""""""""""
" Snipmate config
let g:snips_author = 'Remiii'
let g:snippets_dir = '~/.vim/snippets/'
" Use HTML and PHP snippets in .php files
"nmap <silent> <leader>ph :set filetype=php.html<CR>
" Shortcut for reloading snippets, useful when developing
"nnoremap <silent> <leader>r <esc>:exec ReloadAllSnippets()<cr>

"""""""""""""
" NERD Tree "
"""""""""""""
" Show dotfiles
let NERDTreeShowHidden=1
" Add some ignore files
let NERDTreeIgnore=['\.git', '\.DS_Store', '^Icon']
" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

""""""""""""""
" chars2html "
""""""""""""""
map ,ch :ConvertChars2Html<CR>
map ,hc :ConvertHtml2Chars<CR>

""""""""""""
" Function "
""""""""""""

func! CleanCode()
    exe "normal mz"
    :1;$ s/\r//g
    :%s/^M//g
exe "normal `z"
endfunc

noremap <F3> :call CleanCode()<CR>

"Remove ^M
"function! CleanCode()
"    :1;$ s/\r//g
"endfunction

"nmap CleanCode :call CleanCode()


" Powerline

"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
"set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
"set t_Co=256

" VIM-POWERLINE

"let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts=1
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
let g:Powerline_mode_V="V·LINE"
let g:Powerline_mode_cv="V·BLOCK"
let g:Powerline_mode_S="S·LINE"
let g:Powerline_mode_cs="S·BLOCK"

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Removing Trailing whitespaces on save actions

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

