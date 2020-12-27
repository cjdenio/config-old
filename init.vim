call plug#begin(stdpath('config') . '/plugged')

Plug 'wakatime/vim-wakatime'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tmsvg/pear-tree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'sbdchd/neoformat'
Plug 'voldikss/vim-floaterm'

" Themes
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'ghifarit53/tokyonight-vim'

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

" utilisnips stuff
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Languages
Plug 'keith/swift.vim'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'
Plug 'lervag/vimtex'
Plug 'dart-lang/dart-vim-plugin'
" Plug 'peitalin/vim-jsx-typescript'

call plug#end()

let g:pear_tree_repeatable_expand = 0

set number
color dracula 

command! FRCDeploy !./gradlew deploy
set statusline^=%{coc#status()}

" use 2 spaces
set expandtab
set shiftwidth=2

" except for go
autocmd Filetype go setlocal shiftwidth&vim

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

" NERDTree stuff
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let NERDTreeMinimalUI = 1

" Better syntax highlighting for Golang
let g:go_highlight_function_calls = 1
autocmd FileType go setlocal noexpandtab

" Snippets are separated from the engine. Add this if you want them:

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set termguicolors
