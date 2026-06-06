set number
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap

call plug#begin()

  Plug 'preservim/nerdtree'
  Plug 'blazkowolf/gruber-darker.nvim'

call plug#end()

nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif


colorscheme gruber-darker
