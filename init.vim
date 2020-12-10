call plug#begin(stdpath('config') . '/plugged')

Plug 'wakatime/vim-wakatime'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tmsvg/pear-tree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'

" Themes
Plug 'dracula/vim', {'as': 'dracula'}

" utilisnips stuff
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Languages
Plug 'keith/swift.vim'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'

call plug#end()

let g:pear_tree_repeatable_expand = 0

color dracula
set number

command FRCDeploy !./gradlew deploy
set statusline^=%{coc#status()}

" use 2 spaces
set expandtab
set shiftwidth=2

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

autocmd vimenter * NERDTree
let NERDTreeMinimalUI = 1

" Better syntax highlighting for Golang
let g:go_highlight_function_calls = 1

" Snippets are separated from the engine. Add this if you want them:

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
