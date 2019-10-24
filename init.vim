" /$$$$$$$            /$$       /$$                 /$$                 /$$    /$$ /$$                                  
"| $$__  $$          | $$      | $$                | $/                | $$   | $$|__/                                  
"| $$  \ $$  /$$$$$$ | $$$$$$$ | $$$$$$$  /$$   /$$|_/   /$$$$$$$      | $$   | $$ /$$ /$$$$$$/$$$$   /$$$$$$   /$$$$$$$
"| $$$$$$$  /$$__  $$| $$__  $$| $$__  $$| $$  | $$     /$$_____/      |  $$ / $$/| $$| $$_  $$_  $$ /$$__  $$ /$$_____/
"| $$__  $$| $$  \ $$| $$  \ $$| $$  \ $$| $$  | $$    |  $$$$$$        \  $$ $$/ | $$| $$ \ $$ \ $$| $$  \__/| $$      
"| $$  \ $$| $$  | $$| $$  | $$| $$  | $$| $$  | $$     \____  $$        \  $$$/  | $$| $$ | $$ | $$| $$      | $$      
"| $$$$$$$/|  $$$$$$/| $$$$$$$/| $$$$$$$/|  $$$$$$$     /$$$$$$$/         \  $/   | $$| $$ | $$ | $$| $$      |  $$$$$$$
"|_______/  \______/ |_______/ |_______/  \____  $$    |_______/           \_/    |__/|__/ |__/ |__/|__/       \_______/
"                                         /$$  | $$                                                                     
"                                        |  $$$$$$/                                                                     
"                                         \______/ 



" WINDOWS VIMRC
set nocompatible 
set termguicolors
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
Plugin 'jceb/vim-orgmode'
Plugin 'tmhedberg/SimpylFold'
Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plugin 'easymotion/vim-easymotion'
Plugin 'jbgutierrez/vim-better-comments'
Plugin 'Yggdroot/indentLine'
Plugin 'robaboyd/alphatheme'
Plugin 'lifepillar/vim-colortemplate'
Plugin 'rakr/vim-one'
Plugin 'arcticicestudio/nord-vim'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'terryma/vim-smooth-scroll'

call vundle#end()

filetype plugin indent on

" Text editor settings
  set tabstop=4 
  set expandtab
  set shiftwidth=2
  set rnu
  set nu
  set nohlsearch
  set background=dark
  colorscheme nord
  set selection=inclusive
  set ignorecase
  set autoindent
  set smartindent
  set laststatus=2
  set noswapfile
  set encoding=UTF-8
  Guifont Fira Code:h11
  noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 3, 7)<CR>
  noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 3, 7)<CR>
  noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 3, 7)<CR>
  noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 3, 7)<CR>
" Key Remap0

let mapleader = " " 
imap jf <Esc>

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
	nnoremap <leader>wsv :vs<cr>
	nnoremap <leader>wsh :sp<cr>
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
 nnoremap <leader>wc :Goyo<cr>
	
"Folding 
"Enable Folding wit Leader Tab
  nnoremap <leader>fc za :echo 'Close fold'<cr>
  nnoremap <leader>fC zM :echo 'Close all folds'<cr>
  nnoremap <leader>fo zO :echo 'Opened fold'<cr>
  nnoremap <leader>fO zR :echo 'Open all folds'<cr>
  nnoremap <leader>fn zj :echo 'Next fold'<cr>
  nnoremap <leader>fp zk :echo 'Previous fold'<cr>
"nerdTree
map <leader>ft :NERDTreeToggle<cr>

"Change Bookmark Plugin
  "toggle bm
  nnoremap <leader>bmt :BookmarkToggle<cr>
  nnoremap <leader>bm :BookmarkAnnotate<cr>
  nnoremap <leader>bmf :BookmarkShowAll<cr>
  nnoremap <leader>bmn :BookmarkNext<cr>
  nnoremap <leader>bmp :BookmarkPrev<cr>
nnoremap <leader>FT :NERDTree .<cr>

set autochdir
let nerdtreeshowhidden=1

syntax on

 set noswapfile
  set nobackup

"CTRlP
let g:ctrlp_cmd = 'CtrlP'

let g:lightline = {
	\ 'active':  {
	\	'left': [ [ 'mode' , 'paste' ],
	\		  [ 'gitbranch', 'readonly', 'relativepath', 'modified']]
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

"Goyo and Limelight Together 
  autocmd! User GoyoEnter Limelight
  autocmd! User GoyoLeave Limelight!
  autocmd User GoyoEnter set rnu
  autocmd! User GoyoLeave set rnu


" Python integration
let g:python3_host_prog='C:\Users\BOYDRX\AppData\Local\Programs\Python\Python37\python.exe'

" Enable folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

let g:SimpylFold_docstring_preview = 1

" change font size
  command! Bigger :call rpcnotify(0, 'Gui', 'Font', substitute(g:GuiFont, '\d\+$', '\=submatch(0)+1', ''))
  command! Smaller :call rpcnotify(0, 'Gui', 'Font', substitute(g:GuiFont, '\d\+$', '\=submatch(0)-1', ''))

  nnoremap <silent> <leader>= :Bigger<cr>
  nnoremap <silent> <leader>- :Smaller<cr>
