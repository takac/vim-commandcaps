if exists("g:loaded_commandcaps") || &cp || v:version < 700
  finish
endif

if !exists("g:commandcaps_override")
    let g:commandcaps_override = 0
endif

let g:loaded_commandcaps = 1

if has('user_commands')
  " Clash with Vim eunuch
  if (exists(":W") != 2) || g:commandcaps_override
    command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>w<bang> <args>
  endif

  if (exists(":Wq") != 2) || g:commandcaps_override
    command! -bang -range=% -complete=file -nargs=* Wq <line1>,<line2>wq<bang> <args>
  endif
  if (exists(":WQ") != 2) || g:commandcaps_override
    command! -bang -range=% -complete=file -nargs=* WQ <line1>,<line2>wq<bang> <args>
  endif

  if (exists(":WQA") != 2) || g:commandcaps_override
    command! -nargs=* WQA wqa <args>
  endif
  if (exists(":WQa") != 2) || g:commandcaps_override
    command! -nargs=* WQa wqa <args>
  endif
  if (exists(":Wqa") != 2) || g:commandcaps_override
    command! -nargs=* Wqa wqa <args>
  endif

  if (exists(":Q") != 2) || g:commandcaps_override
    command! -bang -nargs=0 Q quit<bang>
  endif

  if (exists(":Qa") != 2) || g:commandcaps_override
    command! -bang -nargs=0 Qa qa<bang>
  endif
  if (exists(":QA") != 2) || g:commandcaps_override
    command! -bang -nargs=0 QA qa<bang>
  endif

  if (exists(":Wa") != 2) || g:commandcaps_override
    command! -bang -nargs=0 Wa wa<bang>
  endif
  if (exists(":WA") != 2) || g:commandcaps_override
    command! -bang -nargs=0 WA wa<bang>
  endif

  if (exists(":Xa") != 2) || g:commandcaps_override
    command! -bang -nargs=0 Xa xa<bang>
  endif
  if (exists(":XA") != 2) || g:commandcaps_override
    command! -bang -nargs=0 XA xa<bang>
  endif
endif
