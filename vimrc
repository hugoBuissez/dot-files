""PLUGINS""
"""""""""""

call plug#begin()

Plug 'drewtempelmeyer/palenight.vim'
Plug 'preservim/nerdcommenter'
Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/gruvbox-material'

call plug#end()


""COLORS""
""""""""""
syntax on

if(has("termguicolors"))
	set termguicolors
endif

let g:gruvbox_material_background = 'soft'
set background=dark

try
	colorscheme gruvbox-material
catch
endtry

""SETTINGS""
""""""""""""
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
let ayucolor="mirage"
let mapleader = "/" " for NERDcommenting

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
