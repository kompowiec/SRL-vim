" Vim syntax file
" Language:     Simple Regex Language
" Maintainer:   Kompowiec2 <diasp@o2.pl>
" Filenames:    *.rule
" Created:      2017.07.16
" Revision:     1.0

if !exists("main_syntax")
if version < 600
syntax clear
elseif exists("b:current_syntax")
finish
endif
let main_syntax = 'rule'
endif

syntax case ignore
"SRL is casse insensitive (except us quotation marks)

"strings
syn keyword SRLstrings character literally letter uppercase digit anything whitespace tab backslash raw of any one new line no
"syn match SRLstrings /\<one\s*of\>/
"syn match SRLstrings /<any\s*of\>/
"syn match SRLstrings /<any\s*character\>/
"syn match SRLstrings /<new\s*line\>/
"quantifiers
syn keyword SRLquantifiers exactly times between optional twice once never or more at least and
"syn match SRLquantifiers /once\ or\ more/
"syn match SRLquantifiers /<at\s*least\>/
"groups
syn keyword SRLgroups capture until as 
"Lookarounds 
syn keyword SRLookarounds if not followed by already had
"syn match SRLookarounds /if\ [not]\ followed\ by/ 
"syn match SRLookarounds /if\ [not]\ already\ had/ 
"flags
syn keyword SRLflags case insensitive multi line all lazy
"syn match SRLflags /<case\s*insensitive\>/
"syn match SRLflags /multi\s*line\>/
"syn match SRLflags /all\s*lazy\>/
"anchors
syn keyword SRLanchors begin start with must end
"syn match SRLanchors /<begin\s*start\>/
"syn match SRLanchors /<starts\s*with\>/
"syn match SRLanchors /<must\s*end\>/

if version >= 508 || !exists("did_xxd_syntax_inits")
  if version < 508
    let did_xxd_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

"SRL
HiLink SRLstrings         	String
HiLink SRLquantifiers				Number
HiLink SRLgroups						Typedef
HiLink SRLookarounds 				Conditional
HiLink SRLflags							SpecialChar
HiLink SRLanchors						Delimiter
 delcommand HiLink
endif
