command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>w<bang> <args>

command! -bang -range=% -complete=file -nargs=* Wq <line1>,<line2>wq<bang> <args>
command! -bang -range=% -complete=file -nargs=* WQ <line1>,<line2>wq<bang> <args>

command! -range=% -complete=file -nargs=* WQA <line1>,<line2>wqa <args>
command! -range=% -complete=file -nargs=* WQa <line1>,<line2>wqa <args>
command! -range=% -complete=file -nargs=* Wqa <line1>,<line2>wqa <args>

command! -bang -nargs=0 Qa qa<bang>
command! -bang -nargs=0 QA qa<bang>

command! -bang -nargs=0 Q quit<bang>

command! -bang -nargs=0 Xa xa<bang>
command! -bang -nargs=0 XA xa<bang>
