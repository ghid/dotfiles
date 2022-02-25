if empty(glob('$HOME\vimfiles\autoload\plug.vim'))
  silent execute "!curl -fLo " . expand('$HOME\vimfiles\autoload\plug.vim')
      \ . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

Plug 'lifepillar/vim-gruvbox8'
" Plug 'lifepillar/vim-colortemplate'
Plug 'cocopon/colorswatch.vim'
" Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'udalov/kotlin-vim'
Plug 'neoclide/jsonc.vim', { 'for': 'jsonc' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'drmingdrmer/xptemplate'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'tyru/open-browser.vim',
Plug 'aklt/plantuml-syntax', { 'for': 'plantuml' }
Plug 'vimwiki/vimwiki'
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
