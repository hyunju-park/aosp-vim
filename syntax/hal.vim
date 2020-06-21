" Vim syntax file
" Language: Android Hardware Interface Description Language (HIDL)
" Current Maintainer: Hyunju Park
" Previous Maintainer: Chris McClellan(forked from rubberduck203/aosp-vim=>https://github.com/rubberduck203/aosp-vim)
" Last Change: 2020 June 21

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

"By design, the HIDL language is similar to C (but does not use the C preprocessor).
source $VIMRUNTIME/syntax/c.vim
unlet b:current_syntax

"hidl specific keywords
syn keyword hidlKeywords interface extends generates

"hidl include
syn keyword hidlInclude import package

"hidl type
syn keyword hidlType identifier memory pointer vec bitfield fmq_sync fmq_unsync TYPE

hi def link hidlKeywords Keyword
hi def link hidlInclude Include
hi def link hidlType Type
let b:current_syntax = "hal"
