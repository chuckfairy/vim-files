au BufRead,BufNewFile *.twig set filetype=htmljinja
set nu
set winheight=40
set winminheight=5

set mouse=a
set nocompatible              " be iMproved, required
filetype off         " required


" size of a hard tabstop
set tabstop=4

 " size of an "indent"
set shiftwidth=4

let NERDTreeShowHidden=1

" " a combination of spaces and tabs are used to simulate tab stops at a width
" " other than the (hard)tabstop
set softtabstop=4


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Mini map
Plugin 'severin-lemaignan/vim-minimap'


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
set completeopt=longest,menuone
Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'scrooloose/nerdtree'



"  * Created the initial version of this script while playing around with VIM
"
"  
"
"


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


map <C-n> :NERDTreeToggle<CR>


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" let g:solarized_contrast = "normal"
let g:solarized_termcolors=256
" let g:solarized_contrast = "normal"
"let g:solarized_bold=0
"let g:solarized_diffmode="high"

" let g:solarized_visibility =  "high"

syntax enable

set background=dark

"if has('unix')
set t_Co=256
"endif



colorscheme monokai 
