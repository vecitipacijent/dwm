" Set compatibility to Vim only
set nocompatible

" Automatically wrap text that extends beyond the screen lenght
set wrap

" Encoding
set encoding=utf-8

" Show line numbers
set number

" Status bar
set laststatus=2

" Colorscheme Config
"let g:lightline = {
"	      \ 'colorscheme': 'wombat',
"      \ }

" Powrline configs
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'
set t_Co=256

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
  source ~/.vimrc.plug
endif
