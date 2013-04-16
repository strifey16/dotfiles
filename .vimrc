set nocompatible            
let mapleader = ","

filetype off    
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'metalelf0/vimt0d0'
Bundle 'tpope/vim-surround'
Bundle 'ervandew/supertab'
"Bundle 'vim-scripts/taglist.vim'"
"Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/gtags.vim'
Bundle "Chiel92/vim-autoformat"
Bundle 'vim-scripts/a.vim'
"Bundle 'airblade/vim-gitgutter'

"setting up Syntastic"
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++0x -Wall -Wextra -pedantic'
let g:syntastic_mode_map = {'mode' : 'passive'}

set noswapfile
set showmatch

syntax on
filetype plugin on
filetype indent on
set ofu=syntaxcomplete#Complete

noremap <leader>f :Autoformat<CR><CR>

set ruler
set number
set sts=4
set ts=4
set sw=4

map Y y$

inoremap jj <Esc>
inoremap kk <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
inoremap ;; <Esc>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

nnoremap <leader>l :set number!<CR>
nnoremap <leader>z :let @/ = ""<CR>
nnoremap U u

map <Tab> :tabnext<CR>
map <S-Tab> :tabprevious<CR>

autocmd QuickFixCmdPost [^l]* nested cwindow                                      
autocmd QuickFixCmdPost    l* nested lwindow

set wildignore=*.o,*~,*.pyc,*.class,*.bak,*.swp,*.ko

set wildmenu
set wildmode=list:longest
set wildignorecase

set ignorecase
set smartcase
set infercase

set incsearch
set hlsearch
set wrap

set title

set nobackup
set nowritebackup

set autoindent

augroup auto_h
	autocmd!
	au BufRead,BufNewFile *.cpp exe "vsplit" fnameescape(expand("<amatch>:r").".h")
	au BufRead,BufNewFile *.cpp :set syntax=cpp
augroup END
