set nocompatible              " be iMproved, required
filetype off                  " required

"my define short-key
:inoremap jk <esc>
:inoremap <esc> <nop>
:inoremap <Up> <nop>
:inoremap <Down> <nop>
:inoremap <Left> <nop>
:inoremap <Right> <nop>
:nnoremap <Up> <nop>
:nnoremap <Down> <nop>
:nnoremap <Left> <nop>
:nnoremap <Right> <nop>
set encoding=utf-8
" 调用浏览器打开文件
:map <c-f> :!open -a /Applications/Google\ Chrome.app/ index.html<cr>

:nnoremap <c-a>e :vsplit $MYVIMRC<cr>
:nnoremap <c-a>s :source $MYVIMRC<cr>

:autocmd FileType javascript nnoremap <buffer> <c-a>c I//<esc>
:autocmd FileType python nnoremap <buffer> <c-a>c I#<esc>
:autocmd FileType python :iabbrev <buffer> iff if:<left>


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim
set rtp+=~/.vim/bundle/taglist.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

let g:ycm_server_python_interpreter='/usr/local/bin/python3'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set number
syntax on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
au BufNewFile,BufRead *.ejs set filetype=html
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags






