" Install Vundle if it is not already installed
if !isdirectory(expand("~/.vim/bundle/Vundle.vim"))
    silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'sickill/vim-monokai'
Plugin 'sjl/badwolf'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'
Plugin 'shougo/neocomplete.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'

filetype plugin indent on

syntax enable
set background=dark             " Solarized specific
let g:solarized_termcolors=256  " Solarized specific
colorscheme solarized

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set backspace=indent,eol,start " allow delete everywhere
set colorcolumn=80  " 80 char column

set number          " show line numbers
set showcmd         " show command in bottom bar
set cursorline      " highlight current line
set showmatch       " highlight matching [{()}]
set hlsearch        " highlight search terms

" Syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-go 
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Neocomplete
let g:neocomplete#enable_at_startup = 1

" vim-airline 
let g:airline#extensions#tabline#enabled = 1

" NERDTree
map <C-n> :NERDTreeToggle<CR>


