"      _  ___  _  _______ ____
"     | |/ _ \| |/ / ____|  _ \
"  _  | | | | | ' /|  _| | |_) |
" | |_| | |_| | . \| |___|  _ <
"  \___/ \___/|_|\_\_____|_| \_\
"
" Joker commonly settings:


"   ____ ___  __  __ __  __  ___  _   _
"  / ___/ _ \|  \/  |  \/  |/ _ \| \ | |
" | |  | | | | |\/| | |\/| | | | |  \| |
" | |__| |_| | |  | | |  | | |_| | |\  |
"  \____\___/|_|  |_|_|  |_|\___/|_| \_|
"
" Joker:set leader
let mapleader="["

if has("syntax")
	syntax on
endif

set background=light
let g:solarized_termcolors=256
colorscheme solarized

set timeoutlen=1000
set ttimeoutlen=100
set updatetime=100

set laststatus=2
set history=1000
set noswapfile
set nobackup
set showcmd
set number
set ruler

set cursorcolumn
set cursorline

" optimize scrolling screen
set re=1
set ttyfast

set splitbelow
set splitright

set shiftwidth=4
set smartindent
set autoindent
set cindent
set ignorecase
set incsearch
set smartcase
set hlsearch
set wildmenu
set scrolloff=8

set backspace=indent,eol,start
set softtabstop=4
set tabstop=4
set smarttab
set mouse=a

au BufNewFile,BufRead *.py
\ set textwidth=79 |
\ set expandtab |
\ set fileformat=unix

set foldmethod=syntax
set foldlevel=99
nnoremap <space> za

set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030

nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

nnoremap <leader>ww :w<Cr>
nnoremap <leader>q :q!<Cr>
nnoremap <leader>wq :wq<Cr>

vnoremap <leader>y "+y

filetype indent on


" __     ___   _ _   _ ____  _     _____
" \ \   / / | | | \ | |  _ \| |   | ____|
"  \ \ / /| | | |  \| | | | | |   |  _|
"   \ V / | |_| | |\  | |_| | |___| |___
"    \_/   \___/|_| \_|____/|_____|_____|
"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage plugin
Plugin 'VundleVim/Vundle.vim'

" original repos on github
" 2020.07.04 too slow, disable to boost.
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'rdnetto/YCM-Generator', {'branch':'stable'}
" Plugin 'w0rp/ale'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'alpertuna/vim-header'
" Plugin 'Yggdroot/indentLine'
" Plugin 'EasyGrep'
" Plugin 'indexer.tar.gz'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/ListToggle'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'sukima/xmledit'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'godlygeek/tabular'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kshenoy/vim-signature'
Plugin 'dyng/ctrlsf.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'will133/vim-dirdiff'
" conflict <C-j>
" Plugin 'vim-latex/vim-latex'
" startup time statistics
" Plugin 'tweekmonster/startuptime.vim'
" ..................................
" vim-scripts repos
" Plugin 'Tagbar'
" Plugin 'vimprj'
Plugin 'SudoEdit.vim'
Plugin 'cscope.vim'
Plugin 'ShowPairs'
Plugin 'LargeFile'
Plugin 'a.vim'
Plugin 'DfrankUtil'

call vundle#end()
filetype plugin indent on


"   ____ _____ ____  _     ____
"  / ___|_   _|  _ \| |   |  _ \
" | |     | | | |_) | |   | |_) |
" | |___  | | |  _ <| |___|  __/
"  \____| |_| |_| \_\_____|_|
"
let g:ctrlp_map = '<leader>p'

let g:ctrlp_cmd = 'CtrlP'

map <leader>f :CtrlPMRU<CR>

let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
        \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
        \ }

let g:ctrlp_working_path_mode = 0

let g:ctrlp_match_window_bottom = 1

let g:ctrlp_max_height = 15

let g:ctrlp_match_window_reversed = 0

