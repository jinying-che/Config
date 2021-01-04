set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"fzf
set rtp+=/usr/local/opt/fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go', {  'tag': 'v1.22', 'do': ':GoUpdateBinaries' }
Plugin 'SirVer/ultisnips'
"colorscheme
Plugin 'dracula/vim'
Plugin 'morhetz/gruvbox'
Plugin 'rakr/vim-one'

Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'mileszs/ack.vim'
"Plugin 'jiangmiao/auto-pairs'
" Plugin 'neoclide/coc.nvim', {'branch': 'release'}



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


"set number
set nu

"set syntax highlighting
syntax on

"show existing tab with 4 space width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4

set smartindent

set clipboard=unnamed

"code folding
set foldmethod=manual
" set foldlevelstart=99

set relativenumber

"keep the cursor line near the middle of the screen
set scrolloff=5

set backspace=indent,eol,start

"set maxmempattern(default 1000)
set mmp=5000

set redrawtime=10000

"crusor shape in different mode
let &t_SI = "\<Esc>]50;CursorShape=2\x7" "underline in insert mode
let &t_SR = "\<Esc>]50;CursorShape=1\x7" 
let &t_EI = "\<Esc>]50;CursorShape=0\x7" "box in normal mode

"colorscheme
colorscheme gruvbox
"colorscheme dracula
"colorscheme one
"set background=dark

"golang
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_fmt_experimental = 1 " for the folding save
let g:go_def_mode='gopls'
"let g:go_def_mode='godef' "instead of defalut option Guru
let g:go_info_mode='gopls'
let g:go_decls_includes = "func,type"
let g:go_fmt_command = "goimports"
" let g:go_guru_scope = ["git.garena.com/shopee/core-server/noti-scheduler/..."]
"let g:go_guru_scope = ["git.garena.com/shopee-server/notification-callback/..."]

"ack, ag
let g:ackprg = 'ag --vimgrep'

" namp
nmap <C-l> :TagbarToggle<CR>
nmap <C-n> :NERDTree<CR>

nnoremap <C-p> :Files<Cr>
" Rg current word
nnoremap <silent> <Leader>rg :Rg <C-R><C-W><CR>

" ctag
set tags=./.tags;,.tags
