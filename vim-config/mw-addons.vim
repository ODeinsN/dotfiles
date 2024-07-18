set nocompatible | filetype indent plugin on | syn on

fun! SetupVAM()
	let c = get(g:, 'vim_addon_manager', {})
	let g:vim_addon_manager = c
	let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'

	let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'

	if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
		execute '!git clone --depth=1'
					\ 'https://github.com/MarcWeber/vim-addon-manager'
					\ shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
	endif

	" This provides the VAMActivate command, you could be passing plugin names, too
	call vam#ActivateAddons([], {})
endfun

call SetupVAM()

" ACTIVATING PLUGINS
VAMActivate vim-snippets snipmate
