set nocompatible
filetype off

filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-rails'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
call plug#end()

filetype plugin indent on
syntax on

" Set colorscheme
let base16colorspace=256 " Access colors present in 256 colorspace
set t_Co=256 " 256 color mode
set background=dark
colorscheme base16-default-dark

" Show current line number
set number

" Ensure backspace clears line breaks
set backspace=indent,eol,start

" Set my preferred alternatives to the <esc> button
inoremap kj <esc>
inoremap jk <esc>

" Simplify saving
:command W w
:command Q q
:command WQ wq
:command Wq wq

map <F2> :NERDTreeToggle<CR>
map <C-j> ciw<C-r>0<ESC>

" NERD Commenter Settings
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Map automated addition of 'end' statement for Ruby
inoremap fj <CR><CR>end<Esc>-cc

" Default to tab == two spaces
autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab

autocmd FileType md set noexpandtab

" Language specific tab width
autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType json set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType html set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType java set tabstop=4|set shiftwidth=4|set expandtab

autocmd FileType ruby compiler ruby

set mouse=a
set colorcolumn=80
