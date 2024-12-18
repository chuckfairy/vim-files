scriptencoding utf-8

set updatetime=300

" File Types
au BufRead,BufNewFile *.twig set filetype=twig
au BufRead,BufNewFile *.qss set filetype=css
au BufRead,BufNewFile *.qrc set filetype=xml
au BufRead,BufNewFile *.mm set filetype=objc
au BufRead,BufNewFile *.tsx set filetype=typescriptreact
au BufRead,BufNewFile *.js set filetype=javascriptreact
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.tss set filetype=scss
au BufRead,BufNewFile *.cnf set filetype=config
au BufRead,BufNewFile *.neon set filetype=yaml
au BufRead,BufNewFile *.tco set filetype=zip

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

set nu
set winheight=40
" set winminheight=5

" Cool 4 tabs
" set tabstop=4 softtabstop=0 expandtab! shiftwidth=4 noet

" Lame 2 spaces
set expandtab tabstop=2 shiftwidth=2

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

" set cindent

"Status Line
set statusline=%<%f%m\ \[%Y]\ %=\ Line:%l\/%L\ Column:%c%V\ %P

let &path .= "," . system("git rev-parse --show-toplevel | tr -d '\\n'") . ",**"

" Markdown
let g:polyglot_disabled = ['markdown', 'md']
let g:vim_markdown_folding_disabled = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"

" Plugin
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'airblade/vim-gitgutter'

Plugin 'rbong/vim-vertical'

Plugin 'Shougo/vimproc'

Plugin 'taglist.vim'

" Searching
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

"Plugin 'kien/ctrlp.vim'
"Plugin 'FelikZ/ctrlp-py-matcher'

" UI
Plugin 'Yggdroot/indentLine'


"Plugin 'tpope/vim-surround'

"Plugin 'Yggdroot/indentLine'

" CSS
Plugin 'ap/vim-css-color'

Plugin 'godlygeek/csapprox'

"Plugin 'Shougo/neocomplcache.vim'


" Dev Ops

Plugin 'hashivim/vim-terraform'

Plugin 'chase/vim-ansible-yaml'


"Plugin 'Rip-Rip/clang_complete'

"Plugin 'SpellCheck'

" Plugin 'docteurklein/php-getter-setter.vim'

" Non Nvim
" Plugin 'sudo.vim'

"Plugin 'matchit.zip'


" Color
Plugin 'flazz/vim-colorschemes'
Plugin 'folke/tokyonight.nvim'
Plugin 'chuckfairy/jellyfairy.vim'


" NERD
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'ryanoasis/vim-devicons'


" Formatting

Plugin 'bronson/vim-trailing-whitespace'


" C / C+

Plugin 'c.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'vim-scripts/h2cppx'
"Plugin 'quark-zju/vim-cpp-auto-include'
Plugin 'peterhoeg/vim-qml'

" C#
"Plugin 'oranget/vim-csharp'
Plugin 'OmniSharp/omnisharp-vim'
"Plugin 'scrooloose/syntastic'
Plugin 'dense-analysis/ale'
Plugin 'puremourning/vimspector'
"Plugin 'prabirshrestha/asyncomplete.vim'

" Completion
Plugin 'neoclide/coc.nvim'


"Plugin 'kchmck/vim-coffee-script'

Plugin 'danro/rename.vim'

"Plugin 'severin-lemaignan/vim-minimap'
"Plugin 'wfxr/code-minimap'
Plugin 'wfxr/minimap.vim'


Plugin 'majutsushi/tagbar'


"Plugin 'OmniCppComplete'
"
"Plugin 'Valloric/YouCompleteMe'


" Other langs
"Plugin 'tikhomirov/vim-glsl'
"Plugin 'jparise/vim-graphql'


" Track the engine.
"Plugin 'sirver/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

Plugin 'derekwyatt/vim-fswitch'

Plugin 'will133/vim-dirdiff'

Plugin 'vim-scripts/TaskList.vim'

Plugin 'moll/vim-node'

Plugin 'tobyS/vmustache'


" PHP

"Plugin 'StanAngeloff/php.vim'

Plugin 'phpactor/phpactor',  {'do': 'composer install', 'for': 'php'}

Plugin 'dsawardekar/wordpress.vim'

"Plugin 'beyondwords/vim-twig'


"

"" Require ncm2 and this plugin
"Plugin 'ncm2/ncm2'
"Plugin 'roxma/nvim-yarp'

"" NOTE: you need to install completion sources to get completions. Check
"" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
"Plugin 'ncm2/ncm2-bufword'
"Plugin 'ncm2/ncm2-path'

"" PHP
"Plugin 'phpactor/ncm2-phpactor'
"Plugin 'arnaud-lb/vim-php-namespace'
"Plugin 'stephpy/vim-php-cs-fixer'

Plugin 'tobyS/pdv'

"Plugin 'fatih/vim-go'

Plugin 'vim-utils/vim-man'

"HTML
Plugin 'alvan/vim-closetag'
Plugin 'mattn/emmet-vim'
"Plugin 'othree/html5.vim'

"javascript
Plugin 'sheerun/vim-polyglot'

"Plugin 'pangloss/vim-javascript'

"Plugin 'jelera/vim-javascript-syntax'

Plugin 'othree/yajs'

"Plugin 'mxw/vim-jsx'
"Plugin 'leafgarland/typescript-vim'

Plugin 'maksimr/vim-jsbeautify'


Plugin 'benmills/vimux'


"Plugin 'AutoComplPop'

"Plugin 'joonty/vim-phpunitqf'

"Plugin 'joonty/vim-phpqa'


