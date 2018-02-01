"    _  ___  _  _ _____ ____
"   (_)/ _ \| |/ | ____|  _ \
"   | | | | | | /|  _| | |_) |
"   | | |_| |   \| |___|  _ <
"  _/ |\___/|_|\_|_____|_| \_\
" |__/
"
" Joker commonly settings:


"   ____ ___  __  __ __  __  ___  _   _ 
"  / ___/ _ \|  \/  |  \/  |/ _ \| \ | |
" | |  | | | | |\/| | |\/| | | | |  \| |
" | |__| |_| | |  | | |  | | |_| | |\  |
"  \____\___/|_|  |_|_|  |_|\___/|_| \_|
"
" joker:set leader
let mapleader=","

if has("syntax")
	syntax on
endif

" colorscheme ron

set timeoutlen=1000
set ttimeoutlen=100

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

au BufNewFile,BufRead *.py
\ set textwidth=79 |
\ set expandtab |
\ set fileformat=unix |

"Enable folding
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za

set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030

"quit 
nmap <ESC>w :w<Cr>
nmap <ESC>q :q!<Cr>

"text copy
vnoremap <leader>y "+y
nmap <leader>t "+p

"split navigations
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

filetype indent on


" __     ___   _ _   _ ____  _     _____ 
" \ \   / / | | | \ | |  _ \| |   | ____|
"  \ \ / /| | | |  \| | | | | |   |  _|  
"   \ V / | |_| | |\  | |_| | |___| |___ 
"    \_/   \___/|_| \_|____/|_____|_____|
"
set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

"let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

"my Plugin here:
"
" original repos on github
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator', {'branch':'stable'}
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'nvie/vim-flake8'
Plugin 'sukima/xmledit'
Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'JokerShao/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
Plugin 'powerline/powerline'
Plugin 'Valloric/ListToggle'
Plugin 'godlygeek/tabular'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Mizuchi/STL-Syntax'
Plugin 'dyng/ctrlsf.vim'
Plugin 'kien/ctrlp.vim'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 't9md/vim-quickhl'
"Plugin 'w0rp/ale'

" 这个插件会导致开启vim终端打空格
" Plugin 'davidhalter/jedi-vim'
"..................................
" vim-scripts repos
" Plugin 'vcscommand.vim'
Plugin 'SudoEdit.vim'
Plugin 'cscope.vim'
Plugin 'header.vim'
Plugin 'ShowPairs'
Plugin 'LargeFile'
Plugin 'EasyGrep'
Plugin 'Tagbar'
Plugin 'a.vim'

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

let g:ctrlp_working_path_mode=0

let g:ctrlp_match_window_bottom=1

let g:ctrlp_max_height=15

let g:ctrlp_match_window_reversed=0

let g:ctrlp_mruf_max=500

let g:ctrlp_follow_symlinks=1


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


" __   ______ __  __ 
" \ \ / / ___|  \/  |
"  \ V / |   | |\/| |
"   | || |___| |  | |
"   |_| \____|_|  |_|
"
set completeopt-=preview

set tags=tags;
set autochdir

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'

" Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0

let g:ycm_collect_identifiers_from_tags_files = 1

let g:ycm_min_num_of_chars_for_completion = 1

let g:ycm_complete_in_comments = 1

let g:ycm_cache_omnifunc = 0

let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_seed_identifiers_with_syntax = 1

let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']

let g:ycm_key_invoke_completion = '<TAB>'

" let g:ycm_show_diagnostics_ui = 0

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

highlight YcmErrorSign ctermfg=DarkRED
highlight YcmErrorSign ctermbg=none
highlight YcmErrorSection ctermbg=DARKBLUE
highlight YcmErrorSection ctermfg=WHITE

inoremap <leader>, <C-x><C-o>


