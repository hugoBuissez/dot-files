""PLUGINS""
"""""""""""

call plug#begin()

Plug 'drewtempelmeyer/palenight.vim'
Plug 'preservim/nerdcommenter'
Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'franbach/miramare'

call plug#end()


""COLORS""
""""""""""
syntax on

if(has("termguicolors"))
	set termguicolors
endif

let g:miramare_enable_italic = 1
let g:miramare_disable_italic_comment = 1
let g:gruvbox_material_background = 'soft' " Colorscheme settings
set background=dark

try
	colorscheme gruvbox-material
catch
endtry

""SETTINGS""
""""""""""""
let mapleader = "/" " for NERDcommenting

nmap <C-N> :NERDTreeToggle<CR>
set nocompatible
set undofile " Persistent undo
set autoindent	" Indent at new line
set si
set wrap
set incsearch	" Highlighting while searching
set encoding=utf8    
set tabstop=4 	" Tabulation to 4 spaces
set shiftwidth=4
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set number
set t_Co=256
