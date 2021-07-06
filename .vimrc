call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'terroo/vim-simple-emoji'
Plug 'matsuuu/pinkmare'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdtree'
Plug 'fneu/breezy'
Plug 'sainnhe/everforest'
Plug 'arcticicestudio/nord-vim'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'
Plug 'tomasiser/vim-code-dark'
Plug 'uiiaoo/java-syntax.vim'
Plug 'bfrg/vim-cpp-modern'
Plug 'dense-analysis/ale'
Plug 'frazrepo/vim-rainbow'
Plug 'ap/vim-css-color'
Plug 'tribela/vim-transparent'

call plug#end()

colorscheme dracula

hi! MatchParen cterm=NONE,bold gui=NONE,bold guifg=NONE
hi! Normal guibg=NONE ctermbg=NONE

set nu relativenumber
set mouse=a
set title
set cursorline
set encoding=utf-8

map q :quit<CR>
map <C-q> :qa<CR>
map <C-s> :write<CR>
map <F5> :NERDTreeToggle<CR>

let g:rainbow_active = 1

" YOUCOMPLETEME
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirg_extra_conf = 0

let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cc', 'h', 'hpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]

" UTILSNIPS
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UtilSnipsExpandTrigger = "<tab>"
let g:UtilSnipsJumpForwardTrigger = "<tab>"
let g:UtilSnipsJumpBackwardTrigger = "<s-tab>"

" AIRLINE
let g:airline_theme = 'dracula'
" powerline symbols
let g:airline_symbols = {} 
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
