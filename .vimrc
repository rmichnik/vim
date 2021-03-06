" vim: set nofoldenable foldmethod=marker foldmarker={,} foldlevel=0:
set nu
set cindent
set is hls ic scs
set showmatch
set laststatus=2
set stl=%-m%-r%-y%-f,(linha_%-l_de_%-L_%-P)
set ai
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab
set expandtab
set fdm=marker
set nowrap
set bs=2
set numberwidth=5
set hidden
set laststatus=2
set noshowmode
set nocompatible
set cursorline

set list
set listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:␣
set showbreak=↪


set wildmenu
set wildmode=longest:full,full

" Show the cursor position all the time
set ruler

hi CursorLine cterm=NONE ctermbg=237 ctermfg=NONE
syntax on
filetype off
"let mapleader = ","

"Set the Leader key as space
let mapleader = "\<Space>"
" abrir o .vimrc

nmap      <F1> <Plug>AirlineSelectPrevTab
nmap      <F2> <Plug>AirlineSelectNextTab
map       <F4> :bd<CR>
nmap      <leader>h :UndotreeToggle<CR>
nmap      <F12> :Tagbar<CR>
map       <leader>p :CtrlP<CR>

map <leader><F4> :q!<CR>
nmap <leader>, :tabedit $MYVIMRC<CR>
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

map <leader>n :NERDTreeToggle<CR>
" Uteis
cab W w | cab Q q | cab Wq wq | cab wQ wq | cab WQ wq


" Syntstic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:SuperTabDefaultCompletionType = "<c-n>"

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'


" NERDTree"{
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"}
" Airline"{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'badwolf'
let g:airline_detect_paste = 1
let g:airline#extensions#tabline#fnamemod = ':t'"}

" Vundle"{
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins pessoais
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'itchyny/lightline.vim'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ryanoasis/vim-devicons'
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mbbill/undotree'
call vundle#end()            " required
filetype plugin indent on    " required"}

let g:used_javascript_libs = 'underscore,angularjs,react,flux'

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

let g:syntastic_html_tidy_ignore_errors=[
      \"<ion-", 
      \"discarding unexpected </ion-", 
      \" proprietary attribute \"ng-", 
      \"*ng", 
      \"<init", 
      \"</init"
\]

let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsUsePythonVersion = 2
let g:SuperTabCrMapping=1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'


let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
" historico
if has("persistent_undo")
    set undodir=~/vim/.undodir/
    set undofile
endif

let g:undotree_WindowLayout = 2
