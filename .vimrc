let $config = "$HOME/vim-config"

source $config/main.vim
source $config/layout/colemak.vim
source $config/mw-addons/mw-addons.vim
source $config/ale/ale.vim
source $config/nerdtree/nerdtree.vim
source $config/markdown-preview/setup.vim
source $config/vimtex/vimtex.vim
source $config/wsl/wsl.vim


call plug#begin()

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'goldie-lin/vim-dts'
Plug 'jyelloz/vim-dts-indent'
Plug 'jiangmiao/auto-pairs'
source $config/ale/ale.plugins.vim
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install()  }, 'for': ['markdown', 'vim-plug'] }
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()


source $config/markdown-preview/mappings.vim

autocmd BufRead,BufNewFile *.dts,*.dtsi set filetype=dtsA
packadd termdebug

set encoding=utf-8
