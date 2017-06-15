""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   _   ___  _   _ _____  ____  
"  (_) / _ \| |/ /| ____||  _ \
"  | || | | | | / |  _|  | |_) |
"  | || |_| |   \ | |___ |  _ <
" _/ | \___/|_|\_\|_____||_| \_\
"|__/ 
"
"Joker commonly settings:

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____ ___  __  __ __  __  ___  _   _ 
" / ___/ _ \|  \/  |  \/  |/ _ \| \ | |
"| |  | | | | |\/| | |\/| | | | |  \| |
"| |__| |_| | |  | | |  | | |_| | |\  |
" \____\___/|_|  |_|_|  |_|\___/|_| \_|
"                                      
"joker:set leader
let mapleader=","

if has("syntax")
	syntax on
endif

colorscheme ron

set laststatus=2
set history=1000
set noswapfile
set nobackup
set showcmd
set number
set ruler

set cursorcolumn
set cursorline

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
set scrolloff=4

set backspace=indent,eol,start
set softtabstop=4
set tabstop=4
set smarttab
set mouse=a

"Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030

"quit 
nmap <ESC>w :w<Cr>
nmap <ESC>q :q<Cr>

"split navigations
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

filetype indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"__     ___   _ _   _ ____  _     _____ 
"\ \   / / | | | \ | |  _ \| |   | ____|
" \ \ / /| | | |  \| | | | | |   |  _|  
"  \ V / | |_| | |\  | |_| | |___| |___ 
"   \_/   \___/|_| \_|____/|_____|_____|
"                                       
set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

"let Vundle manage Vundle
Bundle 'VundleVim/Vundle.vim'

"my Bundle here:
"
" original repos on github
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'Valloric/ListToggle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'rdnetto/YCM-Generator', {'branch':'stable'}
Bundle 'vim-syntastic/syntastic'
Bundle 'nvie/vim-flake8'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 't9md/vim-quickhl'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'powerline/powerline'
"Bundle 'tpope/vim-fugitive'
"Bundle 'honza/vim-snippets'
"Bundle 'SirVer/ultisnips'
"..................................
" vim-scripts repos
Bundle 'davidhalter/jedi-vim'
Bundle 'vcscommand.vim'
Bundle 'SudoEdit.vim'
Bundle 'cscope.vim'
Bundle 'header.vim'
Bundle 'ShowPairs'
Bundle 'LargeFile'
Bundle 'EasyGrep'
Bundle 'CCTree'
Bundle 'Tagbar'
Bundle 'a.vim'
Bundle 'VOoM'
"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"..................................
call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ______   ___   _ _____  _    ____ _____ ___ ____ 
"/ ___\ \ / / \ | |_   _|/ \  / ___|_   _|_ _/ ___|
"\___ \\ V /|  \| | | | / _ \ \___ \ | |  | | |    
" ___) || | | |\  | | |/ ___ \ ___) || |  | | |___ 
"|____/ |_| |_| \_| |_/_/   \_\____/ |_| |___\____|
"                                                  
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntasitic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:synatastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = {"!level":"errors"}

map <F7> :SyntasticToggleMode<CR>

let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:syntastic_python_checkers = ['pyflake8']

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"__   ______ __  __ 
"\ \ / / ___|  \/  |
" \ V / |   | |\/| |
"  | || |___| |  | |
"  |_| \____|_|  |_|
"
set completeopt-=preview

set tags=tags;
set autochdir

let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

" Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0

let g:ycm_collect_identifiers_from_tags_files = 1

let g:ycm_min_num_of_chars_for_completion = 1

let g:ycm_complete_in_comments = 1

let g:ycm_cache_omnifunc = 0

let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_seed_identifiers_with_syntax = 1

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>
inoremap <leader>, <C-x><C-o>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" _____ _        _     _   _ _____ 
"|  ___| |      / \   | |/ /| ____|  
"| |_  | |     / _ \  | | / |  _|  
"|  _| | |___ / ___ \ |   \ | |___ 
"|_|   |_____/_/   \_\|_|\_\|_____|
"
"Auto-check file for errors on write:
let g:PyFlakeOnWrite = 1

