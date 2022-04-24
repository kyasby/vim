call plug#begin()
        Plug 'ntk148v/vim-horizon'
        Plug 'preservim/nerdtree'
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        "Plug 'sheerun/vim-polyglot'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" if you don't set this option, this color might not correct
" aaaa
" aa
set termguicolors

colorscheme horizon

" lightline
let g:lightline = {}
let g:lightline.colorscheme = 'horizon'

" or this line
let g:lightline = {'colorscheme' : 'horizon'}

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>


"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/horiryou/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/horiryou/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/Users/horiryou/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

"構文チェックを行う。
call dein#add('scrooloose/syntastic')
" 構文エラー行に「>>」を表示
let g:syntastic_enable_signs = 1
" 他のVimプラグインと競合するのを防ぐ
let g:syntastic_always_populate_loc_list = 1
" 構文エラーリストを非表示
let g:syntastic_auto_loc_list = 0
" ファイルを開いた時に構文エラーチェックを実行する
let g:syntastic_check_on_open = 1
" 「:wq」で終了する時も構文エラーチェックする
let g:syntastic_check_on_wq = 1

" Python用. 構文エラーチェックにpep8とpyflakesを使用
let g:syntastic_python_checkers=['pep8', 'pyflakes']
" Javascript, python以外は構文エラーチェックをしない
let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': ['python']}

"()を補間する。
call dein#add('Townk/vim-autoclose')
"() 色付け:
call dein#add('itchyny/lightline.vim')
"インデントの色付け
" 末尾の全角と半角の空白文字を赤くハイライト
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('davidhalter/jedi-vim')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


"End dein Scripts-------------------------
"
"
"Plug 'ekalinin/Dockerfile.vim'

set relativenumber
set cursorline
set hlsearch
set incsearch
set ignorecase
set smartcase
set expandtab
set tabstop=4
set whichwrap=b,s,h,l,<,>,[,],~ " カーソルの左右移動で行末から次の行の行頭への移動が可能になる
set backspace=indent,eol,start
" Escを2回押すとハイライト消をす
nnoremap <Esc><Esc> :nohlsearch<CR>
inoremap <silent> jj <ESC>
nnoremap d "_d
xnoremap d "_d
xnoremap p "_dP
