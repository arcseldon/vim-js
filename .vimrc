set nocompatible              " be iMproved
filetype on
filetype off                  " required!

" let g:light_editor=1
source $HOME/.vim/config.vim

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-commentary'
Bundle 'jlanzarotta/bufexplorer'
Bundle 'ciaranm/detectindent'
Bundle 'Lokaltog/vim-distinguished'
" Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'yegappan/mru'
Bundle 'dkprice/vim-easygrep'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'FuzzyFinder'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
let g:syntastic_check_on_open=1
" non-GitHub repos
" Bundle 'git://git.wincent.com/command-t.git'
Bundle 'wincent/Command-T'
Bundle 'Valloric/YouCompleteMe'
" These are the tweaks I apply to YCM's config, you don't need them but they might help.
"  YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
Bundle 'marijnh/tern_for_vim'
" Git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
"
imap <C-c> <CR><Esc>O

set number
" colorscheme native
" " colorscheme habilight
" " colorscheme zenburn
" colorscheme kib_darktango

if has('gui_running')
  set guifont=Monaco:h14
"  set guifont=Consolas:h14
endif

set number
:set shiftwidth=4 softtabstop=4 expandtab
" autocmd vimenter * NERDTree
" autocmd VimEnter * if &filetype !=# 'gitcommit' | NERDTree | wincmd p | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <leader>r :NERDTreeFind<cr>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
" :nnoremap <f5> :!ctags -R<CR>
" :autocmd BufWritePost * call system("ctags -R")
" :setlocal makeprg=NODE_DISABLE_COLORS=1\ nodelint\ %
set wildignore+=*.class,.git,.hg,.svn,target/**
set clipboard=unnamed
" EasyGrep
let g:EasyGrepMode=2
let g:EasyGrepCommand=0
let g:EasyGrepRecursive=1
let g:EasyGrepIgnoreCase=1
map <leader>r :NERDTreeFind<cr>


