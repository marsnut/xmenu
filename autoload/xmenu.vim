func! xmenu#setTopic()
    let data = join(readfile(expand(g:xmenu_config_file)))
    let config = json_decode(data)
    let topics = keys(config)

    func! s:selectedTopic(id, cmd) closure
        if a:cmd == -1  " menu was canceled
            return
        endif
        let g:xmenu_topic = topcis[a:cmd-1]
    endfunc

    call popup_menu(topics, #{
            \ callback: function('s:selectedTopic'),
            \ })
endfunc

func! xmenu#popup()
    let data = join(readfile(expand(g:xmenu_config_file)))
    let config = json_decode(data)
    let menus = config[g:xmenu_topic]
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
        exe cmds[a:cmd-1]
    endfunc

    call popup_menu(names, #{
            \ callback: function('s:selectedCommand'),
            \ })
endfunc

" nnoremap <buffer> <silent> X :call <SID>cmdMenu()<cr>
