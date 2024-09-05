func! xmenu#popup()
    let menus = g:xmwnu_config[g:xmenu_cat]
    let names = []
    let cmds = []
    for menu in menus
        call add(names, menu.name)
        call add(cmds, menu.cmd)
    endfor

    func! s:selectedCommand(id, cmd) closure
        if a:cmd == -1  " menu was canceled
            return
        endif
        exe cmds[a:cmd-1]]
    endfunc

    call popup_menu(names, #{
            \ callback: function('s:selectedCommand'),
            \ })
endfunc

" nnoremap <buffer> <silent> X :call <SID>cmdMenu()<cr>
