set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set colorcolumn=80
set encoding=UTF-8
so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim

set termguicolors

colorscheme onedark
let g:onedark_terminal_italics=1

" lua require('colorbuddy').colorscheme('gruvbuddy')

highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

let g:airline_theme='onedark'

" Icons font config
set guifont=JetbrainsMono\Nerd\Font\11
let g:airline_powerline_fonts = 1

" Nerdtree config
let g:NERDTreeWinPos = "right"

set laststatus=2
set noshowmode
set spelllang=es,en
set spellsuggest=best,9

" Prettier config format on save
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

lua require'colorizer'.setup()

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
