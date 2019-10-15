" General configuration
" set relativenumber
set number

" packadd termdebug

" Configurations for linter ale
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_enter = 1 
let g:ale_fixers = {
    \   'python': ['yapf'],
    \   'c': ['clang-format'],
    \   'cpp': ['clang-format'],
    \   'rust': ['rustfmt'],
    \}
let g:ale_linters = {
    \   'python': ['pylint', 'pyright'],
    \   'c': ['clang'],
    \   'cpp': ['cpplint', 'clang'],
    \   'rust': ['rls', 'cargo', 'rustc'],
    \}
let g:ale_fix_on_save = 1
let g:ale_rust_rls_toolchain = 'stable'

" Snippets trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" You complete me
" let g:ycm_global_ycm_extra_conf = '/home/litong/.vim_runtime/my_plugins/YouCompleteMe/.ycm_extra_conf.py'

" vimtex
let g:vimtex_compiler_latexmk = {'callback' : 0}

" vim-lsp
if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd', '-background-index']},
        \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
endif
" if executable('mspyls')
"      au User lsp_setup call lsp#register_server({
"          \ 'name': 'mspyls',
"          \ 'cmd': {server_info->['mspyls']},
"          \ 'whitelist': ['python'],
"          \ 'workspace_config': {'param': {'enabled': v:true}},
"          \ })
" endif
if executable('pyls')
     au User lsp_setup call lsp#register_server({
         \ 'name': 'pyls',
         \ 'cmd': {server_info->['pyls']},
         \ 'whitelist': ['python'],
         \ 'workspace_config': {'param': {'enabled': v:true}},
         \ })
endif
if executable('rls')
     au User lsp_setup call lsp#register_server({
         \ 'name': 'rls',
         \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
         \ 'workspace_config': {'rust': {'clippy_preference': 'on'}},
         \ 'whitelist': ['rust'],
         \ })
endif
