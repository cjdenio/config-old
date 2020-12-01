call plug#begin(stdpath('config') . '/plugged')

Plug 'wakatime/vim-wakatime'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'tmsvg/pear-tree'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'rust-lang/rust.vim'

call plug#end()

let g:pear_tree_repeatable_expand = 0

color dracula
set number

command FRCDeploy !./gradlew deploy
set statusline^=%{coc#status()}

" use 2 spaces
set expandtab
set shiftwidth=2

" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