"  _   _ _   _____ ___ ____  _   _ ___ ____  ____  
" | | | | | |_   _|_ _/ ___|| \ | |_ _|  _ \/ ___| 
" | | | | |   | |  | |\___ \|  \| || || |_) \___ \ 
" | |_| | |___| |  | | ___) | |\  || ||  __/ ___) |
"  \___/|_____|_| |___|____/|_| \_|___|_|   |____/ 
"
let g:UltiSnipsExpandTriger="<TAB>"

let g:UltiSnipsJumpForwardTrigger="<C-n>"

let g:UltiSnipsJumpBackwardTrigger="<C-p>"

let g:UltiSnipsEditSplit="vertical"


"  _____ _       _     _   _ _____ _____
" |  ___| |     / \   | |/ /| ____/ ___ \
" | |_  | |    / _ \  | | / |  _| \_\_/_/
" |  _| | |___/ ___ \ |   \ | |___/ /_\ \
" |_|   |____/_/   \_\|_|\_\|_____\_____/
"
" let g:falke8_ignore="E302"

let g:flake8_quickfix_height = 7

let g:flake8_show_in_gutter=1

let g:flake8_show_in_file=1

" flake8_error_marker='EE'     " set error marker to 'EE'
" flake8_warning_marker='WW'   " set warning marker to 'WW'
" flake8_pyflake_marker=''     " disable PyFlakes warnings
" flake8_complexity_marker=''  " disable McCabe complexity warnings
" flake8_naming_marker=''      " disable naming warnings

noremap <F5> :call flake8#Flake8()<CR>


"  _   _ _____ ____  ____      _____ ____  _____ _____ 
" | \ | | ____|  _ \|  _ \    |_   _|  _ \| ____| ____|
" |  \| |  _| | |_) | | | |_____| | | |_) |  _| |  _|  
" | |\  | |___|  _ <| |_| |_____| | |  _ <| |___| |___ 
" |_| \_|_____|_| \_\____/      |_| |_| \_\_____|_____|
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

autocmd vimenter * if !argc() | NERDTree | endif

nnoremap <silent><F2> :NERDTreeToggle<CR>


"  _   _ _____ ____  ____   ____            
" | \ | | ____|  _ \|  _ \ / __/ ___  _ __ ___
" |  \| |  _| | |_) | | | | |   / _ \| '_ ` _ \ 
" | |\  | |___|  _ <| |_| | |__| |_| | | | | | |
" |_| \_|_____|_| \_\____/ \___\\___/|_| |_| |_|
"
let g:NERDSpaceDelims=1


"  ____   ___ __        _ _____ ____  _    ___ _   _ _____ 
" |  _ \ / _ \\ \  _   / / ____|  _ \| |  |_ _| \ | | ____|
" | |_) | | | |\ \/ \ / /|  _| | |_) | |   | ||  \| |  _|  
" |  __/| |_| | \  \ / / | |___| |_ <| |__ | || |\  | |___ 
" |_|    \___/   \/ \_/  |_____|_| \_\____|___|_| \_|_____|
"
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim


"  __  __    _    ____  _   _ ____   ___ __        _ _   _ 
" |  \/  |  / \  |  _ \| |/ /|  _ \ / _ \\ \  _   / | \ | |
" | |\/| | / _ \ | |_) | | / | | | | | | |\ \/ \ / /|  \| |
" | |  | |/ ___ \|  _ <|   \ | |_| | |_| | \  \ / / | |\  |
" |_|  |_|_/   \_\_| \_\_|\_\|____/ \___/   \/ \_/  |_| \_|
"
" let g:mkdp_auto_start=1

nmap <F6> :MarkdownPreview<CR>


" 
"   (_) ___  __| (_)    __   _(_)_ __ ___  
"   | |/ _ \/ _` | |____\ \ / / | '_ ` _ \ 
"   | |  __/ (_| | |_____\ V /| | | | | | |
"  _/ |\___|\__,_|_|      \_/ |_|_| |_| |_|
" |__/                                     
"
" let g:jedi#use_tabs_not_buffers = 1

