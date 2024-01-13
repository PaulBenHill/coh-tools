" Vim syntax file
" Language: City of Heros Menu Files
" Maintainer: Ben Hill
" Latest Revision: 13 January 2024

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword menuKeywords Menu Title Divider Option

syn match lineComment "^\w*//.*"
syn match quotes "\""

syn region celDescBlock start="{" end="}" fold transparent

hi def link menuKeywords Statement
hi def link lineComment Comment
hi def link quotes String

