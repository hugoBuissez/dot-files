call plug#begin()

" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'preservim/nerdcommenter'
Plug 'ayu-theme/ayu-vim'

call plug#end()

syntax on
set background=dark

let ayucolor="mirage"
let mapleader = "/"

try
	colorscheme ayu
catch
endtry

"let g:lightline = {
"      \ 'colorscheme': 'embark',
"      \ }


if(has("termguicolors"))
	set termguicolors
endif

set undofile " Persistent undo
set autoindent	" Indent at new line
set si
set wrap
set incsearch	" Highlighting while searching
set encoding=utf8    

set tabstop=4 	" Tabulation to 4 spaces
set shiftwidth=4

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
