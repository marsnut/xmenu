func! s:lines_count()
    echom line('$') . ' lines in buffer'
endfunc

func! s:cmdMenu()
    let dict = {
                \ "AsyncRun - cmd":         "AsyncRun source cmd.sh",
                \ "AsyncRun - mvn:run":     "AsyncRun ./mvnw spring-boot:run",
                \ "AsyncRun - mvn:test":    "AsyncRun ./mvnw test",
                \ "AsyncRun - mvn:compile": "AsyncRun ./mvnw compile",
                \ "AsyncStop":              "AsyncStop",
                \ "version":                "echom 'vim-version' version",
                \ "line-count":             "call s:lines_count()",
                \ "TODO":                   "grep TODO"
                \ }

    func! s:selectedCommand(id, cmd) closure
        if a:cmd == -1  " menu was canceled
            return
        endif
        exe dict[sort(keys(dict))[a:cmd-1]]
    endfunc

     call popup_menu(sort(keys(dict)), #{
            \ callback: function('s:selectedCommand'),
            \ })
endfunc

" nnoremap <buffer> <silent> X :call <SID>cmdMenu()<cr>
