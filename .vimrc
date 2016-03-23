au BufRead,BufNewFile *.twig set filetype=htmljinja
set nu
set winheight=40
" set winminheight=5

set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

set mouse=a
set nocompatible              " be iMproved, required
filetype off                  " required

set clipboard=unnamed

set cindent

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'beyondwords/vim-twig'

Plugin 'airblade/vim-gitgutter'

"Plugin 'tpope/vim-surround'

"Plugin 'Yggdroot/indentLine'

Plugin 'ap/vim-css-color'

Plugin 'godlygeek/csapprox'

"Plugin 'SpellCheck'

Plugin 'sudo.vim'

"Plugin 'matchit.zip'

Plugin 'flazz/vim-colorschemes'

Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'bronson/vim-trailing-whitespace'

"Plugin 'kchmck/vim-coffee-script'

"Plugin 'othree/html5.vim'

Plugin 'danro/rename.vim'

Plugin 'severin-lemaignan/vim-minimap'

Plugin 'mattn/emmet-vim'


" Plugin 'cosminadrianpopescu/vim-sql-workbench'
"
" Plugin 'majutsushi/tagbar'

" Plugin 'jaxbot/browserlink.vim'

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
map <S-f> :FixWhitespace<CR>
map <C-i> :put =map(range(1,30000), 'printf(''%06d'', v:val)')<CR>


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" let g:solarized_contrast = "normal"
let g:solarized_termcolors=256
" let g:solarized_contrast = "normal"
"let g:solarized_bold=0
"let g:solarized_diffmode="high"

" let g:solarized_visibility =  "high"

" Indent
let g:indentLine_color_term = 239
let g:indentLine_char = '+'
let g:indentLine_enabled = 1

" set list lcs=tab:\+\

syntax enable

set background=dark

"if has('unix')
"set t_Co=256
"endif

set t_Co=256

set guioptions-=r
set guioptions-=R
set guioptions-=L

let NERDTreeShowHidden=1

match ErrorMsg '\s\+$'

set ts=4 sw=4 et
let g:indent_guies_start_level=1
let g:indent_guides_guide_size=1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

"autocmd BufEnter * :syntax sync fromstart

colorscheme af
colorscheme ubaryd
