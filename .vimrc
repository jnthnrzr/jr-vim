set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Add all your plugins below this line here
" ************************************************
" YouCompleteMe for autocomplete
Plugin 'valloric/youcompleteme'
" Indent Python code correctly
Plugin 'vim-scripts/indentpython.vim'
" Check syntax
Plugin 'scrooloose/syntastic'
" PEP8 checking for python code
Plugin 'nvie/vim-flake8'
" Ctrl-P to enable search files
Plugin 'kien/ctrlp.vim'
" A proper file tree
Plugin 'scrooloose/nerdtree'
" Basic git commands support using vim-fugitive
Plugin 'tpope/vim-fugitive'
" Vim Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Mappings for easy editing of surroundings []{}"" in pairs
Plugin 'tpope/vim-surround'
" Insert or delete brackets, parens, quotes in pair
Plugin 'jiangmiao/auto-pairs'
" Vim Hard Mode
Plugin 'wikitopian/hardmode'
" *************************************************************
" All of your Plugins must be added BEFORE the following line

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" ******************** Brief help ********************************
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; 
"                   - append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; 
"                   - append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" execute pathogen#infect()

" BEGIN NERDTree settings
" Hide .pyc files from NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$'] " ignore files in NERDTree
" END NERDTree settings

set laststatus=2
set term=xterm-256color

" BEGIN Vim Airline settings
" Automatically add  powerline symbols to airline
let g:airline_powerline_fonts = 1
" Airline Theme
let g:airline_theme='dark'
" END Vim Airline settings

" BEGIN YouCompleteMe settings
" YouCompleteMe will auto-close the preview window after completion
let g:ycm_autoclose_preview_window_after_completion=1
" END YouCompleteMe settings

" BEGIN Hard Mode settings
" enable Hard Mode by default
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
" To manually enable Hard Mode:
" :call HardMode()
" To manually disable Hard Mode:
" :call EasyMode()
" END Hard Mode settings

" Substitute Arrow keys to resize split screens
" nnoremap <left> :vertical resize +5<cr> 
" nnoremap <right> :vertical resize -5<cr>
" nnoremap <up> :resize +5<cr>
" nnoremap <down> :resize -5<cr>

" Display 80th column
if(exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif

let mapleader=","           " leader is set to ,
syntax enable		        " enable syntax processing
set background=dark         " sets dark background
colorscheme badwolf         " color scheme next option:onedark  
set tabstop=4               " number of visual spaces per TAB
set softtabstop=4           " number of spaces in tab when editing
set shiftwidth=4            " columns moved by TAB 
set textwidth=79            " line length doesn't go beyond 80 chars
set expandtab               " TAB in insert mode produces correct spaces
set autoindent              " turn on autoindent
set lazyredraw              " redraw only when we need to
set fileformat=unix         " store the file in unix format
set expandtab               " tabs are spaces
set encoding=utf-8          " Select utf-8 encoding
set number		            " show line numbers
set showcmd                 " show command in bottom bar
set cursorline              " highlight current line
filetype indent on          " load filetype specific indent files
set wildmenu                " visual autocomplete for command menu
set showmatch               " hightlight matching [{()}]
set incsearch               " search as characters are entered
set hlsearch                " highlight matches
let python_highlight_all=1  " python code looks pretty
syntax on                   " turn on syntax highlighting
"set foldenable             " enable folding
set foldmethod=indent       " fold based on indent level
set foldlevel=99            " sets the fold level
" if it is set to 0, all folds will be closed. Setting it to 99 would
" guarantee folds are always open. Setting it to 10 ensures that only
" very nested blocks of code are folded when opening a buffer.
" use <za> to fold (and unfold)

" toggle Relative numbering using <C-n>
"function! NumberToggle()
"    if(&relativenumber == 1)
"        set number
"    else
"        set relativenumber
"    endif
"endfunc
"nnoremap <C-n> :call NumberToggle()<cr>
" auto relative numbering in Normal mode
"autocmd InsertEnter * :set number
"autocmd InsertLeave * :set relativenumber

" ========================================
" Keymappings
" ========================================

" Press <jj> to emulate <Escape>
inoremap jj <Esc>
" Press <Space-Tab> to add line above current line
inoremap <Space><Tab> <Esc>O
" Press <Space-Enter> to add line below current line
inoremap <Space><Enter> <Esc>o
" Press <Leader-w> to save a file
map <Leader>w :w<CR>
" Press <Leader-a> to select all
map <Leader>a ggVG
" Press <Leader-o> to open a new file
map <Leader>o :CtrlP<CR>
" Press <Leader-q> to close the file
map <Leader>q :q<CR>

" Press <Alt-j> to move line up 
" nnoremap <A-j> :m .+1<CR>==
" inoremap <A-j> <Esc>:m .+1<CR>==gi
" vnoremap <A-j> :m '>+1<CR>gv=gv
" Press  <Alt-k> to move line down
" nnoremap <A-k> :m .-2<CR>==
" inoremap <A-k> <Esc>:m .-2<CR>==gi
" vnoremap <A-k> :m '<-2<CR>gv=gv
