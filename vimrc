call pathogen#infect()

set encoding=utf-8
set modelines=0
set autoindent
set showcmd
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set nonumber
set norelativenumber
set laststatus=2
set history=1000
set undofile
set undoreload=10000
set cpoptions+=J
set shell=/bin/bash
set lazyredraw
set matchtime=3
set autowrite
set autoread
set title
set dictionary=/usr/share/dict/words
set noshowmode

set backupskip=/tmp/*,/private/tmp/*

au FocusLost * :wa

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set wrap
set textwidth=80
set formatoptions=qrn1
set colorcolumn=+1

set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set backup

set autoread
set ignorecase
set smartcase

set background=dark
colorscheme solarized

set statusline=%f
set statusline+=%m
set statusline+=%r
set statusline+=%w

set statusline+=\ 

set statusline+=(
set statusline+=%{&ff}
set statusline+=/
set statusline+=%{strlen(&fenc)?&fenc:&enc}
set statusline+=/
set statusline+=%{&ft}
set statusline+=)

set statusline+=\ (line\ %l\/%L,\ col\ %03c)

noremap ' `

set completeopt=longest,menuone,preview

set incsearch
set hlsearch

filetype plugin indent on

set nocursorcolumn
set nocursorline

syntax on
syntax sync minlines=256
set synmaxcol=300
set re=1

set wrap
set textwidth=79
set formatoptions=qrn1

set notimeout
set ttimeout
set ttimeoutlen=10

if has("gui_running")
    set guifont=Menlo\ 10
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set lines=999 columns=999
endif

set clipboard=unnamed
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ --exclude-dir=.git\ -n

nnoremap <ESC><ESC> :nohlsearch<CR>

autocmd QuickFixCmdPost *grep* cwindow

set list
set listchars=tab:▸\ ,eol:¬
set nocompatible

if executable("pyenv")
    let $PATH = system("pyenv root")[:-2]."/shims:".$PATH
endif

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_height = 10
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_max_files = 0
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/vim-ctrlp'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:javascript_conceal_function = "ƒ"
let g:javascript_conceal_null = "ø"
let g:javascript_conceal_this = "@"
let g:javascript_conceal_return = "⇚"
let g:javascript_conceal_undefined = "¿"
let g:javascript_conceal_arrow_function = "⇒"
set conceallevel=1

let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_smart_quotes = 1
let g:delimitMate_expand_inside_quotes = 0
let g:delimitMate_smart_matchpairs = '^\%(\w\|\$\)'

let g:vim_json_syntax_conceal = 0

let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_next_key = '<C-i>'
let g:multi_cursor_prev_key = '<C-y>'
let g:multi_cursor_quit_key = '<Esc>'

if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
endif

nmap <C-n> :NERDTreeToggle<CR>
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>

let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.vim$', '\~$', '\.git$', '.DS_Store']

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:go_fmt_fail_silently = 0
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_term_enabled = 1

au BufNewFile,BufRead *.json setlocal expandtab ts=2 sw=2 sts=2

augroup filetypedetect
    au BufNewFile,BufRead .eslintrc setf json
augroup END

let g:jsx_ext_required = 0

let g:airline_theme='solarized'

" set to use powerline fonts when not in a ssh session
let g:remoteSession = ($STY == "")
if !g:remoteSession
  let g:airline_powerline_fonts=1
endif

let g:jsx_ext_required = 0

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
