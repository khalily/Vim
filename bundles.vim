set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"-----------------
" Code Completion
"-----------------
Bundle 'ervandew/supertab'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neocomplcache-snippets-complete'
Bundle 'honza/snipmate-snippets'

"--------------
" Code Reading
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'humiaozuzu/TabBar'
Bundle 'kien/ctrlp.vim'

"-------------
" Other Utils
" ------------
Bundle 'Lokaltog/vim-powerline'
Bundle 'nvie/vim-togglemouse'

"--------------
" Color Scheme
"--------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'

filetype plugin indent on    " required!