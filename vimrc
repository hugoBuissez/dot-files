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

"let g:miramare_enable_italic = 1
"let g:miramare_disable_italic_comment = 1
"let g:gruvbox_material_background = 'soft' " Colorscheme settings

try
	colorscheme jellybeans
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
nmap ; A;<Esc>

" Nerd tree binded to Ctrl+N
nmap <C-N> :NERDTreeToggle<CR>

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
 
" Clang-format on save (EPITA Coding Style)
function FormatBuffer()
  if &modified && !empty(findfile('.clang-format', expand('%:p:h') . ';'))
    let cursor_pos = getpos('.')
    :%!clang-format
    call setpos('.', cursor_pos)
  endif
endfunction
 
autocmd BufWritePre *.h,*.hpp,*.c,*.cpp,*.vert,*.frag :call FormatBuffer()

filetype plugin indent on
"set background=dark " Colorscheme settings
set nocompatible
set undofile " Persistent undo
set autoindent " Indent at new line
set si " Smart auto-indent
set wrap
set colorcolumn=80 " Limit char on a line
set incsearch " Highlighting while searching
set encoding=utf8    

" Tabulation to 4 spaces
set tabstop=4 
set shiftwidth=4
set expandtab

set laststatus=2 " Show status line
set number " Lines number
set t_Co=256
