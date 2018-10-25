source $VIMRUNTIME/mswin.vim
"set settings
set linespace=5
set laststatus=2
set nu
set rnu 
set colorcolumn=0
set nohlsearch
set guifont=Fira_Code:h11
set selection=inclusive

" length of an actual \t character:
set tabstop=2
" length to use when editing text (eg. TAB and BS keys)
" (0 for ‘tabstop’, -1 for ‘shiftwidth’):
set softtabstop=-1
" length to use when shifting text (eg. <<, >> and == commands)
" (0 for ‘tabstop’):
set shiftwidth=0
" round indentation to multiples of 'shiftwidth' when shifting text
" (so that it behaves like Ctrl-D / Ctrl-T):
set shiftround

" if set, only insert spaces; otherwise insert \t and complete with spaces:
set expandtab

" reproduce the indentation of the previous line:
set autoindent
" keep indentation produced by 'autoindent' if leaving the line blank:
"set cpoptions+=I
" try to be smart (increase the indenting level after ‘{’,
" decrease it after ‘}’, and so on):
"set smartindent
" a stricter alternative which works better for the C language:
"set cindent
" use language‐specific plugins for indenting (better):
filetype plugin indent on
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
	nnoremap <leader>cc :q<cr>
"Force Quit
	nnoremap <leader>cf :q!<cr>
"Reload 
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
"au GUIEnter * simalt ~x
if exists('g:Gui')

    " Starts in fullscreen, Maximized should work too (untested)
    let g:GuiWindowFullScreen=1
endif
"Plugins
"Installed at Users/Bobby/vimfiles
call plug#begin()

Plug 'https://github.com/joshdick/onedark.vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/mattn/emmet-vim.git'
Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/prettier/vim-prettier'
Plug 'https://github.com/jreybert/vimagit'
Plug 'itchyny/lightline.vim' 
Plug 'https://github.com/itchyny/vim-gitbranch'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/Shougo/deoplete.nvim'
Plug 'vimlab/split-term.vim'
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

let g:ctrlp_cmd = 'CtrlP'
map <leader>o :CtrlP<CR>

"Vim Airline
"let g:airline#extensions#tabline#enabled = 1
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

"Open in Browser
nnoremap <A-b> :! start %<CR>
"Deoplete 
let g:deoplete#enable_at_startup = 1
"CTRLP Open in new tab
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }
"terminal open 
map <leader>t :10Term<CR>
