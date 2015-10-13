""" Windows """
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
set shell=cmd.exe
set shellcmdflag=/C
set ffs=dos
set guifont=Consolas:h11
set undodir=$HOME/Vim/Undo
set encoding=utf-8
set backupdir=$HOME/Vim/Backup
set dir=$HOME/Vim/Swap//
au GUIEnter * simalt ~x 

""" Color """
if has("gui_running") 
    colorscheme lucius 
    LuciusWhite
    "set background=light 
    noremap <esc> :noh<CR><esc> 
else 
    set t_Co=256 
    set background=dark 
    colorscheme molokai 
endif 


""" Essentials """
syntax enable
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on
set cmdheight=2
set history=700
set so=7
set wildmenu
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp
set wildmode=longest,list
set ruler
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l,[,]
set ignorecase
set smartcase
set hlsearch
set incsearch
set nolazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set guioptions-=T
set guioptions-=m
set guioptions-=r
set rnu
set nu
set foldmethod=syntax
set foldlevel=99
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set wrap
set lbr
set nolist
set textwidth=0
set wrapmargin=0
set ai
set si
set undofile
set clipboard=unnamed
set laststatus=2
set autochdir

""" Custom """
let mapleader = ","
let g:mapleader = ","
map <leader>E :e! $MYVIMRC<cr>
map <leader>s :so $MYVIMRC<cr>
map <leader>y ggyG
map <leader>v ggVG
nmap <leader>w :w<cr>
nmap <leader>q :bd!<cr>
nmap <leader>h :cd $HOME<cr>
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>p "0p
map <leader>P "0P
map <space> /
map <C-space> ?
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <A-j> 20j
map <A-k> 20k
map 0 ^
inoremap jk <esc>

""" Views """
au BufWinLeave *\.+ mkview
au BufWinEnter *\.+ silent loadview

""" Plugins """
"MiniBufExplorer
map <F4> :MBEToggle<cr>
nmap H :MBEbp<cr>
nmap L :MBEbn<cr>
nmap <>q :MBEbd<cr>
let g:miniBufExplBRSplit = 0
let g:miniBufExplorerAutoStart = 1
let g:miniBufExplBuffersNeeded = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplShowBufNumbers = 0

"NerdTree
map <F2> :NERDTreeToggle<cr>

"Ctrl-P
map <leader>f :CtrlP<cr>
map <leader>b :CtrlPBuffer<cr>
map <leader>m :CtrlPMRU<cr>
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_show_hidden = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.project']

"Lightline
let g:lightline = {
      \ 'colorscheme': 'solarized_light',
      \}

execute pathogen#infect()
