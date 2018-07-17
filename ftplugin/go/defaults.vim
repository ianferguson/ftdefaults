TagbarOpen

highlight OverLength ctermfg=red guibg=#592929
match OverLength /\%121v.\+/

" don't show preview window when autocompleting
set completeopt-=preview

"" my main vimrc has set list on it, which is great
"" for the majority of things that do not use tabs for indentation
"" but not at all great in golang where tabs are the standard
set nolist

nmap <leader>r <Plug>(go-run)
nmap <leader>b <Plug>(go-build)
nmap <leader>t <Plug>(go-test)
nmap <leader>c <Plug>(go-coverage)

nmap <Leader>ds <Plug>(go-def-split)
nmap <Leader>dv <Plug>(go-def-vertical)
nmap <Leader>dt <Plug>(go-def-tab)

nmap <Leader>e <Plug>(go-rename)

nmap <Leader>gb <Plug>(go-doc-browser)
nmap <Leader>gd <Plug>(go-doc)
nmap <Leader>gv <Plug>(go-doc-vertical)

nmap <Leader>i <Plug>(go-info)
nmap <Leader>s <Plug>(go-implements)

" Build/Test on save.
augroup auto_go
    autocmd!
    autocmd BufWritePost *.go :GoBuild
    autocmd BufWritePost *_test.go :GoTest
augroup end

let g:go_fmt_command = "goimports"
let g:go_info_mode='gocode'
" let g:go_test_show_name = 1
let g:go_auto_type_info = 1

" Re-enable to get syntastic working sort of again
" let g:syntastic_go_checkers = ['golint', 'govet', 'gometalinter']
" let g:syntastic_go_gometalinter_args = ['--disable-all', '--enable=errcheck']
" let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go']  }
" let g:go_list_type = "quickfix"

