" andreas eckmayr
" 2020-10-19

" plugins
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-markdown'
" Plugin 'vim-latex/vim-latex'
Plugin 'lervag/vimtex'
Plugin 'scrooloose/syntastic'
Plugin 'chiel92/vim-autoformat'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ajh17/spacegray.vim'

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

" file type specific settings
filetype on " enable file type detection
filetype plugin on " load the plugins specific file types
filetype indent on " automatically indent code

" TODO: Pick a leader key
" let mapleader = ","

" allow hidden buffers
set hidden

" security
set modelines=0

" display settings
set encoding=utf-8 " encoding used for displaying file
set number " show line number
syntax on " enable syntax highlighting
set showmatch " highlight matching braces
set showmode " show insert/replace/visual mode
set showcmd " show incomplete cmds down the bottom
set history=1000 " store :cmd history
set visualbell " blink on error instead of beeping (grr)
set laststatus=2 " status bar
set ruler " show file stats
" set autoread " reload file changes outside vim
set ttyfast " rendering

" cursor
set scrolloff=3 " scroll when we're 3 lines away from margins
set sidescrolloff=15
set sidescroll=1
set backspace=indent,eol,start " backspacing over everything in insert mode
set matchpairs+=<:> " use % to jump between pairs
set gcr=a:blinkon0 " disable cursor blink
runtime! macros/matchit.vim

" write settings
set confirm " confirm :q in case of unsaved changes
set fileencoding=utf-8 " encoding used for saving file
set nobackup " do not keep the ~ file
set nowb
set noswapfile

" edit settings
set spell " spellchecking
set expandtab " fill tabs with spaces
set nojoinspaces " no extra space after '.' when joining lines
set noshiftround
set shiftwidth=4 " set identation depth to 4 cols
set softtabstop=4 " backspacing over 4 spaces like over tabs
set tabstop=4 " set tab length to 4 cols
set nowrap " don't wrap lines
set linebreak " wrap lines at convenient points
set textwidth=80 " wrap lines automatically at 80th col
set formatoptions=tcqrn1
set autoindent
set smartindent
set smarttab

" auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

" search settings
set hlsearch " highlight search results
set ignorecase " do case insensitive search...
set incsearch " do incremental search
set smartcase " ...unless capital letters are used
map <leader><space> :let @/=''<cr> " clear search

" remap / to search
nnoremap / /\v
vnoremap / /\v

" center view on search result
noremap n nzz
noremap N Nzz

" remap j/k for move up/down editor lines
nnoremap j gj
nnoremap k gk

" press f4 to fix indentation in file; overwrites marker 'q' position
noremap <F4> mqggVG='qzz
inoremap <F4> <Esc>mqggVG='qzza

" press f5 to sort selection or paragraph
vnoremap <F5> :sort i<CR>
nnoremap <F5> Vip:sort i<CR>

map <F7> gg=G<C-o><C-o>

" press f8 to toggle search results highlight
noremap <F8> :nohl<CR>
inoremap <F8> <Esc>:nohl><CR>a

" press f12 key to toggle hidden characters
noremap <F12> :set list!<CR>
inoremap <F12> <C-o>:set list!<CR>
cnoremap <F12> <C-c>:set list!<CR>

" formatting
map <leader>q gqip

" visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬,space:␣,nbsp:·,trail:~,extends:>,precedes:<
" uncomment this to enable by default:
" set list " To enable by default
" or use f12 to toggle on/off

" easy align settings
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" theme
let g:airline_theme='simple'
colorscheme spacegray
let g:spacegray_underline_search = 1
let g:spacegray_use_italics = 1
let g:spacegray_low_contrast = 1

" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" vim-autoformat
noremap <F3> :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" vim-latex
let g:tex_flavor = 'latex'