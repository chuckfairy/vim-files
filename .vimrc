" File Types
au BufRead,BufNewFile *.twig set filetype=htmljinja
au BufRead,BufNewFile *.qss set filetype=css
au BufRead,BufNewFile *.qrc set filetype=xml

set nu
set winheight=40
" set winminheight=5

set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

set hlsearch

set mouse=a
set nocompatible              " be iMproved, required
filetype off                  " required

set clipboard=unnamedplus

set nofoldenable " No code folding

set cindent

"Status Line
set statusline=%<%f%m\ \[%{&ff}:%{&fenc}:%Y]\ %{getcwd()}\ \ \[%{strftime('%Y/%b/%d\ %a\ %I:%M\ %p')}\]\ %=\ Line:%l\/%L\ Column:%c%V\ %P

let &path .= "," . system("git rev-parse --show-toplevel | tr -d '\\n'") . ",**"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'beyondwords/vim-twig'

Plugin 'airblade/vim-gitgutter'

Plugin 'rbong/vim-vertical'

Plugin 'Shougo/vimproc'

Plugin 'taglist.vim'

Plugin 'kien/ctrlp.vim'

Plugin 'vhdirk/vim-cmake'


"Plugin 'tpope/vim-surround'

"Plugin 'Yggdroot/indentLine'

Plugin 'ap/vim-css-color'

Plugin 'godlygeek/csapprox'

Plugin 'Shougo/neocomplcache.vim'

"Plugin 'Rip-Rip/clang_complete'

"Plugin 'SpellCheck'

Plugin 'sudo.vim'

"Plugin 'matchit.zip'

Plugin 'flazz/vim-colorschemes'

Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'bronson/vim-trailing-whitespace'

Plugin 'c.vim'

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'peterhoeg/vim-qml'

"Plugin 'kchmck/vim-coffee-script'

"Plugin 'othree/html5.vim'

Plugin 'danro/rename.vim'

Plugin 'severin-lemaignan/vim-minimap'

Plugin 'mattn/emmet-vim'

Plugin 'majutsushi/tagbar'

"Plugin 'OmniCppComplete'
"
Plugin 'Valloric/YouCompleteMe'

" Track the engine.
Plugin 'sirver/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'derekwyatt/vim-fswitch'

Plugin 'will133/vim-dirdiff'

Plugin 'vim-scripts/TaskList.vim'

"Plugin 'bbchung/clighter'


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
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal


set completeopt=longest,menuone
Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
Bundle 'scrooloose/nerdtree'

Plugin 'EvanDotPro/nerdtree-chmod'
Plugin 'chuckfairy/nerdtree-reveal'

autocmd FileType cpp TagbarOpen
autocmd FileType c TagbarOpen


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

au! BufEnter *.cpp let b:fswitchdst = 'hpp,h' | let b:fswitchlocs = '../inc'

" Nerd tree keys
map <C-n> :NERDTreeToggle<CR>
nmap <silent> <Leader>tf :NERDTreeFind<CR>


map <S-f> :FixWhitespace<CR>
map <C-k> :tabnew %<CR>


nnoremap <leader>. :CtrlPTag<cr>

nnoremap <leader>pc :CtrlPClearAllCaches <cr>

" Output file name and Directory
map <C-i> :put =expand('%:t:r')<CR>
nmap <silent> <leader>i :put =expand('%:p')<CR>
nmap <silent> <leader>dir :put =expand('%<')<CR>


nnoremap <leader>. :CtrlPTag<cr>
nnoremap <silent> <Leader>b :TagbarToggle<CR>


"Search by selected
vnoremap // y/<C-R>"<CR>


"Switch to the file and load it into the current window >
nmap <silent> <Leader>of :FSHere<cr>


"Switch to the file and load it into the window on the right >
nmap <silent> <Leader>ol :FSRight<cr>

"Switch to the file and load it into a new window split on the right >
nmap <silent> <Leader>oL :FSSplitRight<cr>

"Switch to the file and load it into the window on the left >
nmap <silent> <Leader>oh :FSLeft<cr>

"Switch to the file and load it into a new window split on the left >
nmap <silent> <Leader>oH :FSSplitLeft<cr>

" Switch to the file and load it into the window above >
nmap <silent> <Leader>ok :FSAbove<cr>

" Switch to the file and load it into a new window split above >
nmap <silent> <Leader>oK :FSSplitAbove<cr>

" Switch to the file and load it into the window below >
nmap <silent> <Leader>oj :FSBelow<cr>

" Switch to the file and load it into a new window split below >
nmap <silent> <Leader>oJ :FSSplitBelow<cr>

"bind C-y run "tmux show-buffer | xclip -i"


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" Indent
let g:indentLine_color_term = 239
let g:indentLine_char = '+'
let g:indentLine_enabled = 1


" CTRLP
let g:ctrlp_max_files=0


" set list lcs=tab:\+\

syntax enable

set background=dark

set t_Co=256

set guioptions-=r
set guioptions-=R
set guioptions-=L


"Buffer Location
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

"NERD
let NERDTreeShowHidden=1

match ErrorMsg '\s\+$'

set ts=4 sw=4 et
let g:indent_guies_start_level=1
let g:indent_guides_guide_size=1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

let g:cpp_class_scope_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_template_highlight = 1

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Disable sql complete
let g:omni_sql_no_default_maps = 1
let g:ftplugin_sql_omni_key = '<Leader>sql'
let g:ftplugin_sql_omni_key = '<Plug>DisableSqlOmni'

function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"


" this mapping Enter key to <C-y> to chose the current highlight item
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"autocmd BufEnter * :syntax sync fromstart

colorscheme jellyx
