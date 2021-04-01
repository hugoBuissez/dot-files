call plug#begin()

Plug 'preservim/nerdcommenter' " Quick comment / uncomment
Plug 'itchyny/lightline.vim' " Vim bottom line
Plug 'sonph/onehalf', { 'rtp': 'vim' }

call plug#end()

" Enable highlighted syntax and terminal colors
syntax enable;
set background=dark

" Set colorscheme
try
	colorscheme onehalfdark
catch
endtry

" NerdCommenting settings
let mapleader = "/"

" Adds ';' end of line whith button ';' in normal mode
nmap ; A;<Esc>

" Shift-[j, k] to scroll-[down, up] w/o moving cursor
nmap <s-j> <c-e>
nmap <s-k> <c-y>

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
 
" Clang-format on save (School Coding Style)
function FormatBuffer()
  if &modified && !empty(findfile('.clang-format', expand('%:p:h') . ';'))
    let cursor_pos = getpos('.')
    :%!clang-format
    call setpos('.', cursor_pos)
  endif
endfunction
 
autocmd BufWritePre *.cc,*.hh,*.h,*.hpp,*.c,*.cpp,*.vert,*.frag :call FormatBuffer()

set include=^\s#\sinclude\ \(<boost/\)\@!

" General setting
filetype plugin indent on

set termguicolors " Terminal color
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
