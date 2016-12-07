set nocompatible
filetype off

" Vundle initialization
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" My Plugins here
"
" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fatih/vim-go'
Plugin 'klen/python-mode'

call vundle#end()

" Automatically detect filetypes
filetype plugin indent on

" non github repos

" Some kind of security thing
set modelines=0

" Default spelling language
"set spell spelllang=en_us

" Enable 256 colors in vim
set t_Co=256

" Set the default font
" set guifont=Monaco:h13
set guifont=Meslo\ LG\ S\ for\ Powerline:h14

" Hide the toolbar
set guioptions-=T

" Hide scrollbars
set guioptions-=r
set go-=L

" Set the colorscheme to dark mode
" set background=dark

" Enable syntax
syntax enable

" Set our mapleader key
let mapleader = ','

" Tab rules
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Line number rules
set number
set rnu

" Set the default encoding to the always trusty UTF-8
set encoding=utf-8

" Always scroll to what we're searching for
set scrolloff=3

" Automatically attempt to handle indentation
set autoindent

" Automatically attempt to set the working directory to the current
" file. This value will be superceeded by rooter if it is installed
set autochdir

" Display the current mode at the bottom of the window
set showmode

" Extra information about the command you're running in the status bar
set showcmd
set hidden

" Auto complete filenames when in :Ex mode, etc
set wildmenu
set wildmode=list:longest

set visualbell
set cursorline
set ttyfast

" Keep 5000 lines of command line history
set history=5000

" Display the row and column of the cursor in the status line
set ruler
set backspace=eol,start,indent

" Always show the status line
set laststatus=2

" Highlight search results
set hlsearch

" Initially ignore cases in searches
set ignorecase

" Smart case searching. Case insensitive if all lowercase, but if you
" provide uppercase it will force matching case
set smartcase

" Support incremental searches (searching while you type)
set incsearch

" Visually display matching braces
set showmatch

" Don't wrap
set nowrap

" Don't clutter my dirs up with swp and tmp files

set autoread
set wmh=0
set viminfo+=!
set et
set smarttab

" Highlight trailing space as an error
" match ErrorMsg '\s\+$'
autocmd InsertEnter * syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
autocmd InsertLeave * syn clear EOLWS | syn match EOLWS excludenl /\s\+$/
highlight EOLWS ctermbg=red guibg=red

set gdefault
set noesckeys

set textwidth=100
set formatoptions=qrn1

" ColorStepper Keys
"nmap <F6> <Plug>ColorstepPrev
"nmap <F7> <Plug>ColorstepNext
"nmap <S-F7> <Plug>ColorstepReload

" Handy key remaps
map <c-f> <c-f>zz
map <c-b> <c-b>zz
map n nzz
map N Nzz
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
map <Leader>o :CtrlPMixed<CR>
noremap <c-]> :lnext<CR>
noremap <c-[> :lprev<CR>

map <Leader>gt :call TimeLapse() <CR>

" Prevent goofy backup files
set nobackup

" Prevent the creation of swp files, they're just a mess
set noswapfile

" golang
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

let g:pymode_virtualenv = 1
set nofoldenable

" Do syntax check when the buffer is first loaded
let g:syntastic_check_on_open=1

" Hide .DS_Store and .git directories from Vim
let g:netrw_list_hide='.DS_Store,^\.git/$'

" Set the colorscheme
"colorscheme Tomorrow
"colorscheme zellner
"colorscheme zazen
"colorscheme two2tango
"colorscheme lazarus
"colorscheme kiss
"colorscheme kellys
"colorscheme guepardo
"colorscheme inkpot
"colorscheme getfresh
"colorscheme fruity
"colorscheme guepardo

" Highlight overlength
if has('gui_running')
  let g:airline_theme = 'lucius'
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  highlight OverLength guibg=#FF8181
  match OverLength /\%>100v.\+/
endif
colorscheme kate
