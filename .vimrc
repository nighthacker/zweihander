"
" 
" Languages:
"   1. Java
"   2. Scala
"   3. Python
"   4. Java Script
" VCS:
"   1. Git
"   2. SVN
" Other:
"   1. Markdown
"   2. Ack
"   3. Sudo VIM
"   4. Markdown
"   5. Nginx
"   6. Ascii Doc 

" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

Bundle 'kien/ctrlp.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdtree'
" Bundle 'Lokaltog/powerline', { 'rtp': 'powerline/bindings/vim' }
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'
Bundle 'mileszs/ack.vim'
Bundle 'gmarik/sudo-gui.vim'
" Automatic Helpers
Bundle 'IndexedSearch'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
Bundle 'ervandew/supertab'
Bundle 'gregsexton/MatchTag'
Bundle 'Shougo/neocomplcache'
" Languages
" Javascript
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
Bundle 'itspriddle/vim-jquery'
" Python
Bundle 'python.vim'
Bundle 'vim-scripts/Pydiction'
" Java
Bundle 'java.vim'
Bundle 'JavaBrowser'
Bundle 'JavaDecompiler.vim'
" Clojure
Bundle 'guns/vim-clojure-static'
" Elixir
Bundle 'elixir-lang/vim-elixir'
" Other
Bundle 'mutewinter/nginx.vim'
Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
Bundle 'tpope/vim-markdown'
Bundle 'sukima/asciidoc-vim'
Bundle 'jnwhiteh/vim-golang'
Bundle 'fatih/vim-go'

filetype plugin indent on  " Automatically detect file types. (must turn on after Vundle)

" Set leader to ,
" Note: This line MUST come before any <leader> mappings
let mapleader=","

" ----------------------------------------
" Platform Specific Configuration
" ----------------------------------------


" ----------------------------------------
" Regular Vim Configuration (No Plugins Needed)
" ----------------------------------------

" ---------------
" Color
" ---------------

" ---------------
" Backups
" ---------------
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" ---------------
" UI
" ---------------
set ruler          " Ruler on
set nu             " Line numbers on
set nowrap         " Line wrapping off
set laststatus=2   " Always show the statusline
set cmdheight=1    " Make the command area two lines high
set encoding=utf-8

if exists('+colorcolumn')
  set colorcolumn=100 " Color the 100th column differently
endif

" ---------------
" Behaviors
" ---------------
syntax enable
set noswapfile         " Disable swap file creation
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
set hidden             " Change buffer - without saving
set history=768        " Number of things to remember in history.
set cf                 " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set timeoutlen=350     " Time to wait for a command (after leader for example)
set foldlevelstart=99  " Remove folds
set formatoptions=crql
set iskeyword+=$,@     " Add extra characters that are valid parts of variables

" ---------------
" Text Format
" ---------------
set tabstop=2
set backspace=2  " Delete everything with backspace
set shiftwidth=2 " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab
set backspace=2

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch
set hlsearch
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,.sass-cache,*.class

" ---------------
" Visual
" ---------------
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell
set t_vb=

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed
set mouse=a    " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U


" ----------------------------------------
" Bindings
" ----------------------------------------
map <F5> :tabprevious<CR>
map <F6> :tabNext<CR>

map <F7> :NERDTreeToggle %<CR>
map <C-,> :NERDTreeFocus<CR>

command! Et tabedit
command! Ec tabclose

" ----------------------------------------
" Plugin Configuration
" ----------------------------------------
set laststatus=2 " Display the statusline in all windows
set noshowmode " Hide default mode below the status line

" automatically load nerdtree when vim starts up opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" close vim if nerdtree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" ----------------------------------------
" Filetype Associations
" ----------------------------------------

autocmd BufNewFile,BufRead *.deckspec set syntax=yaml
autocmd BufNewFile,BufRead *.template set syntax=yaml

" Source vimrc after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
