" Vim color file
" Maintainer:  Damien Gombault <desintegr@gmail.com>
" WWW:         http://desintegr.googlecode.com/svn/config/vim/colors/monokai.vim
" Last Change: 2008 Feb 27
" Version:     0.1.3

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "monokai"

highlight Normal guifg=#f8f8f2 guibg=#272822 ctermfg=231 ctermbg=235


" Main highlight groups
highlight Cursor guibg=fg
highlight CursorLine guibg=#3e3d32 gui=NONE ctermbg=237 cterm=NONE
highlight ColorColumn guibg=#3e3d32 gui=NONE ctermbg=237 cterm=NONE
"hi CursorIM
"hi CursorColumn
"hi CursorLine
highlight Directory guifg=#66d9ef gui=NONE ctermfg=45 cterm=NONE
highlight DiffAdd guifg=bg guibg=#a6e22e ctermfg=2 ctermbg=112 cterm=NONE
highlight DiffChange guifg=bg guibg=#e6db74 ctermfg=3 ctermbg=185 cterm=NONE
highlight DiffDelete guifg=bg guibg=#f92672 ctermfg=1 ctermbg=197 cterm=NONE
highlight DiffText guifg=bg guibg=#e6db74 ctermfg=3 ctermbg=185 cterm=NONE
highlight ErrorMsg guifg=#f92672 guibg=bg gui=NONE ctermfg=197 ctermbg=bg cterm=NONE
highlight VertSplit guifg=#3b3a32 guibg=bg gui=NONE ctermfg=237 ctermbg=bg cterm=NONE
highlight Folded guifg=#75715e guibg=bg gui=NONE ctermfg=242 ctermbg=bg cterm=NONE
highlight FoldColumn guifg=#75715e guibg=#3e3d32 gui=NONE ctermfg=242 ctermbg=237 cterm=NONE
highlight SignColum guifg=#75715e guibg=#3e3d32 gui=NONE ctermfg=242 ctermbg=237 cterm=NONE
highlight IncSearch guifg=bg guibg=#e6db74 gui=NONE ctermfg=bg ctermbg=185 cterm=NONE
highlight LineNr guifg=#75715e guibg=#3e3d32 gui=NONE ctermfg=242 ctermbg=237 cterm=NONE
highlight MatchParen guifg=fg guibg=bg gui=bold ctermfg=fg ctermbg=bg cterm=bold
highlight ModeMsg gui=NONE cterm=NONE
highlight MoreMsg guifg=#66d9ef gui=NONE ctermfg=45 cterm=NONE
highlight NonText guifg=#3b3a32 gui=NONE ctermfg=237 cterm=NONE
highlight Pmenu guifg=fg guibg=#3e3d32 ctermfg=fg ctermbg=237
highlight PmenuSel guifg=fg guibg=bg ctermfg=fg ctermbg=bg
highlight PmenuSbar guibg=bg ctermbg=bg
highlight PmenuThumb guifg=fg ctermfg=fg
highlight Question guifg=#a6e22e gui=NONE ctermfg=112 cterm=NONE
highlight Search guifg=bg guibg=#e6db74 gui=NONE ctermfg=bg ctermbg=185 cterm=NONE
highlight SpecialKey guifg=#3b3a32 gui=NONE ctermfg=237 cterm=NONE
highlight SpellBad guisp=#f92672
highlight SpellCap guisp=#65d9ef
"hi SpellLocal
highlight SpellRare guisp=#ae81ff
highlight StatusLine guifg=fg guibg=#3e3d32 gui=NONE ctermfg=fg ctermbg=237 cterm=NONE
highlight StatusLineNC guifg=#75715e guibg=#3e3d32 gui=NONE ctermfg=242 ctermbg=237 cterm=NONE
highlight TabLine guifg=#75715e guibg=#3e3d32 gui=NONE ctermfg=242 ctermbg=237 cterm=NONE
highlight TabLineFill guifg=fg guibg=#3e3d32 gui=NONE ctermfg=fg ctermbg=237 cterm=NONE
highlight TabLineSel guifg=fg guibg=#3e3d32 gui=NONE ctermfg=fg ctermbg=237 cterm=NONE
highlight Title guifg=#f92672 gui=NONE ctermfg=197 cterm=NONE
highlight Visual guibg=#49483e gui=NONE ctermbg=238 cterm=NONE
"hi VisualNOS
highlight WarningMsg guifg=#f92672 gui=NONE ctermfg=197 cterm=NONE
"hi WildMenu

