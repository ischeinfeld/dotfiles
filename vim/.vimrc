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
"Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-vinegar.git'
Plugin 'beloglazov/vim-online-thesaurus'
Plugin 'vimoutliner/vimoutliner'
Plugin 'christoomey/vim-tmux-navigator'
" Bundle 'name/package' ...and so on...

filetype on

"""--------------------------"""
""" Plugin specific settings """
"""--------------------------"""

" -- solarized personal conf
set background=dark
try
	colorscheme solarized
catch
endtry

" -- gundo personal conf
nnoremap <F5> :GundoToggle<CR>

" -- vim-online-thesaurus personal conf
let g:online_thesaurus_map_keys=0
nnoremap <leader>t :OnlineThesaurusCurrentWord<CR> " alt t shortcut

" -- vimoutliner
filetype plugin indent on

"""""""""""""""""""""""""
""" Filetype Specific """
"""""""""""""""""""""""""
au BufRead,BufNewFile *.txt setfiletype text

"autocmd Filetype text set wrap
"autocmd Filetype text set linebreak
"autocmd Filetype text set nolist
"autocmd Filetype text set textwidth=0
"autocmd Filetype text set wrapmargin=0

""""""""""""""""""""""
""" General Config """
""""""""""""""""""""""

""" Writing config from: http://www.drbunsen.org/writing-in-vim/

func! WordProcessorMode()
	setlocal formatoptions=1
	setlocal noexpandtab
	map j gj
	map k gk
	map $ g$
	map 0 g0
	map ^ g^
	setlocal spell spelllang=en_us
	set complete+=s
	set formatprg=par
	setlocal wrap
	setlocal linebreak
endfu

com! WP call WordProcessorMode()


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
	highlight colorcolumn ctermbg=0 "14=light grey, 16=black
endif

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Make vim split sanely
set splitbelow
set splitright

" Change tab to 2 spaces for html and css
autocmd Filetype html set tabstop=2
autocmd Filetype html set shiftwidth=2
autocmd Filetype html set softtabstop=2
autocmd Filetype css set tabstop=2
autocmd Filetype css set shiftwidth=2
autocmd Filetype css set softtabstop=2
