""PLUGINS""
"""""""""""

call plug#begin()

Plug 'drewtempelmeyer/palenight.vim'
Plug 'preservim/nerdcommenter'
Plug 'ayu-theme/ayu-vim'
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'franbach/miramare'
Plug 'vim-scripts/DoxygenToolkit.vim'

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

try
	colorscheme gruvbox-material
catch
endtry

""SETTINGS""
""""""""""""
let mapleader = "/" " for NERDcommenting

let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
"let g:DoxygenToolkit_blockHeader="-------------------------------"
"let g:DoxygenToolkit_blockFooter="---------------------------------"
let g:DoxygenToolkit_authorName="Mathias Lorente"
let g:DoxygenToolkit_licenseTag="My own license"

" For C/C++
" Add semi-colon and start new line
noremap ; A;<Esc>o 

" Nerd tree binded to Ctrl+N
nmap <C-N> :NERDTreeToggle<CR>

set background=dark
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