let g:ctrlp_mruf_max = 500

let g:ctrlp_follow_symlinks = 1


"   ____ _   _ _   _ ____   ___
"  / ___| | | | \ | |  _ \ / _ \
" | |  _| | | |  \| | | | | | | |
" | |_| | |_| | |\  | |_| | |_| |
"  \____|\___/|_| \_|____/ \___/
"
let g:gundo_width = 50

let g:gundo_preview_height = 40

let g:gundo_right = 1

nnoremap <F4> :GundoToggle<CR>


" "  _   _  ____ ___  __  __ ____  _     _____ _____ _____ __  __ _____
" " | | | |/ ___/ _ \|  \/  |  _ \| |   | ____|_   _| ____|  \/  | ____|
" " | | | | |  | | | | |\/| | |_) | |   |  _|   | | |  _| | |\/| |  _|
" " | |_| | |__| |_| | |  | |  __/| |___| |___  | | | |___| |  | | |___
" "  \___/ \____\___/|_|  |_|_|   |_____|_____| |_| |_____|_|  |_|_____|
" "
" set completeopt-=preview
"
" set tags=tags;
" set autochdir
"
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
"
" let g:ycm_confirm_extra_conf = 0
"
" let g:ycm_collect_identifiers_from_tags_files = 1
"
" let g:ycm_min_num_of_chars_for_completion = 1
"
" let g:ycm_complete_in_comments = 1
"
" let g:ycm_cache_omnifunc = 0
"
" let g:ycm_autoclose_preview_window_after_completion = 1
"
" let g:ycm_seed_identifiers_with_syntax = 1
"
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"
" let g:ycm_key_invoke_completion = '<TAB>'
"
" " let g:ycm_show_diagnostics_ui = 0
"
" nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"
" highlight YcmErrorSign ctermfg=DarkRED
" highlight YcmErrorSign ctermbg=none
" highlight YcmErrorSection ctermbg=DarkBLUE
" highlight YcmErrorSection ctermfg=WHITE
"
" inoremap <leader>, <C-x><C-o>


"  _   _ _   _____ ___ ____  _   _ ___ ____  ____
" | | | | | |_   _|_ _/ ___|| \ | |_ _|  _ \/ ___|
" | | | | |   | |  | |\___ \|  \| || || |_) \___ \
" | |_| | |___| |  | | ___) | |\  || ||  __/ ___) |
"  \___/|_____|_| |___|____/|_| \_|___|_|   |____/
"
let g:UltiSnipsExpandTriger = "<TAB>"

let g:UltiSnipsJumpForwardTrigger = "<C-n>"

let g:UltiSnipsJumpBackwardTrigger = "<C-p>"

let g:UltiSnipsEditSplit = "vertical"


"  _   _ _____ ____  ____      _____ ____  _____ _____
" | \ | | ____|  _ \|  _ \    |_   _|  _ \| ____| ____|
" |  \| |  _| | |_) | | | |_____| | | |_) |  _| |  _|
" | |\  | |___|  _ <| |_| |_____| | |  _ <| |___| |___
" |_| \_|_____|_| \_\____/      |_| |_| \_\_____|_____|
"
let NERDTreeWinPos = "left"

let NERDChristmasTree = 1

let NERDTreeAutoCenter = 1

let NERDTreeMouseMode = 2

let NERDTreeShowFiles = 1

let NERDTreeShowHidden = 1

let NERDTreeHightCursorline = 1

let NERDTreeShowLineNumbers = 1

let NERDTreeWinSize = 32

let NERDTreeMinimalUI = 1

let NERDTreeAutoDeleteBuffer = 1

" autocmd vimenter * if !argc() | NERDTree | endif

nnoremap <silent><F2> :NERDTreeToggle<CR>


