set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
Bundle 'gmarik/vundle'

"-----------------
" Code Completion
"-----------------
Bundle 'ervandew/supertab'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neocomplcache-snippets-complete'
Bundle 'honza/snipmate-snippets'
Bundle 'FromtonRouge/OmniCppComplete'
"Bundle 'vim-scripts/cscope.vim'

"--------------
" Code Reading
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
Bundle 'humiaozuzu/TabBar'
Bundle 'kien/ctrlp.vim'
Bundle 'sjl/gundo.vim'

"-------------
" Other Utils
" ------------
Bundle 'Raimondi/delimitMate'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'nvie/vim-togglemouse'
"Bundle 'quark-zju/vim-cpp-auto-include' 
" require ruby support
"Bundle 'vim-scripts/pygdb.git'
"Bundle 'vim-scripts/Conque-Shell'
Bundle 'tsaleh/vim-matchit'
Bundle 'vim-scripts/mru.vim'
Bundle 'vim-scripts/sessionman.vim'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/Pydiction'
Bundle 'vim-scripts/genutils'
Bundle 'vim-scripts/a.vim'

"--------------
" Color Scheme
"--------------
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'

filetype plugin indent on    " required!
