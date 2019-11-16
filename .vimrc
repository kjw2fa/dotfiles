execute pathogen#infect()
" 'matchit.vim' is built-in so let's enable it!
" Hit '%' on 'if' to jump to 'else'.
runtime macros/matchit.vim

" tab settings
filetype plugin indent on      " Enabling filetype support provides filetype-specific indenting, syntax
                               " highlighting, omni-completion and other useful settings.
syntax on                      " turn on syntax, required for pathogen
set tabstop=4                  " show existing tab with 4 spaces width
set softtabstop=4              " treats 4 spaces as tab
set shiftwidth=4               " when indenting with '>', use 4 spaces width
set expandtab                  " on pressing tab, insert 4 spaces SPACES > TABS

" various settings
set backspace=indent,eol,start " Proper backspace behavior.
set hidden                     " Possibility to have more than one
                               " unsaved buffers.
set incsearch                  " Incremental search, hit '<CR>' to stop.
set hlsearch                   " Highlights searched phrase
set smartcase                  " Ignore case sensitivity for searching
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

" NORMAL MODE MAPPINGS
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
