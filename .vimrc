set nocompatible              " be iMproved, required
filetype off                  " required

" --------------- VUNDLE PLUGIN MANAGER ---------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" To use Vundle to manage plugins on a new machine
" 1. Install Vundle
" 2. Run the ex command :PluginInstall to install all plugins
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-abolish'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" 'matchit.vim' is built-in so let's enable it!
" Hit '%' on 'if' to jump to 'else'.
runtime macros/matchit.vim

" --------------- TAB SETTINGS ---------------
filetype plugin indent on      " Enabling filetype support provides filetype-specific indenting, syntax
                               " highlighting, omni-completion and other useful settings.
syntax on                      " turn on syntax, required for pathogen
set tabstop=4                  " show existing tab with 4 spaces width
set softtabstop=4              " treats 4 spaces as tab
set shiftwidth=4               " when indenting with '>', use 4 spaces width
set expandtab                  " on pressing tab, insert 4 spaces SPACES > TABS

" --------------- VARIOUS SETTINGS ---------------
set backspace=indent,eol,start " Proper backspace behavior.
set hidden                     " Possibility to have more than one
                               " unsaved buffers.
set incsearch                  " Incremental search, hit '<CR>' to stop.
set hlsearch                   " Highlights searched phrase
set ignorecase                 " Ignore case sensitivity for searching
set smartcase                  " Ignore case sensitivity unless capital
set gdefault                   " Set search replaces to work throughout lines
set ruler                      " Shows the current line number at the bottom.
                               " right of the screen.
set wildmenu                   " Great command-line completion, use '<Tab>' to
                               " move around and '<CR>' to validate.
set relativenumber             " Set relative numbering
set number                     " Set line number
set nowrap                     " Don't wrap lines
set showcmd                    " Show the current typed command
set splitright                 " puts cursor in new window when split

" --------------- NORMAL MODE MAPPINGS ---------------
" map Space to :
nnoremap <Space> :

" map Q to @q (play macro in q register)
nnoremap Q @q

" map window switching shortcuts
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" INSERT / COMMAND MODE MAPPINGS
" map jk to escape in insert mode
no! jk <Esc>`^

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
