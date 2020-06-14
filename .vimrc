scriptencoding utf-8

" File Types
au BufRead,BufNewFile *.twig set filetype=htmljinja
au BufRead,BufNewFile *.qss set filetype=css
au BufRead,BufNewFile *.qrc set filetype=xml
au BufRead,BufNewFile *.mm set filetype=objc

set nu
set winheight=40
" set winminheight=5

set tabstop=4 softtabstop=0 expandtab! shiftwidth=4 noet

set listchars=nbsp:·,tab:│·,trail:\ 
set list " turns on showing chars described in listchars
set showmatch " highlights matching parens/brackets
set relativenumber

set hlsearch
set ruler " show cursor position in status bar
set showmatch " highlights matching parens/brackets
set autoindent " copy indent from prior line

set mouse=a
set nocompatible " be iMproved, required
filetype off " required

set clipboard=unnamedplus

set nofoldenable " No code folding

set cindent

"Status Line
set statusline=%<%f%m\ \[%Y]\ %=\ Line:%l\/%L\ Column:%c%V\ %P

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


"Plugin 'tpope/vim-surround'

"Plugin 'Yggdroot/indentLine'

Plugin 'ap/vim-css-color'

Plugin 'godlygeek/csapprox'

Plugin 'Shougo/neocomplcache.vim'

Plugin 'hashivim/vim-terraform'

"Plugin 'Rip-Rip/clang_complete'

"Plugin 'SpellCheck'

" Plugin 'docteurklein/php-getter-setter.vim'

Plugin 'sudo.vim'

"Plugin 'matchit.zip'

Plugin 'flazz/vim-colorschemes'

Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'bronson/vim-trailing-whitespace'


" C / C+

Plugin 'c.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-scripts/h2cppx'
"Plugin 'quark-zju/vim-cpp-auto-include'


"Plugin 'oranget/vim-csharp'
Plugin 'OmniSharp/omnisharp-vim'

Plugin 'peterhoeg/vim-qml'

Plugin 'maksimr/vim-jsbeautify'

"Plugin 'kchmck/vim-coffee-script'

Plugin 'danro/rename.vim'

Plugin 'severin-lemaignan/vim-minimap'

Plugin 'mattn/emmet-vim'

Plugin 'majutsushi/tagbar'

"Plugin 'OmniCppComplete'
"
Plugin 'Valloric/YouCompleteMe'


" Other langs
Plugin 'tikhomirov/vim-glsl'


" Track the engine.
Plugin 'sirver/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'derekwyatt/vim-fswitch'

Plugin 'will133/vim-dirdiff'

Plugin 'vim-scripts/TaskList.vim'

Plugin 'tomlion/vim-solidity'

Plugin 'moll/vim-node'

Plugin 'tobyS/vmustache'

Plugin 'StanAngeloff/php.vim'

Plugin 'arnaud-lb/vim-php-namespace'

Plugin 'tobyS/pdv'

"Plugin 'fatih/vim-go'

Plugin 'vim-utils/vim-man'

"HTML
Plugin 'alvan/vim-closetag'
"Plugin 'othree/html5.vim'

"javascript
Plugin 'pangloss/vim-javascript'

Plugin 'jelera/vim-javascript-syntax'

Plugin 'othree/yajs'

Plugin 'mxw/vim-jsx'

Plugin 'benmills/vimux'

Plugin 'chuckfairy/jellyfairy.vim'

Plugin 'AutoComplPop'

Plugin 'elixir-editors/vim-elixir'

Plugin 'chase/vim-ansible-yaml'

Plugin 'leafgarland/typescript-vim'

"Plugin 'joonty/vim-phpunitqf'

"Plugin 'joonty/vim-phpqa'


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
autocmd! BufNewFile,BufRead *.vs,*.fs,*.shader set ft=glsl


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

au! BufEnter *.cpp let b:fswitchdst = 'hpp,h' | let b:fswitchlocs = '../inc'

" Nerd tree keys
map <C-n> :NERDTreeToggle<CR>
nmap <silent> <Leader>tf :NERDTreeFind<CR>

" enable line numbers
let NERDTreeShowLineNumbers=1

" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber
let NERDTreeIgnore = ['\.meta$']

