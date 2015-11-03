" Setup Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'VundleVim/Vundle.vim'
Bundle 'vim-ruby/vim-ruby'

" Whitespace highlighter
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'tpope/vim-rails'

call vundle#end()


filetype plugin indent on

" Set solarized-dark as  the color scheme
execute pathogen#infect()
syntax enable
set background=dark
colorscheme solarized

" Show current line number and relative line number
set number
set rnu

" Set my preferred alternatives to the <esc> button
inoremap kj <esc>
inoremap jk <esc>

" Map automated addition of 'end' statement for Ruby
inoremap fj <CR><CR>end<Esc>-cc

" Default to tab == two spaces
autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab

" Tab == four spaces for Python
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

autocmd FileType ruby compiler ruby