"hi Menu
"hi ScrollBar
"hi Tooltip


" Plugin specific highlight groups
highlight MyTagListFileName guifg=#fd971f guibg=bg gui=NONE ctermfg=208 ctermbg=bg cterm=NONE


" Color groups
highlight Blue guifg=#66d9ef gui=NONE ctermfg=45 cterm=NONE
highlight Green guifg=#a6e22e gui=NONE ctermfg=112 cterm=NONE
highlight Grey guifg=#75715e gui=NONE ctermfg=242 cterm=NONE
highlight Orange guifg=#fd971f gui=NONE ctermfg=208 cterm=NONE
highlight Purple guifg=#ae81ff gui=NONE ctermfg=141 cterm=NONE
highlight Red guifg=#f92672 gui=NONE ctermfg=197 cterm=NONE
highlight White guifg=#f8f8f2 gui=NONE ctermfg=231 cterm=NONE
highlight Yellow guifg=#e6db74 gui=NONE ctermfg=185 cterm=NONE

highlight BlueU guifg=#66d9ef gui=underline ctermfg=45 cterm=underline

highlight RedR guifg=fg guibg=#f92672 gui=NONE ctermfg=fg ctermbg=197 cterm=NONE
highlight YellowR guifg=bg guibg=#fd971f gui=NONE ctermfg=fg ctermbg=208 cterm=NONE


" Syntax highligh groups
hi! link Comment      Grey
"
hi! link Constant     Purple
hi! link String       Yellow
hi! link Character    Yellow
"hi Number
"hi Boolean
"hi Float
"
hi! link Identifier   Green
"hi Function
"
hi! link Statement    Red
"hi Conditional
"hi Repeat
"hi Label
hi! link Operator     Green
"hi Keyword
"hi Exception
"
hi! link PreProc      Orange
"hi Include
"hi Define
"hi Macro
"hi PreCondit
"
hi! link Type         Blue
hi! link StorageClass Red
"hi Structure
"hi Typedef
"
hi! link Special      White
"hi SpecialChar
hi! link Tag          Green
hi! link Delimiter    Red
"hi SpecialComment
"hi Debug
"
hi! link Underlined   BlueU
"hi Ignore
hi! link Error        RedR
hi! link Todo         YellowR

" Language specific highligh groups
" C
hi link cStatement              Green
" C++
hi link cppStatement            Green
" CSS
hi link cssBraces               White
hi link cssFontProp             White
hi link cssColorProp            White
hi link cssTextProp             White
hi link cssBoxProp              White
hi link cssRenderProp           White
hi link cssAuralProp            White
hi link cssRenderProp           White
hi link cssGeneratedContentProp White
hi link cssPagingProp           White
hi link cssTableProp            White
hi link cssUIProp               White
hi link cssFontDescriptorProp   White
" Java
hi link javaStatement           Green
" Ruby
hi link rubyClassVariable       White
hi link rubyControl             Green
hi link rubyGlobalVariable      White
hi link rubyInstanceVariable    White
hi link rubyDefine              Red
hi link rubyRailsFilterMethod   Blue
hi link rubyRailsRenderMethod   Blue
" HTML
hi link htmlTag         Comment
hi link htmlTagName     Conditional
hi link htmlEndTag      Comment
hi link htmlLink        Normal
hi link htmlArg         Green
" CSS/SASS
hi link cssTagName                  Yellow
hi link sassVariable                Green
hi link sassFunction                Red
hi link sassMixing                  Red
hi link sassMixin                   Red
hi link sassExtend                  Red
hi link sassFor                     Red
hi link sassInterpolationDelimiter  Magenta
hi link sassAmpersand               Character
hi link sassId                      Identifier
hi link sassClass                   Type
hi link sassIdChar                  sassId
hi link sassClassChar               sassClass