" @TODO autocmd BufWritePre /some/path/**.cpp :ruby CppAutoInclude::process


map <S-f> :FixWhitespace<CR>
map <C-k> :tabnew %<CR>


nnoremap <leader>. :CtrlPTag<cr>

nnoremap <leader>3 :YcmForceCompileAndDiagnostics<cr>

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
set wildignore=node_modules,build,Library,*.meta



syntax enable

set background=dark

set t_Co=256

set guioptions-=r
set guioptions-=R
set guioptions-=L


"Buffer Location
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undofile												" create undo files so undos carry over even after closed
set undolevels=5000											" store up to 5000 levels of undo history
set undodir=~/.vim/undo//

"NERD
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

match ErrorMsg '\s\+$'

let g:indent_guies_start_level=1
let g:indent_guides_guide_size=1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

let g:cpp_class_scope_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_template_highlight = 1

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"let g:ycm_auto_trigger = 1

let g:ycm_filetype_blacklist = { 'js': 1 }

let g:ycm_auto_start_csharp_server = 1
let g:ycm_auto_stop_csharp_server = 1

" Disable sql complete
let g:omni_sql_no_default_maps = 1
let g:ftplugin_sql_omni_key = '<Leader>sql'
let g:ftplugin_sql_omni_key = '<Plug>DisableSqlOmni'

let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_server_stdio = 1

augroup omnisharp_commands
    autocmd!

    " Show type information automatically when the cursor stops moving.
    " Note that the type is echoed to the Vim command line, and will overwrite
    " any other messages in this space including e.g. ALE linting messages.
    autocmd CursorHold *.cs OmniSharpTypeLookup

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    " Finds members in the current buffer
    autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    "autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
    autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
    autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

    " Navigate up and down by method/property/field
    autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>

    " Find all code errors/warnings for the current solution and populate the quickfix window
    autocmd FileType cs nnoremap <buffer> <Leader>cc :OmniSharpGlobalCodeCheck<CR>
augroup END

" Tell ALE to use OmniSharp for linting C# files, and no other linters.
let g:ale_linters = { 'cs': ['OmniSharp'] }

" Update semantic highlighting after all text changes
let g:OmniSharp_highlight_types = 3

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

" Rename with dialog
nnoremap <Leader>nm :OmniSharpRename<CR>
nnoremap <F2> :OmniSharpRename<CR>
" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

nnoremap <Leader>cf :OmniSharpCodeFormat<CR>

" Start the omnisharp server for the current solution
nnoremap <Leader>ss :OmniSharpStartServer<CR>

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


"autocmd BufEnter * :syntax sync fromstart


" php syntax options
" turning off a bunch of things to speed up scrolling
let php_sql_query = 0
let php_sql_heredoc = 0
let php_sql_nowdoc = 0
"let php_html_in_strings = 0
let php_html_in_heredoc = 0
let php_html_in_nowdoc = 0
let php_html_load = 0
let php_ignore_phpdoc = 0
let php_htmlInStrings = 1


" Use statements
"function! IPhpInsertUse()
    "call PhpInsertUse()
    "call feedkeys('a',  'n')
"endfunction
"autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
"autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

" Documentor
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
noremap <leader>, :call pdv#DocumentWithSnip()<CR>

" this mapping Enter key to <C-y> to chose the current highlight item
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"
"Put snippet overrides in this function.
function! PhpSyntaxOverride()
     hi! link phpDocTags phpDefine
     hi! link phpDocParam phpType
 endfunction

augroup phpSyntaxOverride
 autocmd!
 autocmd FileType php call PhpSyntaxOverride()
augroup END

let g:phpqa_codesniffer_args = "--standard=/home/cabeling/sources/psr-codesniff.xml"

let g:phpqa_messdetector_ruleset = "/home/cabeling/sources/phpmdrules.xml"
let g:phpqa_codecoverage_file = "/home/cabeling/sources/clover.xml"

" PHP Code Sniffer binary (default = "phpcs")
let g:phpqa_codesniffer_cmd='phpcs.phar'

" PHP Mess Detector binary (default = "phpmd")
let g:phpqa_messdetector_cmd='phpmd.phar'


"COLOR

colorscheme jellyfairy
