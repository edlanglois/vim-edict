if exists('b:did_ftplugin')
    finish
endif
let b:did_ftplugin = 1

let s:save_cpo = &cpo
set cpo&vim

let b:undo_ftplugin = 'setlocal suffixesadd< commentstring< comments<'

setlocal suffixesadd=.edt
setlocal comments=b:#
setlocal commentstring=#\ %s

let &cpo = s:save_cpo
unlet s:save_cpo
