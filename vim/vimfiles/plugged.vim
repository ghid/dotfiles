if empty(glob('$HOME\vimfiles\autoload\plug.vim'))
  silent execute "!curl -fLo " . expand('$HOME\vimfiles\autoload\plug.vim')
      \ . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" let g:coc_global_extensions = [
            " \ 'coc-vimlsp',
            " \ 'coc-syntax',
            " \ 'coc-marketplace',
            " \ 'coc-json',
            " \ 'coc-emmet',
            " \ 'coc-yaml',
            " \ 'coc-xml',
            " \ 'coc-pyright',
            " \ 'coc-kotlin',
            " \ 'coc-java'
            " \ ]

call plug#begin('$HOME/vimfiles/pack/plugged')

" Plug 'sainnhe/gruvbox-material'
Plug 'lifepillar/vim-gruvbox8'
" Plug 'dense-analysis/ale', { 'for': ['autohotkey', 'ldif'] }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/vim-gitbranch'
" Plug 'mattn/emmet-vim'
" Plug 'lifepillar/vim-colortemplate'
Plug 'cocopon/colorswatch.vim'
" Plug 'godlygeek/tabular'
" Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
" Plug 'dhruvasagar/vim-table-mode'
" Plug 'jceb/vim-orgmode'
" Plug 'inkarkat/vim-SyntaxRange', { 'for': 'org' }
Plug 'elzr/vim-json', { 'for': 'json' }
" Plug 'lankavitharana/ballerina-vim'
Plug 'vim-python/python-syntax'
Plug 'udalov/kotlin-vim'
Plug 'neoclide/jsonc.vim', { 'for': 'jsonc' }
" Plug 'vim-scripts/Align', { 'on': ['Align', 'AlignCtrl'] }
Plug 'RRethy/vim-hexokinase', { 'do': 'mingw32-make hexokinase', 'on': ['HexokinaseToggle', 'HexokinaseTurnOn'] }
Plug 'drmingdrmer/xptemplate'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'thinca/vim-quickrun', { 'for': ['ballerina', 'gradle', 'go', 'groovy', 'haskell', 'java', 
            \ 'javascript', 'kotlin', 'markdown', 'plantuml', 'ps1', 'scala',
            \ 'autohotkey', 'python', 'vim'] }
Plug 'tyru/open-browser.vim',
Plug 'aklt/plantuml-syntax', { 'for': 'plantuml' }
" Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'pacha/vem-tabline'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/glyph-palette.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vimwiki/vimwiki'
" Plug 'mattn/vim-metarw-webdav'
" Plug 'kana/vim-metarw'
" Plug 'mattn/davc', { 'do': 'go get github.com/mattn/davc' }

call plug#end()
