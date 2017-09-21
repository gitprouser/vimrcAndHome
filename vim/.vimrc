set nocompatible              " be iMproved, required
filetype off                  " required

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'VundleVim/ctrlp.vim'
Plugin 'VundleVim/vim-gitgutter'
Plugin 'VundleVim/vim-airline'

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
" nmap ; :
" noremap ;; ;
" noremap : ;

set nu
set paste


set smartindent
" show existing tab with 4 spaces width
set tabstop=4
set softtabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4
set expandtab
" set ruler
" set relativenumber
set ttyfast
set autoread
set cursorline!

" set scrolloff=7
set hlsearch


set list
set listchars=nbsp:¬,tab:»·,trail:·

hi User1 ctermfg=196 guifg=#eea040 guibg=#222222
hi User2 ctermfg=75 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 ctermfg=239 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222

set mouse=a

" On pressing tab, insert 4 spaces
set expandtab


if has("persistent_undo")
    set undodir="~/.vim/undodir
    set undofile
endif


" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%



" Breaking lines with \[enter] without having to go to insert mode (myself).
nmap <leader><cr> i<cr><Esc>


" Disable that goddamn 'Entering Ex mode. Type 'visual' to go to Normal mode.'
" that I trigger 40x a day.
map Q <Nop>
" let loaded_matchparen = 1


nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>


" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
" inoremap <C-Z> <C-O>:update<CR>


" nnoremap ; :
" nnoremap : ;


filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


nnoremap <silent> n :exe (search(@/, 'nW') == 0 ? "normal \<lt>c-w>\<lt>c-w>ggn" : "normal! n")<cr>
nnoremap <silent> N :exe (search(@/, 'bnW') == 0 ? "normal \<lt>c-w>\<lt>c-w>G$N" : "normal! N")<cr>

