set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-markdown'
"Plugin 'vim-latex/vim-latex'
Plugin 'lervag/vimtex'
"Plugin 'scrooloose/syntastic'
Plugin 'dense-analysis/ale'
Plugin 'vim-autoformat/vim-autoformat'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
Plugin 'voldikss/vim-floaterm'
Plugin 'preservim/tagbar'
" themes
Plugin 'ajh17/spacegray.vim'
Plugin 'wuelnerdotexe/vim-enfocado'
Plugin 'sonph/onehalf', { 'rtp': 'vim' }
Plugin 'tomasr/molokai'
Plugin 'sainnhe/sonokai'
Plugin 'sainnhe/edge'
call vundle#end()            " required

" to ignore " To ignore plugin indent changes, instead use: filetype plugin on
filetype plugin indent on    " required

" file type specific settings
filetype on " enable file type detection
filetype plugin on " load the plugins specific file types
filetype indent on " automatically indent code

let mapleader = "," " override default leader key

" allow hidden buffers
set hidden

" security
set modelines=0

" display settings
set encoding=utf-8 " encoding used for displaying file
set number " show line number
set linespace=3 " linespacing
set cursorline " enable highlighting selected line
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
set t_Co=256
set termguicolors
set guifont=Codelia:h12
set background=dark

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
" remap f7 to search
nnoremap <F7> /\v
vnoremap <F7> /\v
" center view on search result
noremap n nzz
noremap N Nzz
" remap j/k for move up/down editor lines
nnoremap j gj
nnoremap k gk

" press f4 to fix indentation in file; overwrites marker 'q' position
noremap <F4> mqggVG='qzz
inoremap <F4> <Esc>mqggVG='qzza

" press f8 to toggle search results highlight
noremap <F8> :nohl<CR>
inoremap <F8> <Esc>:nohl><CR>a

set list " visualize hidden characters by default; toggle with f12
set listchars=tab:▸\ ,eol:¬,space:␣,nbsp:·,trail:~,extends:>,precedes:<
noremap <F12> :set list!<CR>
inoremap <F12> <C-o>:set list!<CR>
cnoremap <F12> <C-c>:set list!<CR>

" formatting
map <leader>q gqip

" easy align settings
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" airline and theme
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_statusline_ontop=0
let g:airline#extensions#ale#enabled=1
"let g:airline_theme='simple'
"let g:airline_theme='papercolor'
"let g:airline_theme='enfocado'
"let g:airline_theme='onehalfdark'
"let g:airline_theme='sonokai'
let g:airline_theme='edge'
"colorscheme spacegray
"colorscheme enfocado
"colorscheme onehalfdark
"colorscheme molokai
"colorscheme sonokai
colorscheme edge
let g:spacegray_underline_search=1
let g:spacegray_use_italics=1
let g:spacegray_low_contrast=1
let g:enfocado_style='nature'

" fugitive
set statusline+=%{FugitiveStatusline()}

" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_auto_loc_list=1
"let g:syntastic_check_on_open=0
"let g:syntastic_check_on_wq=0

" vim-autoformat
noremap <F3> :Autoformat<CR>
let g:autoformat_autoindent=0
let g:autoformat_retab=0
let g:autoformat_remove_trailing_spaces=0

" vim-latex
let g:tex_flavor='latex'

" File Tree
map <F5> :NERDTreeToggle<CR>

" Tagbar
nmap <F6> :TagbarToggle<CR>

" Floating Terminal
let g:floaterm_keymap_toggle='<F2>'
let g:floaterm_width=0.9
let g:floaterm_height=0.9
let g:floaterm_title='Terminal'

" Git
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}
set signcolumn=yes
let g:gitgutter_set_sign_backgrounds=1

" ALE
let g:ale_sign_column_always=1
let g:ale_sign_error='>>'
let g:ale_sign_warning='--'
let g:ale_list_window_size=5
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace', 'prettier'],
\}

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
