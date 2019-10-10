set nocompatible 

filetype off
source $VIMRUNTIME/mswin.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/itchyny/lightline.vim.git'
Plugin 'https://github.com/kien/ctrlp.vim.git'
Plugin 'w0rp/ale'
Plugin 'https://github.com/jreybert/vimagit'
Plugin 'https://github.com/jreybert/vim-gitbranch'
Plugin 'https://github.com/tpope/vim-fugitive'
Plugin 'https://github.com/airblade/vim-gitgutter'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'mattn/emmet-vim'
Plugin 'mhinz/vim-startify'
Plugin 'scrooloose/nerdcommenter'
Plugin 'prettier/vim-prettier', { 'do': 'npm install' }
Plugin 'https://github.com/Raimondi/delimitMate'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
call vundle#end()

filetype plugin indent on

" Text editor settings
set tabstop=2 
set expandtab
set shiftwidth=2
set rnu
set nu
set nohlsearch
set background=dark
colorscheme palenight
set selection=inclusive
set ignorecase
set autoindent
set smartindent
set laststatus=2
set noswapfile
set encoding=UTF-8
set guifont=Fira_Code:h10:cANSI:qDRAFT
" Key Remap0

let mapleader = " " 
imap ;; <Esc>

nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tk :tabnext<cr>
nnoremap <leader>tj :tabprev<cr>
nnoremap <leader>th :tabfirst<cr>
nnoremap <leader>tl :tablast<cr>
nnoremap <leader>s :w<cr>



"more movement keys
	nnoremap H 0
	nnoremap L $
	nnoremap J 5j 
	nnoremap K 5k

"Close
	nnoremap <leader>wd :q!<cr>
"Reload
	nnoremap <leader>rv :source<Space>$MYVIMRC<cr>
"Open vimrc
	nnoremap <leader>vim :tabnew $MYVIMRC<cr>
"splits
	nnoremap <leader>w/ :vs<cr>
	nnoremap <leader>w- :sp<cr>
	nnoremap <leader>wl <C-w>l<cr>
	nnoremap <leader>wh <C-w>h<cr>
	nnoremap <leader>wj <C-w>j<cr>
	nnoremap <leader>wk <C-w>k<cr>
	"mnemonic window full screen horizontal split
	nnoremap <leader>wrh <C-w>_<cr>
	"mnemonic window resize vertical split
	nnoremap <leader>wrv :vertical resize +50<cr>
	nnoremap <leader>wre <C-w>=<cr>
"move text up 
	nnoremap <A-k> <Up>ddp<Up>
"move text down 
	nnoremap <A-j> ddp
"Goyo centering and limelight toggle
  nnoremap <Leader>wc :Goyo<cr>
	
"nerdTree
map <leader>ft :NERDTreeToggle<cr>
nnoremap <leader>FT :NERDTree .<cr>
set autochdir
let nerdtreeshowhidden=1

syntax on

 set noswapfile
  set nobackup

"CTRlP
let g:ctrlp_cmd = 'CtrlP'

let g:lightline = {
	\ 'active': {
	\	'left': [ [ 'mode' , 'paste' ],
	\		  [ 'gitbranch', 'readonly', 'filename', 'modified']]
	\ },
	\ 'component_function': {
	\ 	'gitbranch': 'fugitive#head'
	\ },
	\ }

imap <expr><tab> emmet#expandAbbrIntelligent("\<tab>")"

"let g:startify_custom_header = [
"\'____        _     _        __      ___           ',
"\' |  _ \      | |   | |       \ \    / (_)         ', 
"\' | |_) | ___ | |__ | |__  _   \ \  / / _ _ __ ___  ',
 "\'|  _ < / _ \| '_ \| '_ \| | | \ \/ / | | '_ ` _ \ ',
 "\'| |_) | (_) | |_) | |_) | |_| |\  /  | | | | | | |',
 "\'|____/ \___/|_.__/|_.__/ \__, | \/   |_|_| |_| |_|',
 "\'                          __/ |                   ',
  "\'                        |___/                    ',
"]
"
"Goyo and Limelight Together 
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

autocmd User GoyoEnter set rnu
autocmd! User GoyoLeave set rnu
