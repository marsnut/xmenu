let g:xmenu_config = [
          \ {
            \ "AsyncRun - cmd":         "AsyncRun source cmd.sh",
            \ "AsyncRun - mvn:run":     "AsyncRun ./mvnw spring-boot:run",
            \ "AsyncRun - mvn:test":    "AsyncRun ./mvnw test",
            \ "AsyncRun - mvn:compile": "AsyncRun ./mvnw compile",
            \ "AsyncStop":              "AsyncStop",
            \ "version":                "echom 'vim-version' version",
            \ "line-count":             "call s:lines_count()",
            \ "TODO":                   "grep TODO"
            \ }
        \ ]

let g:xmenu_category = 'main'

nnoremap <silent> X :call <SID>cmdMenu()<cr>
