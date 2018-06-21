"Setting Space to be my leader
noremap <Space> <Nop>
let mapleader = "\<Space>"

"Configuring vim-plug
call plug#begin('/home/devon/vimfiles/plugged')

Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-surround'
Plug 'venantius/vim-cljfmt'
Plug 'venantius/vim-eastwood'
Plug 'vim-syntastic/syntastic'

"Golang setup
Plug 'fatih/vim-go'

call plug#end()

"plug setup
nnoremap <leader>pi :PlugInstall<CR>

set encoding=utf-8

inoremap jk <Esc>

nnoremap <leader>e :Explore<CR>
nnoremap <leader>o :edit<Space>

"Buffer Management
nnoremap <leader>bd :bd<CR>
nnoremap <leader>bl :ls<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bs :w<CR>

nnoremap <leader>b :b
nnoremap <leader>vb :vsp<Space><bar><Space>b
nnoremap <leader>hb :sp<Space><bar><Space>b

"Window Management
nnoremap <leader>sv :vsp<Space>
nnoremap <leader>sh :sp<Space>
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l
nnoremap <leader>wc :close<CR>
nnoremap <leader>wm :only<CR>

"vimrc management
nnoremap <leader>ve :edit<Space>~\.vimrc<CR>
nnoremap <leader>vs :source<Space>~\.vimrc<CR>

"Always show status bar
set laststatus=2
set number relativenumber

let g:airline_skip_empty_sections = 1

"Golang setup
let g:go_disable_autoinstall = 0

"Synastic set
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1 

set wildmenu
set wildmode=list:longest,full

if !has("gui_running")
   set term=xterm
   set t_Co=256
   let g:airline_symbols_ascii = 1
   let &t_SI = "\<Esc>[6 q"
   let &t_SR = "\<Esc>[4 q"
   let &t_EI = "\<Esc>[2 q"
endif

set background=dark
colorscheme gruvbox
