set number relativenumber

" cursor config
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

set ttimeout
set ttimeoutlen=1
set ttyfast
syntax on

set cursorline
set autoread
set smartcase
set spell spelllang=en,de

if !has('nvim')
	set pastetoggle=<F2>
endif


