function! coc#source#iced#init() abort
  return {
        \ 'priority': 3,
        \ 'shortcut': 'iced',
        \ 'filetypes': ['clojure'],
        \ }
endfunction

function! coc#source#iced#complete(opt, cb) abort
  if !iced#repl#is_connected()
    return
  endif

  if !iced#nrepl#check_session_validity(v:false)
    return
  endif

  let kw = matchstr(a:opt['input'], '[[:alnum:]!$&*\-_=+:<>./?]\+$')
  let kwlen = len(l:kw)
  let startcol = a:opt['col'] - kwlen

  if kwlen == 0 || (kw[0] ==# ':' && kwlen < 2)
    call a:cb([])
  else
    call iced#complete#candidates(kw, a:cb)
  endif
endfunction
