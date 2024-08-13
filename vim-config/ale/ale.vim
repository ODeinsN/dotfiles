" vim lsp and ale config

let g:ale_set_balloons=1
let g:ale_completion_enabled=1
let g:ale_rust_rls_toolchain = 'stable'

" ALE config
filetype plugin on

nmap gd :ALEGoToDefinition<CR>
nmap gr :ALEFindReferences<CR>
" nmap K :ALEHover<CR>

set omnifunc=ale#completion#OmniFunc


