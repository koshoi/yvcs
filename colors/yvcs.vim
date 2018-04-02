" Vim yvcs colorscheme
" Author: Oleg Koshovets
" Maintainer: Oleg Koshovets
" Notes: This colorscheme was built using template from
" https://github.com/ggalindezb/Vim-Colorscheme-Template

set background=dark

highlight clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name="yvcs"

let s:green    = 2
let s:red      = 196
let s:blue     = 27
let s:gray     = 238
let s:yellow   = 178
let s:black    = 232
let s:pink     = 201
let s:violet   = 129
let s:brown    = 130

let s:l_green  = 82
let s:l_red    = 197
let s:l_blue   = 39
let s:l_gray   = 241
let s:l_yellow = 190
let s:l_black  = 233
let s:l_pink   = 207
let s:l_violet = 99
let s:l_brown  = 166

let s:d_green  = 22
let s:d_red    = 124
let s:d_blue   = 18
let s:d_gray   = 234
let s:d_yellow = 208
let s:d_black  = 232
let s:d_pink   = 199
let s:d_violet = 92
let s:d_brown  = 52

" ---------------
" - Main colors -
" ---------------
" The idea is to have limited 9 base colors for fun
" 4 base colors for normal text
" And then use only them

let s:color_fg  = 250
let s:color_fg2 = 245
let s:color_bg  = 233
let s:color_bg2 = 235

let s:color1    = s:l_green
let s:color2    = s:green
let s:color3    = s:l_red
let s:color4    = s:l_blue
let s:color5    = s:yellow
let s:color6    = s:l_yellow
let s:color7    = s:brown
let s:color8    = s:l_brown
let s:color9    = s:l_violet

" vim does not support usage of variables in simple commands
" that is why I am using function for taht
function! Use_color(hiGroup, color_fg, color_bg)
	exec "hi " a:hiGroup "ctermfg=" a:color_fg " ctermbg=" a:color_bg " cterm=none"
endfunction

" --------------------------
" - Normal text and basics -
" --------------------------
call Use_color('Normal',          s:color_fg, s:color_bg)
call Use_color('CursorLineNR',    s:color3,   s:color_bg)
call Use_color('LineNr',          s:color2,   s:color_bg)
call Use_color('CursorLine',      'none',     s:color_bg)
call Use_color('Folded',          s:color2,   s:color_bg)

" -------------------------
" - Window/Tab delimiters -
" -------------------------
call Use_color('VertSplit',       s:color4,    s:color_bg)
call Use_color('TabLine',         s:color9,    s:color_bg)
call Use_color('TabLineFill',     s:color3,    s:color_bg)
call Use_color('TabLineSel',      s:color4,    s:color_bg)

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
call Use_color('Directory',       s:color4,    s:color_bg)
call Use_color('Search',          s:color1,    s:color3)
call Use_color('IncSearch',       s:color3,    s:color1)

" -----------------
" - Prompt/Status -
" -----------------
call Use_color('StatusLine',      s:color6,    s:color_bg)
call Use_color('WildMenu',        s:color7,    s:color_bg)
" --------------
" - Visual aid -
" --------------
call Use_color('MatchParen',      s:color2,    s:color_bg)
call Use_color('Visual',          s:color3,    s:color_bg2)
call Use_color('NonText',         s:color9,    s:color_bg)
call Use_color('Error',           s:color_fg,  s:color3)
call Use_color('SpecialKey',      s:color_fg2, s:color_bg)

" --------------------------------
" Variable types
" --------------------------------
call Use_color('Constant',        s:color9,    s:color_bg)
call Use_color('String',          s:color5,    s:color_bg)
call Use_color('StringDelimiter', s:color6,    s:color_bg)
call Use_color('Character',       s:color6,    s:color_bg)
call Use_color('Number',          s:color6,    s:color_bg)
call Use_color('Boolean',         s:color4,    s:color_bg)
call Use_color('Float',           s:color6,    s:color_bg)

call Use_color('Identifier',      s:color8,    s:color_bg)
call Use_color('Function',        s:color1,    s:color_bg)

" --------------------------------
" Language constructs
" --------------------------------
call Use_color('Statement',       s:color4,    s:color_bg)
call Use_color('Conditional',     s:color5,    s:color_bg)
call Use_color('Repeat',          s:color7,    s:color_bg)
call Use_color('Label',           s:color4,    s:color_bg)
call Use_color('Operator',        s:color2,    s:color_bg)
call Use_color('Keyword',         s:color6,    s:color_bg)
call Use_color('Exception',       s:color3,    s:color_bg)
call Use_color('Comment',         s:color_fg2, s:color_bg)

call Use_color('Special',         s:color2,    s:color_bg)
call Use_color('SpecialChar',     s:color2,    s:color_bg)
" ----------
" - C like -
" ----------
call Use_color('PreProc',         s:color4,    s:color_bg)
call Use_color('Include',         s:color4,    s:color_bg)
call Use_color('Define',          s:color4,    s:color_bg)
call Use_color('Macro',           s:color4,    s:color_bg)
call Use_color('PreCondit',       s:color4,    s:color_bg)

call Use_color('Type',            s:color5,    s:color_bg)
call Use_color('StorageClass',    s:color6,    s:color_bg)
call Use_color('Structure',       s:color5,    s:color_bg)
call Use_color('Typedef',         s:color6,    s:color_bg)

" --------------------------------
" Diff
" --------------------------------
call Use_color('DiffAdd',         s:color2,    s:color_bg)
call Use_color('DiffChange',      s:color4,    s:color_bg)
call Use_color('DiffDelete',      s:color3,    s:color_bg)
call Use_color('DiffText',        s:color_fg2, s:color_bg)

" --------------------------------
" Completion menu
" --------------------------------
call Use_color('Pmenu',           s:color_fg2, s:color_bg2)
call Use_color('PmenuSel',        s:color3,    s:color_bg+1)

"--------------------------------------------------------------------
" Specific settings or unknown settings                             |
"--------------------------------------------------------------------

hi Question        ctermfg=none    ctermbg=none    cterm=none
hi Title           ctermfg=none    ctermbg=none    cterm=none
hi ModeMsg         ctermfg=none    ctermbg=none    cterm=none
hi MoreMsg         ctermfg=none    ctermbg=none    cterm=none

hi SpellBad        ctermfg=none    ctermbg=none    cterm=none
hi SpellCap        ctermfg=none    ctermbg=none    cterm=none
hi SpellLocal      ctermfg=none    ctermbg=none    cterm=none
hi SpellRare       ctermfg=none    ctermbg=none    cterm=none

hi VisualNOS       ctermfg=none    ctermbg=none    cterm=none
hi NonText         ctermfg=none    ctermbg=none    cterm=none

hi Todo            ctermfg=none    ctermbg=none    cterm=none
hi Underlined      ctermfg=none    ctermbg=none    cterm=none
hi ErrorMsg        ctermfg=none    ctermbg=none    cterm=none
hi WarningMsg      ctermfg=none    ctermbg=none    cterm=none
hi Ignore          ctermfg=none    ctermbg=none    cterm=none

hi Tag             ctermfg=none    ctermbg=none    cterm=none
hi Delimiter       ctermfg=none    ctermbg=none    cterm=none
hi SpecialComment  ctermfg=none    ctermbg=none    cterm=none
hi Debug           ctermfg=none    ctermbg=none    cterm=none

hi PmenuSbar       ctermfg=none    ctermbg=none    cterm=none
hi PmenuThumb      ctermfg=none    ctermbg=none    cterm=none

