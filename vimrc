"""""""""""""""""""""""""""""""""""""""
"Vundle
"""""""""""""""""""""""""""""""""""""""
source ~/.vim/bundles.vim

"""""""""""""""""""""""""""""""""""""""
"平台判断
"""""""""""""""""""""""""""""""""""""""
function! MySys()
  if has("win32")
    return "windows"
  else
    return "linux"
  endif
endfunction
if has("win32")
	let g:iswindows = 1
else
	let g:iswindows = 0
endif

"""""""""""""""""""""""""""""""""""""""
"模仿MS快捷键
"""""""""""""""""""""""""""""""""""""""
"source $VIMRUNTIME/mswin.vim

" CTRL-X and SHIFT-Del are Cut
"vnoremap <C-X> "+x

" CTRL-C and CTRL-Insert are Copy
"vnoremap <C-C> "+y

" CTRL-V and SHIFT-Insert are Paste
"map <C-V>    "+p

"""""""""""""""""""""""""""""""""""""""
"Gerneral
"""""""""""""""""""""""""""""""""""""""

let mapleader = ","

" 编辑vimrc之后，重新加载
if MySys() == "windows"
  "Fast reloading of the _vimrc
  map <silent> <leader>ss :source ~/_vimrc<cr>
  "Fast editing of _vimrc
  map <silent> <leader>ee :tab sp ~/_vimrc<cr>
  autocmd! bufwritepost _vimrc source ~/_vimrc