"  _   _ _____ ____  ____   ____
" | \ | | ____|  _ \|  _ \ / ___|___  _ __ ___
" |  \| |  _| | |_) | | | | |   / _ \| '_ ` _ \
" | |\  | |___|  _ <| |_| | |__| (_) | | | | | |
" |_| \_|_____|_| \_\____/ \____\___/|_| |_| |_|
"
let g:NERDSpaceDelims = 1

let g:NERDDefaultAlign = 'left'

let g:NERDCommentEmptyLines = 1

let g:NERDCustomDelimiters = { 'python': { 'left': '#', 'leftAlt': '#' } }


"  _     ___ ____ _   _ _____ _     ___ _   _ _____
" | |   |_ _/ ___| | | |_   _| |   |_ _| \ | | ____|
" | |    | | |  _| |_| | | | | |    | ||  \| |  _|
" | |___ | | |_| |  _  | | | | |___ | || |\  | |___
" |_____|___\____|_| |_| |_| |_____|___|_| \_|_____|
"

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }


"  __  __    _    ____  _   _ ____   ___ __        _ _   _
" |  \/  |  / \  |  _ \| |/ /|  _ \ / _ \\ \  _   / | \ | |
" | |\/| | / _ \ | |_) | | / | | | | | | |\ \/ \ / /|  \| |
" | |  | |/ ___ \|  _ <|   \ | |_| | |_| | \  \ / / | |\  |
" |_|  |_|_/   \_\_| \_\_|\_\|____/ \___/   \/ \_/  |_| \_|
"
" let g:mkdp_auto_start=1

nmap <F5> :MarkdownPreview<CR>


" "   ____ ____   ____ ___  ____  _____
" "  / ___/ ___| / ___/ _ \|  _ \| ____|
" " | |   \___ \| |  | | | | |_) |  _|
" " | |___ ___) | |__| |_| |  __/| |___
" "  \____|____/ \____\___/|_|   |_____|
" "
" if has("cscope")
" 	if has('quickfix')
" 		set cscopequickfix=s-,c-,d-,i-,t-,e-
" 	endif
"
" 	" Ctrl+] & Ctrl+t/Ctrl+o support
" 	set cscopetag
"
" 	" check cscope for definition of a symbol before checking ctags:
" 	" set to 1 if you want the reverse search order.
" 	set csto=1
"
" 	" use |:cstag|(:cs find g)， not `:tag`
" 	set cst
"
" 	" add any cscope database in current directory
" 	if filereadable("cscope.out")
" 		cs add cscope.out
" 	" else add the database pointed to by environment variable
" 	elseif $CSCOPE_DB !=""
" 		cs add $CSCOPE_DB
" 	endif
"
" 	" show msg when any other cscope db added
" 	set cscopeverbose
"
" 	nmap css :cs find s <C-R>=expand("<cword>")<CR><CR> :cw<CR>
" 	nmap csg :cs find g <C-R>=expand("<cword>")<CR><CR>
" 	nmap csc :cs find c <C-R>=expand("<cword>")<CR><CR>
" 	nmap cst :cs find t <C-R>=expand("<cword>")<CR><CR>
" 	nmap cse :cs find e <C-R>=expand("<cword>")<CR><CR>
" 	nmap csf :cs find f <C-R>=expand("<cfile>")<CR><CR>
" 	nmap csi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
" 	nmap csd :cs find d <C-R>=expand("<cword>")<CR><CR>
" endif


"  _        _    ____   ____ _____      _____ ___ _     _____
" | |      / \  |  _ \ / ___| ____|    |  ___|_ _| |   | ____|
" | |     / _ \ | |_) | |  _|  _| _____| |_   | || |   |  _|
" | |___ / ___ \|  _ <| |_| | |__|_____|  _|  | || |___| |___
" |_____/_/   \_\_| \_\\____|_____|    |_|   |___|_____|_____|
"
let g:LargeFile = 20


