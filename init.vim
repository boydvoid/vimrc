"Enable Ctrl key windows functions
  "ie. ctrl+c for copy
  source $VIMRUNTIME/mswin.vim

"Change text editor settings
set linespace=5
set laststatus=2
set nu
set rnu 
set colorcolumn=0
set nohlsearch
set guifont=Fira_Code:h11
set selection=inclusive
set tabstop=2
set softtabstop=-1
set shiftwidth=0
set shiftround
set expandtab
set autoindent

"Folding
set foldmethod=indent
"no backup files
set noswapfile
set nobackup

filetype plugin indent on

"key remaps--------------------------------------------------------------------------------------------------------------

  "change <leader> to space 
  let mapleader = " "

  "j f act as Escape
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
    
  "Force Close  
    nnoremap <leader>fc :q!<cr>

  "Reload 
    nnoremap <leader>rv :source<Space>$MYVIMRC<cr>
    
  "Open vimrc
    nnoremap <leader>vim :tabnew $MYVIMRC<cr>

  "Working with window splits
    "Split window
      nnoremap <leader>vs :vs<cr>
    "Split Horizontal
      nnoremap <leader>hs :sp<cr>

  "Move text a line up 
    nnoremap <A-k> <Up>ddp<Up>
  "Move textg a line down
    nnoremap <A-j> ddp
  
  "Emmet Remap of ctrl+y+,
    imap <Space><Tab> <C-y>,
    
"Open fullscreen
au GUIEnter * simalt ~x

"Plug
  "Installed at Users/Bobby/vimfiles
    call plug#begin()

    "Themes & syntax highlightings 
      Plug 'https://github.com/joshdick/onedark.vim'
      Plug 'https://github.com/Valloric/MatchTagAlways'
      Plug 'https://github.com/Raimondi/delimitMate' 
      Plug 'https://github.com/1995eaton/vim-better-javascript-completion'
    " utils
      Plug 'https://github.com/scrooloose/nerdtree'
      Plug 'https://github.com/mattn/emmet-vim.git'
      Plug 'https://github.com/easymotion/vim-easymotion'
      Plug 'https://github.com/kien/ctrlp.vim'
      Plug 'https://github.com/prettier/vim-prettier'
      Plug 'itchyny/lightline.vim' 
      Plug 'vimlab/split-term.vim'
      Plug 'https://github.com/Yggdroot/indentLine'
      Plug 'https://github.com/tomtom/tcomment_vim'
    " Git  
      Plug 'https://github.com/jreybert/vimagit'
      Plug 'https://github.com/itchyny/vim-gitbranch'
      Plug 'https://github.com/tpope/vim-fugitive'
      Plug 'https://github.com/airblade/vim-gitgutter'

    call plug#end()

"One Dark Settings------------------------------ 
syntax on
colorscheme onedark

"NERDTree---------------------------------------
map <leader>N :NERDTreeToggle<CR>
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>

"Syntastic-------------------------------------- 
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
"CTRLP Open in new tab
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }
"terminal open 
map <leader>t :10Term<CR>

"Emmet------------------------------
