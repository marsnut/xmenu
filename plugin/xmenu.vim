" let g:xmenu_config = {
"            \ "java": [
"            \       #{  name: "AsyncRun",              cmd: "AsyncRun source cmd.sh" },
"            \       #{  name: "AsyncRun - boot-run",   cmd: "AsyncRun ./mvnw spring-boot:run" },
"            \       #{  name: "AsyncRun- clean",       cmd: "AsyncRun ./mvnw clean" },
"            \       #{  name: "AsyncRun- compile",     cmd: "AsyncRun ./mvnw compile" },
"            \       #{  name: "AsyncStop",             cmd: "AsyncStop" },
"            \       #{  name: "TODO",                  cmd: "grep TODO"}
"            \     ],
"            \ "python": [
"            \       #{  name: "version",      cmd: "echom 'vim-version' version" },
"            \       #{  name: "line-count",   cmd: "call s:lines_count()" },
"            \       #{  name: "TODO",         cmd: "grep TODO" }
"            \     ]
"            \ }

" let g:xmenu_topic = 'java'

" nnoremap <silent> X :call <SID>cmdMenu()<cr>
