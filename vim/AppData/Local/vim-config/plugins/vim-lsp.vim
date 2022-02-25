Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

autocmd User lsp_setup call lsp#register_server({
			\ 'name': 'ahk-language-server',
			\ 'cmd': {server_info->['node',
			\ 'C:/work/temp/test/extension/server/out/server.js', '--stdio']},
			\ 'allowlist': ['autohotkey']
			\ })

if (executable('haskell-language-server-wrapper'))
  au User lsp_setup call lsp#register_server({
      \ 'name': 'haskell-language-server-wrapper',
      \ 'cmd': {server_info->['haskell-language-server-wrapper', '--lsp']},
      \ 'whitelist': ['haskell'],
      \ })
endif

function! s:on_lsp_buffer_enabled() abort
	setlocal omnifunc=lsp#complete
	setlocal signcolumn=yes
	if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
endfunction

augroup lsp_install
	autocmd!
	autocmd User lsp_buffer_enabeled call s:on_lsp_buffer_enabled()
augroup END

let g:lsp_diagnostics_echo_cursor = 1
" let g:lsp_log_file = expand('~/vim-lsp.log')
