" Vim syntax file
" Language:	CodeSmith C# Template
" Maintainer:	Werner Beroux <werner@beroux.com>
" Last Change:	2012-05-04
" Filenames:	*.cst

if exists("b:current_syntax")
    finish
endif

" Base on CS syntax
runtime! syntax/cs.vim
unlet b:current_syntax
syn include @Csharp syntax/cs.vim

" CodeSmith specifics
syn region CodeSmithBlock keepend matchgroup=Delimiter start="<%=\=" end="%>" contains=@Csharp
syn region CodeSmithInclude keepend matchgroup=Delimiter start="<%@" end="%>"
syn region CodeSmithComment keepend matchgroup=Delimiter start="<%--" end="--%>" contains=@Spell

if !exists("did_boo_syn_inits")
  let did_boo_syn_inits = 1

  hi def link CodeSmithComment Comment
  hi CodeSmithBlock guifg=lightblue
endif

let b:current_syntax = "cst"

" vim: ts=8