"  _____  _    ____ _     ___ ____ _____
" |_   _|/ \  / ___| |   |_ _/ ___|_   _|
"   | | / _ \| |  _| |    | |\___ \ | |
"   | |/ ___ \ |_| | |___ | | ___) || |
"   |_/_/   \_\____|_____|___|____/ |_|
"
" let g:tagbar_ctags_bin='/usr/bin/ctags'

nmap <F3> :TagbarToggle<CR>

let tagbar_width = 32

let g:tagbar_compact = 1

let g:tagbar_type_cpp = {
    \ 'kinds' : [
   	 \ 'c:classes:0:1',
   	 \ 'd:macros:1:1',
   	 \ 'e:enumerators:1:0',
   	 \ 'f:functions:0:1',
   	 \ 'g:enumeration:0:1',
   	 \ 'l:local:1:1',
   	 \ 'm:members:0:1',
   	 \ 'n:namespaces:0:1',
   	 \ 'p:functions_prototypes:0:1',
   	 \ 's:structs:0:1',
   	 \ 't:typedefs:0:1',
   	 \ 'u:unions:0:1',
   	 \ 'v:global:0:1',
   	 \ 'x:external:0:1'
    \ ],
    \ 'sro'        : '::',
    \ 'kind2scope' : {
   	 \ 'g' : 'enum',
   	 \ 'n' : 'namespace',
   	 \ 'c' : 'class',
   	 \ 's' : 'struct',
   	 \ 'u' : 'union'
    \ },
    \ 'scope2kind' : {
   	 \ 'enum'      : 'g',
   	 \ 'namespace' : 'n',
   	 \ 'class'     : 'c',
   	 \ 'struct'    : 's',
   	 \ 'union'     : 'u'
    \ }
\ }


"     _
"    / \
"   / _ \
"  / ___ \
" /_/   \_\
"
nmap <leader>ch :AS<Cr>


"   ____ _____ ____  _     ____  _____
"  / ___|_   _|  _ \| |   / ___||  ___|
" | |     | | | |_) | |   \___ \| |_
" | |___  | | |  _ <| |___ ___) |  _|
"  \____| |_| |_| \_\_____|____/|_|
"

nmap     <leader>sf :CtrlSF<Cr>
" nmap     <leader>ff <Plug>CtrlSFPrompt
" vmap     <leader>ff <Plug>CtrlSFVwordPath
" vmap     <leader>fF <Plug>CtrlSFVwordExec
" nmap     <leader>fn <Plug>CtrlSFCwordPath
" nmap     <leader>fp <Plug>CtrlSFPwordPath
" nnoremap <leader>fo :CtrlSFOpen<CR>
" nnoremap <leader>ft :CtrlSFToggle<CR>
" inoremap <leader>ft <Esc>:CtrlSFToggle<CR>


"  ____  _____ ____  _       _     ____ _____
" |  _ \| ____|  _ \| |     / \   / ___/ ____|
" | |_) |  _| | |_) | |    / _ \ | |   |  _|
" |  _ <| |___|  __/| |___/ ___ \| |__ | |___
" |_| \_\_____|_|   |____/_/   \_\\____\_____|
"
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
   	 let flag .= 'gec'
    else
   	 let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
   	 let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
   	 let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction

" unconfirmed, non-whole-word
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" unconfirmed, whole-word
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" confirmed, non-whole-word
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" confirmed, whole-word
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>


" "     _    _     _____
" "    / \  | |   | ____|
" "   / _ \ | |   |  _|
" "  / ___ \| |___| |___
" " /_/   \_\_____|_____|
" "
" let g:ale_set_loclist = 0
"
" let g:ale_set_quickfix = 1
"
" " let g:ale_open_list = 1
"
" let g:ale_sign_error = '>>'
"
" let g:ale_sign_warning = '>>'
"
" highlight ALEErrorSign ctermfg=DarkRED
" highlight ALEErrorSign ctermbg=none
" highlight ALEWarningSign ctermfg=BLACK
" highlight ALEWarningSign ctermbg=YELLOW
"
" aug QFClose
"   au!
"   au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
" aug END


