set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tristen/vim-sparkup'
Plugin 'gmarik/vundle' "Plugin 'kien/ctrlp.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'MarcWeber/vim-addon-local-vimrc'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'mhinz/vim-startify'
Plugin 'groenewege/vim-less'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'wesgibbs/vim-irblack'
Plugin 'mehlah/vim-li3'
Plugin 'bling/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'sickill/vim-monokai'
Plugin 'rking/ag.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'rust-lang/rust.vim'

" All of your Plugins must be added before the following line
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

syntax on
set expandtab

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set laststatus=2

let mapleader="\<space>"

" Unite
let g:unite_source_history_yank_enable = 1
" call unite#filters#matcher_default#use(['matcher_fuzzy'])

let g:unite_source_rec_async_command='ag --nocolor --nogroup --ignore ".hg" --ignore ".svn" --ignore ".git" --ignore ".bzr" --ignore "venv" --hidden -g ""'
let g:unite_source_rec_command='ag --nocolor --nogroup --ignore ".hg" --ignore ".svn" --ignore ".git" --ignore ".bzr" --ignore "venv" --hidden -g ""'
nnoremap <leader>t :Unite -no-split -buffer-name=files -start-insert file_rec/async:!<cr>
nnoremap <leader>s :Unite -no-split -buffer-name=files -start-insert file_rec<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>

nnoremap <leader>/ :Unite grep:.<cr>

"nnoremap ; :bn<cr>
nnoremap <leader>f :bp<cr>
nnoremap <leader>j :bn<cr>
nnoremap <leader>l :b#<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>x :x<cr>
nnoremap <leader>q :q<cr>

vnoremap <leader>j s/^/#/
vnoremap <leader>J s/^#//

nnoremap <leader>1 :colorscheme solarized<cr>
nnoremap <leader>3 :colorscheme gruvbox<cr>
nnoremap <leader>4 :colorscheme monokai<cr>

"let g:gruvbox_termcolors=16
set background=dark
colorscheme gruvbox

"Typescript compile settings
let g:typescript_compiler_options = '--experimentalDecorators'
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
