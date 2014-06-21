if exists("g:loaded_commandcaps") || &cp || v:version < 700
  finish
endif

if !exists("g:commandcaps_override")
    let g:commandcaps_override = 0
endif

let g:loaded_commandcaps = 1

if has('user_commands')
  " Clash with Vim eunuch
  if !exists(":W") || g:commandcaps_override
    command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>w<bang> <args>
  endif

  if !exists(":Wq") || g:commandcaps_override
    command! -bang -range=% -complete=file -nargs=* Wq <line1>,<line2>wq<bang> <args>
  endif
  if !exists(":WQ") || g:commandcaps_override
    command! -bang -range=% -complete=file -nargs=* WQ <line1>,<line2>wq<bang> <args>
  endif

  if !exists(":WQA") || g:commandcaps_override
    command! -nargs=* WQA wqa <args>
  endif
  if !exists(":WQa") || g:commandcaps_override
    command! -nargs=* WQa wqa <args>
  endif
  if !exists(":Wqa") || g:commandcaps_override
    command! -nargs=* Wqa wqa <args>
  endif

  if !exists(":Q") || g:commandcaps_override
    command! -bang -nargs=0 Q quit<bang>
  endif

  if !exists(":Qa") || g:commandcaps_override
    command! -bang -nargs=0 Qa qa<bang>
  endif
  if !exists(":QA") || g:commandcaps_override
    command! -bang -nargs=0 QA qa<bang>
  endif

  if !exists(":Wa") || g:commandcaps_override
    command! -bang -nargs=0 Wa wa<bang>
  endif
  if !exists(":WA") || g:commandcaps_override
    command! -bang -nargs=0 WA wa<bang>
  endif

  if !exists(":Xa") || g:commandcaps_override
    command! -bang -nargs=0 Xa xa<bang>
  endif
  if !exists(":XA") || g:commandcaps_override
    command! -bang -nargs=0 XA xa<bang>
  endif
endif
