"""""""""""""""""""""
""" Vundle Config """ as per tilvim.com/2013/12/28/pathogen-for-vundle.html
"""""""""""""""""""""

set nocompatible "NOTE: Only matters for vim
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'sjl/gundo.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
" Bundle 'name/package' ...and so on...

filetype on

"""--------------------------"""
""" Plugin specific settings """
"""--------------------------"""

" -- solarized personal conf
set background=light
try
	colorscheme solarized
catch
endtry

" -- gundo personal conf
nnoremap <F5> :GundoToggle<CR>

""""""""""""""""""""""
""" General Config """
""""""""""""""""""""""

""" Some config from: http://stevelosh.com/blog/2010/09/coming-home-to-vim/

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

""" Other config

"let mapleader = ","

syntax on

if (exists('+colorcolumn'))
	set colorcolumn=80
	highlight colorcolumn ctermbg=7
endif

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

""""""""""""""""""""
" For neovim only "
"""""""""""""""""""

" Python version for neovim:
let g:python_host_prog='/Users/ischeinfeld/anaconda/bin/python'

