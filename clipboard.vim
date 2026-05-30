if has('clipboard_provider') && executable('xclip') && exists('$DISPLAY')
  function! XclipCopy(reg, type, lines) abort
    let selection = a:reg ==# '+' ? 'clipboard' : 'primary'
    call system('xclip -selection ' .. selection, join(a:lines, "\n"))
  endfunction

  function! XclipPaste(reg) abort
    let selection = a:reg ==# '+' ? 'clipboard' : 'primary'
    return ['', systemlist('xclip -selection ' .. selection .. ' -o')]
  endfunction

  let v:clipproviders['xclip'] = {
        \ 'copy': {
        \   '+': function('XclipCopy'),
        \   '*': function('XclipCopy'),
        \ },
        \ 'paste': {
        \   '+': function('XclipPaste'),
        \   '*': function('XclipPaste'),
        \ },
        \ }
  set clipmethod^=xclip
endif

