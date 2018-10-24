source $VIMRUNTIME/mswin.vim
"set settings
set linespace=5
set laststatus=2
set tabstop=2
set nu
set rnu 
set colorcolumn=0
set nohlsearch
set guifont=Fira_Code:h11
set selection=inclusive
"key remaps--------------------------------------------------
let mapleader = " "

"No Escape Key
	imap jf <Esc>
"Tabs
	nnoremap tn :tabnew<cr>
	nnoremap tk :tabnext<cr>
	nnoremap tj :tabprev<cr>
	nnoremap th :tabfirst<cr>
	nnoremap tl :tablast<cr>
"save 
	nnoremap <leader>s :w<cr>
"Close 
	nnoremap <leader>qq :q<cr>
"Force Quite
	nnoremap <leader>qf :q!<cr>
"Reload Vim
	nnoremap <leader>rv :source<Space>$MYVIMRC<cr>
"Open vimrc
	nnoremap <leader>ev :tabnew $MYVIMRC<cr>
"Working with window splits
	"Split window
	nnoremap <leader>wv :vs<cr>
	"Split Horizontal
	nnoremap <leader>hv :sp<cr>

"no backup files
set nobackup

"Open fullscreen
au GUIEnter * simalt ~x

"Plugins
"Installed at Users/Bobby/vimfiles
call plug#begin()

Plug 'https://github.com/joshdick/onedark.vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/mattn/emmet-vim.git'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/prettier/vim-prettier'
Plug 'https://github.com/jreybert/vimagit'
" Initialize plugin system
call plug#end()

"One dark theme
syntax on
colorscheme onedark

"NERDTree 
map <leader>N :NERDTreeToggle<CR>
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"CtrlP 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Vim Airline
let g:airline#extensions#tabline#enabled = 1

