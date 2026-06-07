set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set cursorline

set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set noswapfile
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set showmode
set showmatch
set hlsearch
set history=1000

set clipboard=unnamedplus

set wildmenu

call plug#begin()

    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdtree'
    Plug 'blazkowolf/gruber-darker.nvim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

colorscheme gruber-darker
nnoremap <C-b> :NERDTreeToggle<CR>
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#insert()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:coc_user_config = {
\   'languageserver': {
\     'qml': {
\       'command': '/usr/lib/qt6/bin/qmlls',
\       'args': [],
\       'filetypes': ['qml'],
\       'settings': {
\         'QML': {
\           'importPaths': ['/usr/lib/qt6/qml']
\         }
\       }
\     }
\   }
\ }
