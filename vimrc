" Use Vim settings, rather than Vi settings
" This must be the first
set nocompatible
filetype off

"set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"letting Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" ==== Snipmate ====
Bundle "MarcWeber/vim-addon-mw-utils"  
Bundle "tomtom/tlib_vim"  
Bundle "honza/vim-snippets"
Bundle 'garbas/vim-snipmate'  

" ==== Git tools ====
Bundle 'tpope/vim-fugitive' 

" ==== Rails ====
Bundle 'tpope/vim-rails.git'

" ==== Commenting and uncommenting stuff ====
Bundle 'tomtom/tcomment_vim'

" Molokai theme
Bundle 'tomasr/molokai' 
" Configs to make Molokai look great
set background=dark  
let g:molokai_original=1  
let g:rehash256=1  
set t_Co=256  
colorscheme molokai 

" ==== Ruby ====
Bundle 'vim-ruby/vim-ruby'  
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" ==== Surroundings ====
Bundle 'tpope/vim-surround'

" Autogenerate pairs for brackets
Bundle 'jiangmiao/auto-pairs'

" ==== Tab completions ====
Bundle 'ervandew/supertab' 

" ==== Fuzzy finder ====
Bundle 'ctrlpvim/ctrlp.vim'

" ==== For tests ====
Bundle 'janko-m/vim-test'

" ==== Navigation tree ====
Bundle 'scrooloose/nerdtree'

" Dispatching the test runner to tmux pane
Bundle 'tpope/vim-dispatch'



" Add Plugins before the following line
call vundle#end()
filetype plugin indent on

set shell=/bin/bash

" ========== General Config ============

set number                      "Line numbers
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=100                 "Store lots of :cmdline history
set autoread                    "Reload files changed outside vimset hidden
syntax on                       "Turn on syntax highlighting
set autoindent 			" Auto indention should be on  

let mapleader=","               "Change mapleader to Comma

" enable extended % matching
runtime macros/matchit.vim

" Additional configurations for Nerd Tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <leader>q :NERDTreeToggle<CR> 

" Show trailing whitespace and spaces before a tab
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

" Lovely linenumbers
set nu 

" Searching
set hlsearch

set ignorecase
set smartcase

" Remove highlights with leader + enter
nmap <Leader><CR> :nohlsearch<cr> 

" Buffer switching
map <leader>p :bp<CR> " ,p previous buffer
map <leader>n :bn<CR> " ,n next buffer
map <leader>d :bd<CR> " ,d delete buffer

" Allow to jump to test files and such with rails-vim
map <leader>t :A<CR> " \t to jump to test file
map <leader>r :r<cr> " \t to jump to related file

" highlight the current line
set cursorline
" Highlight active column
" set cuc cul

" interact every copy and paste with system clipboard
set clipboard=unnamed
