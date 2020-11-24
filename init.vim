call plug#begin(stdpath('config') . '/plugged')

Plug 'wakatime/vim-wakatime'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'tmsvg/pear-tree'

call plug#end()

color dracula
set number

command FRCDeploy !./gradlew deploy
set statusline^=%{coc#status()}
