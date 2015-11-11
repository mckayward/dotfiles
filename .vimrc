" Setup Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Required plugin for Vundle
Plugin 'VundleVim/Vundle.vim'

" Ruby and rails shortcuts and syntax highlighting
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" Whitespace highlighter
Plugin 'ntpeters/vim-better-whitespace'

" Automatic Pairing of {}, (), '', "", etc.
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'

" File navigation
Plugin 'scrooloose/nerdtree'

call vundle#end()

filetype plugin indent on

" Set solarized-dark as  the color scheme
" execute pathogen#infect()
syntax on
set background=dark

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
