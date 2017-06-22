set nocompatible              " be iMproved, required

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'fatih/vim-go'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-syntastic/syntastic'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable syntax highlighting
syntax on

" Display line numbers on the left
set number
set background=dark
colorscheme gruvbox
set guifont=Liberation\ Mono\ for\ Powerline:h14

" Tab settings
set tabstop=4		" when displaying
set softtabstop=4	" when editing
set expandtab       " tabs are spaces
set shiftwidth=4    " Auto indenting and with >

" Visual settings

set cursorline
set showmatch

" NERDTree stuff

" Map key to open NERDTree
map <C-n> :NERDTreeToggle<CR>

" Remove window pane BG keep separators - cleaner UI

hi VertSplit ctermbg=NONE guibg=NONE
set enc=utf-8
set fillchars=vert:\│

" Enable incremental search
set incsearch

" Remove enpty line tildes
hi nontext ctermfg=bg guifg=bg cterm=NONE gui=NONE

" CTRL-P ignore .gitignored files
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_dont_split = 'nerdtree'

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" Enable 256 color modes

set t_Co=256

" Enable mouse control in all modes

set mouse=a
let g:javascript_conceal_arrow_function = "⇒"
autocmd BufWritePre * %s/\s\+$//e

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