" let g:jedi#use_splits_not_buffers = "left"

" let g:jedi#goto_command = "<leader>d"

" let g:jedi#goto_assignments_command = "<leader>g"

" let g:jedi#goto_definitions_command = ""

" let g:jedi#documentation_command = "K"

" let g:jedi#usages_command = "<leader>n"

" let g:jedi#completions_command = "<C-Space>"

" let g:jedi#rename_command = "<leader>r"

" let g:jedi#completions_enabled = 0


"   ____ ____   ____ ___  ____  _____ 
"  / ___/ ___| / ___/ _ \|  _ \| ____|
" | |   \___ \| |  | | | | |_) |  _|  
" | |___ ___) | |__| |_| |  __/| |___ 
"  \____|____/ \____\___/|_|   |_____|
"
if has("cscope")
	if has('quickfix')
	    set cscopequickfix=s-,c-,d-,i-,t-,e-
	endif

    " Ctrl+] & Ctrl+t/Ctrl+o support
    set cscopetag

    " check cscope for definition of a symbol before checking ctags:
    " set to 1 if you want the reverse search order.
    set csto=1

    " use |:cstag|(:cs find g)， not `:tag`
    set cst

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add the database pointed to by environment variable
    elseif $CSCOPE_DB !=""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    set cscopeverbose

    nmap css :cs find s <C-R>=expand("<cword>")<CR><CR> :cw<CR>
    nmap csg :cs find g <C-R>=expand("<cword>")<CR><CR>
    nmap csc :cs find c <C-R>=expand("<cword>")<CR><CR>
    nmap cst :cs find t <C-R>=expand("<cword>")<CR><CR>
    nmap cse :cs find e <C-R>=expand("<cword>")<CR><CR>
    nmap csf :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap csi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap csd :cs find d <C-R>=expand("<cword>")<CR><CR>
endif


"   ___ _____  _    ____ ____ 
"  / __/_   _|/ \  / ___/ ___|
" | |    | | / _ \| |  _\___ \
" | |___ | |/ ___ \ |_|  ___) |
"  \____||_/_/   \_\____|____/
"
nnoremap <F7> :!ctags -R --c++-kinds=+lpx --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>


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


"  ___ _   _ ____  _____ _   _ _____ ____ _   _ ___ ____  _____ 
" |_ _| \ | |  _ \| ____| \ | |_   _/ ___| | | |_ _|  _ \| ____|
"  | ||  \| | | | |  _| |  \| | | || |  _| | | || || | | |  _|  
"  | || |\  | |_| | |___| |\  | | || |_| | |_| || || |_| | |___ 
" |___|_| \_|____/|_____|_| \_| |_| \____|\___/|___|____/|_____|
"
let g:indent_guides_enable_on_vim_startup = 1

let g:indent_guides_start_level = 2

let g:indent_guides_guide_size = 1

let g:indentguides_ignorelist = ['text']


"     _     
"    / \    
"   / _ \   
"  / ___ \  
" /_/   \_\ 
"
nmap <leader>ch :AS<Cr>


"   ___ _____ ____  _     ____  _____ 
"  / __/_   _|  _ \| |   / ___||  ___|
" | |    | | | |_) | |   \___ \| |_   
" | |___ | | |  _ <| |___ ___) |  _|  
"  \____||_| |_| \_\_____\____/|_|   
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


"     _    _     _____ 
"    / \  | |   | ____|
"   / _ \ | |   |  _|  
"  / ___ \| |___| |___ 
" /_/   \_\_____|_____|
"
" let g:ale_set_loclist = 1

" let g:ale_open_list = 1

" let g:ale_sign_error = '>>'

" let g:ale_sign_warning = '⚠'

" highlight ALEErrorSign ctermfg=DarkRED
" highlight ALEErrorSign ctermbg=none
" highlight ALEWarningSign ctermfg=DarkBLUE
" highlight ALEWarningSign ctermbg=none
