call plug#begin()

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'dmerejkowsky/vim-ale'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'easymotion/vim-easymotion'

call plug#end()


set number relativenumber

let mapleader = " "

noremap n j
noremap N J
noremap e k
noremap E K
noremap i l
noremap I L
noremap k n
noremap K N
noremap l u
noremap L I
noremap j e
noremap J E
noremap u i
noremap U I

map <leader>a :action $SelectAll<CR>
map <leader>b :action GotoDeclaration<CR>
map <leader>c :action $Copy<CR>
map <leader>d :action EditorDuplicate<CR>
map <leader>e :action RecentFiles<CR>
map <leader>f :action Find<CR>
map <leader>g :action GotoLine<CR>
map <leader>h :action TypeHierarchy<CR>
map <leader>i :action ImplementMethods<CR>
map <leader>m :action EditorScrollToCenter<CR>
map <leader>n :action FileChooser.NewFolder<CR>
map <leader>o :action OverrideMethods<CR>
map <leader>p :action ParameterInfo<CR>
map <leader>q :action QuickJavaDoc<CR>
map <leader>r :action Replace<CR>
map <leader>s :action SaveAll<CR>
map <leader>t :action Vcs.UpdateProject<CR>
map <leader>u :action GotoSuperMethod<CR>
map <leader>v :action $Paste<CR>
map <leader>w :action EditorSelectWord<CR>
map <leader>x :action $Cut<CR>
map <leader>y :action EditorDeleteLine<CR>
map <leader>[ :action EditorCodeBlockStart<CR>
map <leader>] :action EditorCodeBlockEnd<CR>

" open nerdtree on startup
autocmd VimEnter * NERDTree | wincmd p

let g:NERDTreeMapActivateNode='l'
let g:NERDTreeMapJumpParent='h'

noremap ZZ ZZZZ
