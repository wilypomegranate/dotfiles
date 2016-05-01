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
Plugin 'gmarik/vundle'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim' " A very useful plugin that contains ctrl-p functionality and more"
Plugin 'Shougo/neoyank.vim' 
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
Plugin 'sjl/gundo.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin on           " required
filetype plugin indent on    " required

" Put filetype settings in .vimrc for simplicity
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype python setlocal ts=4 sw=4 sts=4 expandtab autoindent smarttab formatoptions=croql
autocmd Filetype c setlocal ts=8 sw=8 sts=8 noexpandtab
autocmd Filetype cpp setlocal ts=3 sw=3 sts=3 expandtab
autocmd Filetype zsh setlocal ts=2 sw=2 sts=2 expandtab autoindent smarttab

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
"set expandtab

let mapleader="\<space>"

" Generic vim settings

set wildmenu            " visual autocomplete for command menu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.so

set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set smartcase 		" smart case searching
set magic		" regexp maghic

set smarttab 		" smart tabbing

" Simplify window movement
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
    %s/\s\+$//ge
      exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.cc :call DeleteTrailingWS()
autocmd BufWrite *.cpp :call DeleteTrailingWS()

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

nnoremap <leader>pp  :set paste<cr>	
nnoremap <leader>ppn  :set nopaste<cr>	

" turn off search highlight
nnoremap <leader>h :nohlsearch<cr>

" highlight last inserted text
nnoremap gV `[v`]

" jj is escape
inoremap jj <esc>

" save session
nnoremap <leader>mks :mksession<cr>

" trim trailing witespace
nnoremap <leader>tr :%s/\s\+$//<cr>

" auto resource .vimrc on save
autocmd BufWritePost .vimrc source %

" Backup settings
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/tmp
set writebackup

" Folding settings
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
"nnoremap <leader>za
set foldmethod=indent   " fold based on indent level

" Plugin Settings

" toggle gundo
nnoremap <leader>u :GundoToggle<cr>

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set laststatus=2

" Unite settings
"let g:unite_source_history_yank_enable = 1
" Turn off fuzzy matching and just do string searches
" call unite#filters#matcher_default#use(['matcher_fuzzy'])

call unite#filters#sorter_default#use(['sorter_length'])
let g:unite_source_rec_max_cache_files=5000
"let g:unite_source_rec_async_command='ag -p ~/.agignore --nocolor --nogroup --ignore ".hg" --ignore ".svn" --ignore ".git" --ignore ".bzr" --ignore "venv" --hidden -g ""'
"let g:unite_source_rec_command='ag -p ~/.agignore --nocolor --nogroup --ignore ".hg" --ignore ".svn" --ignore ".git" --ignore ".bzr" --ignore "venv" --hidden -g ""'
let g:unite_source_rec_async_command='ag --nocolor --nogroup --hidden -g ""'
let g:unite_source_rec_command='ag --nocolor --nogroup --hidden -g ""'

call unite#custom#source('file_rec,file_rec/async',
    \ 'max_candidates', 0)
nnoremap <leader>t :Unite -no-split -buffer-name=files -start-insert file_rec/async:!<cr>
nnoremap <leader>s :Unite -no-split -buffer-name=files -start-insert file_rec<cr>
nnoremap <leader>y :<C-u>Unite -no-split -quick-match -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -quick-match -buffer-name=buffer  buffer<cr>

nnoremap <leader>/ :Unite grep:.<cr>

"nnoremap ; :bn<cr>
nnoremap <leader>f :bp<cr>
nnoremap <leader>j :bn<cr>
nnoremap <leader>l :b#<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>x :x<cr>
nnoremap <leader>q :q<cr>

" Comment and uncomment blocks in visual mode
vnoremap <leader>j s/^/#/
vnoremap <leader>J s/^#//

"nnoremap <leader>1 :colorscheme solarized<cr>
"nnoremap <leader>3 :colorscheme gruvbox<cr>
"nnoremap <leader>4 :colorscheme monokai<cr>

"let g:gruvbox_termcolors=16
set background=dark
colorscheme gruvbox

"Typescript compile settings
let g:typescript_compiler_options = '--experimentalDecorators'
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