"List of checkers used:
"let g:PyFlakeCheckers = 'pep8,mccabe,pyflakes'
"""""""""""""""""""""""""""""""""""""""""""
let g:PyFlakeCheckers = 'pyflakes'
"""""""""""""""""""""""""""""""""""""""""""""""

"Default maximum complexity for mccabe:
"let g:PyFlakeDefaultComplexity = 10
let g:PyFlakeDefaultComplexity = 0

"List of disabled pep8 warning and errors:
let g:PyFlakeDisabledMessages = 'E501'

"Default height of quickfix window:
let g:PyFlakeCWindow = 5

"Whether to place signs or not:
let g:PyFlakeSigns = 1

"Maximum line length for PyFlakeAuto command
let g:PyFlakeMaxLineLength = 100

"Visual-mode key command for PyFlakeAuto
let g:PyFlakeRangeCommand = 'Q'

let g:flake8_quickfix_height = 7

noremap <F5> :call flake8#Flake8()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" _   _ _____ ____  ____      _____ ____  _____ _____ 
"| \ | | ____|  _ \|  _ \    |_   _|  _ \| ____| ____|
"|  \| |  _| | |_) | | | |_____| | | |_) |  _| |  _|  
"| |\  | |___|  _ <| |_| |_____| | |  _ <| |___| |___ 
"|_| \_|_____|_| \_\____/      |_| |_| \_\_____|_____|
"
let NERDTreeWinPos="left"

let NERDChristmasTree=1
 
let NERDTreeAutoCenter=1
 
let NERDTreeMouseMode=2
 
let NERDTreeShowFiles=1
 
let NERDTreeShowHidden=1

let NERDTreeHightCursorline=1

let NERDTreeShowLineNumbers=1

let NERDTreeWinSize=32

let NERDTreeMinimalUI=1

let NERDTreeAutoDeleteBuffer=1

nnoremap <silent><F2> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____ _____ ____  _     ____  
" / ___|_   _|  _ \| |   |  _ \ 
"| |     | | | |_) | |   | |_) |
"| |___  | | |  _ <| |___|  __/ 
" \____| |_| |_| \_\_____|_|    
"                           
let g:ctrlp_map = '<leader>p'

let g:ctrlp_cmd = 'CtrlP'

map <leader>f :CtrlPMRU<CR>

let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }

let g:ctrlp_working_path_mode=0

let g:ctrlp_match_window_bottom=1

let g:ctrlp_max_height=15

let g:ctrlp_match_window_reversed=0

let g:ctrlp_mruf_max=500

let g:ctrlp_follow_symlinks=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____ _   _ _   _ ____   ___  
" / ___| | | | \ | |  _ \ / _ \ 
"| |  _| | | |  \| | | | | | | |
"| |_| | |_| | |\  | |_| | |_| |
" \____|\___/|_| \_|____/ \___/ 
"                               
let g:gundo_width = 40

let g:gundo_preview_height = 40

let g:gundo_left = 1

nnoremap <F3> :GundoToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  ____ ____   ____ ___  ____  _____ 
" / ___/ ___| / ___/ _ \|  _ \| ____|
"| |   \___ \| |  | | | | |_) |  _|  
"| |___ ___) | |__| |_| |  __/| |___ 
" \____|____/ \____\___/|_|   |_____|
"                                    
if has("cscope")
            set cscopetag   " 使支持用 Ctrl+]  和 Ctrl+t 快捷键在代码间跳来跳去
            " check cscope for definition of a symbol before checking ctags:
            " set to 1 if you want the reverse search order.
             set csto=1

             " add any cscope database in current directory
             if filereadable("cscope.out")
                 cs add cscope.out
             " else add the database pointed to by environment variable
             elseif $CSCOPE_DB !=""
                 cs add $CSCOPE_DB
             endif

             " show msg when any other cscope db added
             set cscopeverbose

             nmap <C-/>s :cs find s <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
             nmap <C-/>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
             nmap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR>
         endif

"nnoremap <leader>l  :call ToggleLocationList()<CR>

nnoremap <leader>fa :call cscope#findInteractive(expand('<cword'))<CR>

" s: Find this C symbol
nnoremap  <leader>fs :call cscope#find('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call cscope#find('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call cscope#find('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call cscope#find('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call cscope#find('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call cscope#find('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call cscope#find('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call cscope#find('i', expand('<cword>'))<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" _____  _    ____ _     ___ ____ _____ 
"|_   _|/ \  / ___| |   |_ _/ ___|_   _|
"  | | / _ \| |  _| |    | |\___ \ | |  
"  | |/ ___ \ |_| | |___ | | ___) || |  
"  |_/_/   \_\____|_____|___|____/ |_|  
"                                       
nmap <F4> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ___ _   _ ____  _____ _   _ _____ ____ _   _ ___ ____  _____ 
"|_ _| \ | |  _ \| ____| \ | |_   _/ ___| | | |_ _|  _ \| ____|
" | ||  \| | | | |  _| |  \| | | || |  _| | | || || | | |  _|  
" | || |\  | |_| | |___| |\  | | || |_| | |_| || || |_| | |___ 
"|___|_| \_|____/|_____|_| \_| |_| \____|\___/|___|____/|_____|
"                                                              
set ts=4 sw=4 et
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme *:hi IndentGuidesOdd  guibg=red ctermbg=3
autocmd VimEnter,Colorscheme *:hi IndentGuidesEven guibg=green ctermbg=4

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    _    
"   / \   
"  / _ \  
" / ___ \ 
"/_/   \_\
"
nmap <leader>ch :AS<Cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   _          _ _            _           
"  (_) ___  __| (_)    __   _(_)_ __ ___  
"  | |/ _ \/ _` | |____\ \ / / | '_ ` _ \ 
"  | |  __/ (_| | |_____\ V /| | | | | | |
" _/ |\___|\__,_|_|      \_/ |_|_| |_| |_|
"|__/                                     
"
let g:jedi#use_splits_not_buffers = "left"

""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" _        _    ____   ____ _____      _____ ___ _     _____ 
"| |      / \  |  _ \ / ___| ____|    |  ___|_ _| |   | ____|
"| |     / _ \ | |_) | |  _|  _| _____| |_   | || |   |  _|  
"| |___ / ___ \|  _ <| |_| | |__|_____|  _|  | || |___| |___ 
"|_____/_/   \_\_| \_\\____|_____|    |_|   |___|_____|_____|
"                                                            
let g:LargeFile = 20
