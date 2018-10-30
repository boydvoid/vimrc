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
"set foldmethod=indent
"no backup files
set noswapfile
set nobackup
"set omnifunc = syntaxcomplete#Complete
filetype plugin on

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

  "More movement commands 
    nnoremap H 0 
    nnoremap L $
    nnoremap J 5j
    nnoremap K 5k

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
    " imap <Space><Tab> <C-y>,
  "Comments
     nnoremap <leader>/ :TComment<cr>


"Python Module 
let g:python3_host_prog='C:\Users\Bobby\AppData\Local\Programs\Python\Python37\python.exe'

"Plug
  "Installed at Users/Bobby/vimfiles
    call plug#begin()

    "Themes & syntax highlightings 
      Plug 'https://github.com/joshdick/onedark.vim'
      Plug 'https://github.com/Valloric/MatchTagAlways'
      Plug 'https://github.com/Raimondi/delimitMate' 
       
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
      Plug 'https://github.com/wincent/terminus'
      Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
      Plug 'junegunn/fzf.vim'
      Plug 'terryma/vim-multiple-cursors'

      "Deoplete and Linting
      Plug 'https://github.com/Shougo/deoplete.nvim'
      Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
      Plug 'wokalski/autocomplete-flow'
      Plug 'Shougo/neosnippet'
      Plug 'Shougo/neosnippet-snippets' 
      "Linting
       Plug 'w0rp/ale'
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
map <leader>n :NERDTreeToggle<CR>
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>N :NERDTree .<CR>
let NERDTreeShowHidden=1
"Syntastic-------------------------------------- 
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe = 'npm run lint --'

"CtrlP 
let g:ctrlp_cmd = 'CtrlP'
map <leader>o :CtrlP<CR>
let g:ctrlp_working_path_mode =  0

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

"Deoplete------------------------------
" let g:deoplete#enable_at_startup = 1
" neosnippet
" let g:neosnippet#enable_completed_snippet = 1"
"
"JShint and ALE
let g:ale_fixers = {
  \ 'javascript': ['eslint']
  \ }
let b:ale_linters = ['eslint']
let b:ale_fix_on_save = 1
