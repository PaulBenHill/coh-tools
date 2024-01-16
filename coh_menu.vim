" Vim syntax file
" Language: City of Heros Menu Files
" Maintainer: Ben Hill
" Latest Revision: 13 January 2024

"if exists("b:current_syntax")
"  finish
"endif

" Keywords
syn keyword menuKeywords Divider 

syn match lineComment "^\s*//.*"
syn match nameString "\".*\"" contained

syn match optionLine +^\s*Option\s\+\".*\"\s\+\".*\"\s*+ contains=nameString
syn match titleLine +.*Title.*+ contains=nameString 
syn match menuLine +.*Menu\s\+\".*\"\s*+ contains=nameString 

syn region brackets start="{" end="}" contains=titleLine,menuLine,optionLine keepend

hi def link menuKeywords Statement

hi def link lineComment Comment

hi def link optionLine PreProc
hi def link menuLine PreProc
hi def link titleLine PreProc

hi def link nameString String

hi def link brackets Type