else
  "Fast reloading of the .vimrc
  map <silent> <leader>ss :source ~/.vimrc<cr>
  "Fast editing of .vimrc
  map <silent> <leader>ee :tab sp ~/.vimrc<cr>
  autocmd! bufwritepost .vimrc source ~/.vimrc
  set path=./**,/usr/include/c++/**,/usr/lib/gcc/**
endif

" 禁用Vi的兼容模式
set nocompatible

" enable syntax hightlight and completion 
syntax enable
syntax on

set nu
set confirm                              " prompt when existing from an unsaved file
set history=1000

" Set windows postion and size
if has("gui_running")
  "winpos 0 0
  "set lines=43
  "set columns=85
  set guioptions -=m
  set guioptions -=T
  set guioptions -=L
  set guioptions -=r
  "set showtabline=0
endif



if exists('+autochdir')
  " 文件路径设置为当前路径
  set autochdir
endif

 " When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

"""""""""""""""""""""""""""""""""""""""
"VIM user interface
"""""""""""""""""""""""""""""""""""""""
" use chinese help
set helplang=cn

"set the menu & the message to English
set langmenu=en_US
let $LANG="en_US.UTF-8"

"设置编码
set fileencodings=utf-8,gbk,ucs-bom,default,latin1
set termencoding=utf-8
set encoding=utf-8

" Set backspace config
set backspace=eol,start,indent

set ignorecase "Ignore case when searching
set smartcase

set report=0
set nowrap                                                        " dont wrap lines
set scrolloff=2                                                   " 2 lines above/below cursor when scrolling
set showmatch
set showmode
set ruler
set title                                           " show file in titlebar
set laststatus=2                                    " use 2 lines for the status bar
set matchtime=2                        " show matching bracket for 0.2 seconds

set hlsearch "Highlight search things
set incsearch "在输入部分查找模式时显示相应的匹配点。

set showcmd "显示右下角命令

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

"""""""""""""""""""""""""""""""""""""""
"Colors and Fonts
"""""""""""""""""""""""""""""""""""""""
set t_Co=256
" Set syntax color
if has("gui_running")
  colorscheme vividchalk
  set mouse=a
  "set guifont=Consolas:h12
	"set guifontwide=Microsoft\ YaHei:h12
	set guifont=Monaco:h16
	 "set guifont=youyuan:h16:w8
else
  colorscheme vividchalk-term
	set guifont=Monaco\ 12
endif
set ambiwidth=double " 设定某些标点符号为宽字符



"""""""""""""""""""""""""""""""""""""""
"Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""
" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"""""""""""""""""""""""""""""""""""""""
" Map
"""""""""""""""""""""""""""""""""""""""
if has("gui_running")
  imap <M-1> <Esc>1gt
  nmap <M-1> 1gt
  imap <M-2> <Esc>2gt
  nmap <M-2> 2gt
  imap <M-3> <Esc>3gt
  nmap <M-3> 3gt
  imap <M-4> <Esc>4gt
  nmap <M-4> 4gt
  imap <M-5> <Esc>5gt
  nmap <M-5> 5gt
  imap <M-6> <Esc>6gt
  nmap <M-6> 6gt
  imap <M-7> <Esc>7gt
  nmap <M-7> 7gt
  imap <M-8> <Esc>8gt
  nmap <M-8> 8gt
  imap <M-9> <Esc>9gt
  nmap <M-9> 9gt
endif

" Keybindings for plugin toggle
nmap <F9> :TagbarToggle<cr>
nmap <F4> :NERDTreeToggle<cr>
nmap <F3> :GundoToggle<cr>

" 用空格键来开关折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"""""""""""""""""""""""""""""""""""""""
"Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""

"set expandtab
"set noexpandtab "是否使用Tab缩进 默认使用
set wildmode=list:full "tab键提示命令
set shiftwidth=2
set tabstop=2
set smarttab

set ai "Auto indent
set si "Smart indet
set cindent
set wrap "Wrap lines

set showmatch " show matching bracets

"""""""""""""""""""""""""""""""""""""""
"Plugin
"""""""""""""""""""""""""""""""""""""""
" tabbar
let g:showtabline = 0
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

" Tagbar

"autocmd VimEnter * nested :call tagbar#autoopen(1)
if (!g:iswindows)
	let g:tagbar_ctags_bin = "/usr/bin/ctags"
else
	let g:tagbar_ctags_bin = "ctags"
endif
let g:tagbar_right=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_autoshowtag = 1
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif

" Nerd Tree 
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"
let NERDTreeShowHidden = 1

"NeoComplcache

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
"let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

"" NeoComplCache
set completeopt-=preview
"let g:neocomplcache_enable_at_startup=1
""let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_smart_case=1
"let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

" SuperTab
let g:SuperTabDefaultCompletionType="<c-n>"

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if(g:iswindows)
		let g:cscope_cmd = "~/.vim/tools/cscope"
else
		let g:cscope_cmd = "/usr/bin/cscope"
endif
autocmd BufEnter * lcd %:p:h
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=1
	set cst
endif
function! Do_CsTag()
		let dir = getcwd()
		if filereadable("tags")
				if(g:iswindows==1)
						let tagsdeleted=delete(dir."\\"."tags")
				else
						let tagsdeleted=delete("./"."tags")
				endif
				if(tagsdeleted!=0)
						echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
						return
				endif
		endif
		if has("cscope")
				silent! execute "cs kill -1"
		endif
		if filereadable("cscope.files")
				if(g:iswindows==1)
						let csfilesdeleted=delete(dir."\\"."cscope.files")
				else
						let csfilesdeleted=delete("./"."cscope.files")
				endif
				if(csfilesdeleted!=0)
						echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
						return
				endif
		endif
		if filereadable("cscope.out")
				if(g:iswindows==1)
						let csoutdeleted=delete(dir."\\"."cscope.out")
				else
						let csoutdeleted=delete("./"."cscope.out")
				endif
				if(csoutdeleted!=0)
						echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
						return
				endif
		endif
		if(executable('ctags'))
				"silent! execute "!ctags -R --c-types=+p --fields=+S *"
				silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
				"set tags=tags
		endif
		if(executable('cscope') && has("cscope") )
				if(g:iswindows!=1)
						silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.hpp' -o -name '*.cc' > cscope.files"
				else
						silent! execute "!dir /s/b *.c,*.cpp,*.h,*.hpp,*.cc >> cscope.files"
				endif
				silent! execute "!cscope -bq"
				execute "normal :"
				if filereadable("cscope.out")
						set nocsverb
						execute "cs add cscope.out"
						set csverb
						"execute"set cscopequickfix=s-,c-,d-,i-,t-,e-"
				endif
		endif
		source ~/.vimrc
endfunction

map <F8> :call Do_CsTag()<CR>
"function! Do_CsTag()
  "if(executable('ctags'))
    ""silent! execute "!ctags -R --c-types=+p --fields=+S *"
    "silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
    ""set tags=tags
  "endif
  ""source ~/.vimrc
"endfunction
if filereadable("tags")
    set tags=tags
    set tags+=~/.vim/tools/cpp_src/tags
endif

autocmd FileType cpp set tags+=~/.vim/cpp_src/tags
nmap <C-I>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-I>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-I>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-I>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-I>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-I>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-I>d :cs find d <C-R>=expand("<cword>")<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"  pygdb 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

"autocmd Filetype c,cpp :python import sys 
"autocmd Filetype c,cpp :python import vim 
"autocmd Filetype c,cpp :python pygdbdir = "~/.vim/bundle/pygdb/plugin" 
"autocmd Filetype c,cpp :python sys.path.append(pygdbdir) 
"autocmd Filetype c,cpp :python vim.command("source %s/pygdb.vim" % pygdbdir) 
"autocmd Filetype c,cpp call GDBMapDefaults() 


autocmd FileType python let g:pydiction_location = '~/.vim/Pydiction/complete-dict'

"< F7> 编译和运行C++
autocmd FileType c,cpp  map <buffer> <leader><space> :w<cr>:make<cr>

nmap <leader>cn :cn<cr>
nmap <leader>cp :cp<cr>
nmap <leader>cw :cw 10<cr> 
autocmd FileType c,cpp map <F7> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
exec "!g++ % -o %<"
exec "! ./%<"
endfunc
 
" <F7> 运行python程序
autocmd FileType python map <F7> :w<cr>:!python %<cr>
autocmd FileType python let g:pydiction_location = '~/.vim/tools/complete-dict'
"defalut g:pydiction_menu_height == 15
"let g:pydiction_menu_height = 20 

"""" <F7> 运行shell程序
"autocmd FileType shell map <F7> :call CompileRunSH()<CR>
"func! CompileRunSH()
"exec "w"
"exec "!chmod a+x %"
"exec "!./%"
"endfunc
