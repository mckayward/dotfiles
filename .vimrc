set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-rails'

call vundle#end()

filetype plugin indent on

execute pathogen#infect()
syntax enable
set background=dark
colorscheme solarized
set tabstop=2 shiftwidth=2 expandtab
set number
inoremap kj <esc> 
inoremap fj <CR><CR>end<Esc>-cc
autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType ruby compiler ruby
