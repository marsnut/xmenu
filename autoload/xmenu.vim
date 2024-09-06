func! s:checkSetting()
    if !exists("g:xmenu_topic") || !exists("g:xmenu_config_file")
        echom "topic or config no setting"
        return 0
    endif

    if !filereadable(expand(g:xmenu_config_file))
        echom "config file unreadable"
        return 0
    endif
    return 1
endfunc

func! xmenu#setTopic()
    if !s:checkSetting()
        return
    endif

    let data = join(readfile(expand(g:xmenu_config_file)))
    let config = json_decode(data)
    let topics = keys(config)

    func! s:selectedTopic(id, cmd) closure
        if a:cmd == -1  " menu was canceled
            return
        endif
        let g:xmenu_topic = topics[a:cmd-1]
    endfunc

    call popup_menu(topics, #{
            \ callback: function('s:selectedTopic'),
            \ })
endfunc

func! xmenu#popup()
    if !s:checkSetting()
        return
    endif

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