"  _     ___ ____ _____ _____ ___   ____  ____ _     _____
" | |   |_ _/ ___|_   _|_   _/ _ \ / ___|/ ___| |   | ____|
" | |    | |\___ \ | |   | || | | | |  _| |  _| |   |  _|
" | |___ | | ___) || |   | || |_| | |_| | |_| | |___| |___
" |_____|___|____/ |_|   |_| \___/ \____|\____|_____|_____|
"
let g:lt_quickfix_list_toggle_map = '<leader>z'


" "  ___ _   _ ____  _____ _   _ _____ _     ___ _   _ _____
" " |_ _| \ | |  _ \| ____| \ | |_   _| |   |_ _| \ | | ____|
" "  | ||  \| | | | |  _| |  \| | | | | |    | ||  \| |  _|
" "  | || |\  | |_| | |___| |\  | | | | |___ | || |\  | |___
" " |___|_| \_|____/|_____|_| \_| |_| |_____|___|_| \_|_____|
" "
" set list lcs=tab:\┆\
" 
" let g:indentLine_char = '┆'
" 
" let g:indentLine_conceallevel = 2


"  ___ _   _ ____  _______  _______ ____
" |_ _| \ | |  _ \| ____\ \/ / ____|  _ \
"  | ||  \| | | | |  _|  \  /|  _| | |_) |
"  | || |\  | |_| | |___ /  \| |___|  _ <
" |___|_| \_|____/|_____/_/\_\_____|_| \_\
"
" let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"


"   ____ ____  ____       _   _ ___ ____ _   _ _     ___ ____ _   _ _____
"  / ___|  _ \|  _ \     | | | |_ _/ ___| | | | |   |_ _/ ___| | | |_   _|
" | |   | |_) | |_) |____| |_| || | |  _| |_| | |    | | |  _| |_| | | |
" | |___|  __/|  __/_____|  _  || | |_| |  _  | |___ | | |_| |  _  | | |
"  \____|_|   |_|        |_| |_|___\____|_| |_|_____|___\____|_| |_| |_|
"
let g:cpp_class_scope_highlight = 1

let g:cpp_member_variable_highlight = 1

let g:cpp_class_decl_highlight = 1

let g:cpp_experimental_template_highlight = 1


" " __     _____ __  __       _   _ _____    _    ____  _____ ____
" " \ \   / /_ _|  \/  |     | | | | ____|  / \  |  _ \| ____|  _ \
" "  \ \ / / | || |\/| |_____| |_| |  _|   / _ \ | | | |  _| | |_) |
" "   \ V /  | || |  | |_____|  _  | |___ / ___ \| |_| | |___|  _ <
" "    \_/  |___|_|  |_|     |_| |_|_____/_/   \_\____/|_____|_| \_\
" "
" let g:header_auto_add_header = 0
"
" let g:header_field_author = 'joker'
"
" let g:header_field_author_email = 'zexishao@foxmail.com'
"
" let g:header_field_modified_by = 0
"
" let g:header_field_timestamp_format = '%Y-%m-%d %H:%M:%S'
"
" " autocmd BufNewFile *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.py,*.sh call header#add_header(0, 0, 1)
" " autocmd BufNewFile *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.py,*.sh :normal ``
" " autocmd BufWritePre *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.py,*.sh silent! :AddHeader
"
" if has("autocmd")
"   au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" endif


" "  _         _____   __  __
" " | |    __ |_   _|__\ \/ /
" " | |   / _` || |/ _ \\  /
" " | |__| (_| || |  __//  \
" " |_____\__,_||_|\___/_/\_\
" "
" set grepprg=grep\ -nH\ $*
" 
" let g:tex_flavor='latex'
" 
" set iskeyword+=:
" 
" autocmd BufEnter *.tex set sw=2


