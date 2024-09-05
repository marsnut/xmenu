let g:xmenu_config = {
            \ "java": [
            \       #{  title: "AsyncRun",              cmd: "AsyncRun source cmd.sh" },
            \       #{  title: "AsyncRun - boot-run",   cmd: "AsyncRun ./mvnw spring-boot:run" },
            \       #{  title: "AsyncRun- clean",       cmd: "AsyncRun ./mvnw clean" },
            \       #{  title: "AsyncRun- compile",     cmd: "AsyncRun ./mvnw compile" },
            \       #{  title: "AsyncStop",             cmd: "AsyncStop" },
            \       #{  title: "TODO",                  cmd: "grep TODO"}
            \     ],
            \ "python": [
            \       #{  title: "version",      cmd: "echom 'vim-version' version" },
            \       #{  title: "line-count",   cmd: "call s:lines_count()" },
            \       #{  title: "TODO",         cmd: "grep TODO" }
            \     ]
            \ }

let g:xmenu_category = 'java'

" nnoremap <silent> X :call <SID>cmdMenu()<cr>
