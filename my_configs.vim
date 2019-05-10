" General configuration
set relativenumber

" Configurations for linter ale
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_enter = 1 
let g:ale_fixers = {
            \   'python': ['yapf'],
            \   'c': ['clang-format'],
            \   'cpp': ['clang-format'],
            \}
let g:ale_linters['python'] = ['flake8', 'mypy']
let g:ale_linters['c'] = ['clang']
let g:ale_linters['cpp'] = ['clang', 'cpplint']
let g:ale_fix_on_save = 1
let g:ale_rust_rls_toolchain = 'stable'
let g:ycm_rust_src_path = $RUST_SRC_PATH

" Snippets trigger configuration.
let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" You complete me
let g:ycm_global_ycm_extra_conf = '/home/litong/.vim_runtime/my_plugins/YouCompleteMe/.ycm_extra_conf.py'

" vimtex
let g:vimtex_compiler_latexmk = {'callback' : 0}