"Plugin 'bbchung/clighter'

"Project
Plugin 'editorconfig/editorconfig-vim'


"NVIM
Plugin 'lambdalisue/suda.vim'



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


"Bundle 'ervandew/supertab'
"let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

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
let NERDTreeIgnore = ['\.meta$', '\.gcno$']

" @TODO autocmd BufWritePre /some/path/**.cpp :ruby CppAutoInclude::process


map <S-f> :FixWhitespace<CR>
map <C-k> :tabnew %<CR>


nnoremap <leader>. :Tags<cr>

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
let g:indentLine_color_term = 23
let g:indentLine_char = '|'
let g:indentLine_enabled = 1
let g:indentLine_leadingSpaceEnabled = 1

set list lcs=tab:\|\ 


" CTRLP
"let g:ctrlp_max_files=0
"let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
set wildignore=node_modules,build,Library,*.meta,*.csproj,Debug

" FZF
nnoremap <C-f> :GFiles<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-a> :Ag<CR>
nnoremap <C-a> :Ag<CR>
nnoremap <C-o> :Rg<CR>

" FZF don't search by file names
"command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)
com! -bar -bang Ag call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter=: --nth=4..'}, 'right'), <bang>0)
"com! -bar -bang Rg call fzf#vim#rg(<q-args>, fzf#vim#with_preview({'options': '--delimiter=: --nth=4..'}, 'right'), <bang>0)


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

" Indent
let g:indent_guies_start_level=1
let g:indent_guides_guide_size=1
hi IndentGuidesOdd  ctermbg=green
hi IndentGuidesEven ctermbg=green

" C++
let g:cpp_class_scope_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_template_highlight = 1

" YCM
"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"let g:ycm_auto_trigger = 1
"let g:ycm_filetype_blacklist = { 'js': 1 }
"let g:ycm_auto_start_csharp_server = 1
"let g:ycm_auto_stop_csharp_server = 1

" Disable sql complete
let g:omni_sql_no_default_maps = 1
let g:ftplugin_sql_omni_key = '<Leader>sql'
let g:ftplugin_sql_omni_key = '<Plug>DisableSqlOmni'

let g:OmniSharp_server_use_mono = 1
"let g:OmniSharp_server_use_net6 = 1
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim
let g:OmniSharp_diagnostic_exclude_paths = [
\ 'obj\/',
\ '[Tt]emp\/',
\ 'Library\/',
\ 'ThirdParty\/',
\ 'Plugins\/',
\ '\<AssemblyInfo\.cs\>'
\]

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"set completeopt=menu,menuone,preview,noselect,noinsert

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

augroup omnisharp_commands
    autocmd!

    " Show type information automatically when the cursor stops moving.
    " Note that the type is echoed to the Vim command line, and will overwrite
    " any other messages in this space including e.g. ALE linting messages.
    "autocmd CursorHold *.cs OmniSharpTypeLookup

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
    "autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>

    " Find all code errors/warnings for the current solution and populate the quickfix window
    autocmd FileType cs nnoremap <buffer> <Leader>cc :OmniSharpGlobalCodeCheck<CR>
augroup END

" Tell ALE to use OmniSharp for linting C# files, and no other linters.
let g:ale_linters = {
\'cs': ['OmniSharp'],
\'javascript': ['eslint', 'tsserver'],
\   'css': ['stylelint'],
\   'sugarss': ['stylelint'],
\   'cpp': ['cc'],
\   'php': ['phan' ],
\}
" 'phpstan', 

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'vue': ['eslint'],
\}



" The following commands are contextual, based on the cursor position.
"nnoremap <buffer> gd :ALEGoToDefinition<CR>
nnoremap <buffer> <Leader>fi :ALEFindImplementations<CR>
nnoremap <buffer> <Leader>fs :ALEFindSymbol<CR>
nnoremap <buffer> <Leader>fu :ALEFindUsages<CR>

" Finds members in the current buffer
nnoremap <buffer> <Leader>fr :ALEFindReferences<CR>

nnoremap <buffer> <Leader>fx :ALEFix<CR>
"autocmd FileType cs nnoremap <buffer> <Leader>tt :ALETypeLookup<CR>
nnoremap <buffer> <Leader>dc :ALEDocumentation<CR>

" Navigate up and down by method/property/field
"autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
nnoremap <buffer> <C-j> :ALENext<CR>

" Find all code errors/warnings for the current solution and populate the quickfix window
nnoremap <buffer> <Leader>cc :ALELint<CR>

" Indent line
"let g:vim_json_syntax_conceal = 0
let g:vim_json_conceal=0
set conceallevel=1

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


"autocmd BufEnter * :syntax sync fromstart

" HTML
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.tsx'
let g:closetag_filetypes = 'html,xhtml,phtml,js,jsx'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,js,tsx'
let g:closetag_enable_react_fragment = 0

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

" enable ncm2 for all buffers
"autocmd BufEnter *.php call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
"set completeopt=noinsert,menuone,noselect


"PHP CS Fixer

"let g:php_cs_fixer_path = "~/.vim/php/php-cs-fixer.phar" 

"call ale#Set('php_phpcs_executable', 'phpcs2')

nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>


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

let g:wordpress_vim_wordpress_path='/home/chuck/Sources/wp/wordpress'

" Path Setup

set path+=/home/chuck/Sources/themeco/x/src/js/app/**5
set path+=/home/chuck/Sources/themeco/x/cornerstone/includes/**5
set suffixesadd=.js,.jsx,.tsx,.vue,.scss

" Macros
" Object expansion
let @x = 'f,a'

"COLOR

colorscheme jellyfairy
