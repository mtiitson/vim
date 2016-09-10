" PLUGINS
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'pangloss/vim-javascript'
Plug 'fholgado/minibufexpl.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'townk/vim-autoclose'
Plug 'amirh/html-autoclosetag'
Plug 'mxw/vim-jsx'
Plug 'danro/rename.vim'
call plug#end()

"COLORS
set background=dark
colorscheme solarized

"SETTINGS
syntax enable
set number
set clipboard+=unnamedplus
set ignorecase
set smartcase
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set undodir=$HOME/.nvim/undo
set backupdir=$HOME/.nvim/backup
set dir=$HOME/.nvim/swap//
set undofile
set foldmethod=syntax
set foldlevelstart=20
set autochdir
au BufWinLeave *\.+ mkview
au BufWinEnter *\.+ silent loadview

"MAPPINGS
let mapleader = ","
let g:mapleader = ","
imap jk <esc>
nmap <space> /
nmap <C-space> ?
nnoremap <Up> <C-W>k
nnoremap <Down> <C-W>j
nnoremap <Left> <C-W>h
nnoremap <Right> <C-W>l
map <A-j> 20j
map <A-k> 20k
map <leader>w :w<cr>
map <leader>E :e $MYVIMRC<cr>
map <leader>S :source $MYVIMRC<cr>
map 0 ^

"CtrlP
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])jspm_packages($|[/\\])|(^|[/\\])node_modules($|[/\\])|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_show_hidden = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.project', 'package.json', 'settings.gradle']

"NerdTree
map <F2> :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeFind<cr>

"MBE
map <F4> :MBEToggle<cr>
let g:miniBufExplModSelTarget = 1
let g:miniBufExplAutoStart = 1
let g:miniBufExplBuffersNeeded = 0
let g:miniBufExplMaxSize = 2
let g:miniBufExplBRSplit = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplShowBufNumbers = 1
nnoremap <leader>q :MBEbd<cr>
nnoremap <C-TAB>   :MBEbf<CR>
nnoremap <C-S-TAB> :MBEbb<CR>
nnoremap H :MBEbp<cr>
nnoremap L :MBEbn<cr>

"JSX
let g:jsx_ext_required = 0
