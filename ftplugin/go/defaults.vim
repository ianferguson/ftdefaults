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
nmap <leader>tc <Plug>(go-test-compile)
nmap <leader>tf <Plug>(go-test-func)
nmap <leader>c <Plug>(go-coverage)
nmap <leader>cc <Plug>(go-coverage-clear)

nmap <Leader>ds <Plug>(go-def-split)
nmap <Leader>dv <Plug>(go-def-vertical)
nmap <Leader>dt <Plug>(go-def-tab)

nmap <Leader>e <Plug>(go-rename)

nmap <Leader>gb <Plug>(go-doc-browser)
nmap <Leader>gd <Plug>(go-doc)
nmap <Leader>gv <Plug>(go-doc-vertical)

nmap <Leader>i <Plug>(go-info)
nmap <Leader>s <Plug>(go-implements)
nmap <leader>gr <Plug>(go-referrers)

let g:ale_open_list = 0 " Don't autoopen the ale list for golang -- it ends up just fighting vim-go

let g:go_fmt_command = "goimports"
let g:go_def_mode = 'gopls'
let g:go_info_mode = 'gopls'
let g:go_auto_type_info = 1         " auto show the type info of the type under the cursor
let g:go_metalinter_autosave = 1    " auto metalint on save
let g:go_jump_to_error = 0          " when running gometalint, gobuild, etc on autosave, don't autojump the cursor to the first error
let g:go_list_autoclose = 1         " autoclose fixlists
let g:go_test_show_name = 1

let g:go_highlight_types = 0
let g:go_highlight_function_arguments = 0
let g:go_highlight_fields = 0
let g:go_highlight_functions = 0
let g:go_highlight_function_calls = 0
let g:go_highlight_operators = 0
let g:go_highlight_variable_declarations = 0
let g:go_highlight_variable_assignments = 0
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
