
" Set Editor Font
if exists(':GuiFont')
	"Use GuiFont! to ignore font errors
	GuiFont MesloLGS:h15
endif

" Disable GUI Tabline
if exists (':GuiTabline')
	GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
	GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists (':GuiScrollbar')
	GuiScrollbar 1
endif

" Righ Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
nnoremap <silent><RightMouse> <ESC>:call GuiShowContextMenu()<CR>
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
nnoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv

" Vim Integration
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

" Disable compability to old vi
set nocompatible

" Show matching
set showmatch

" case insensitive
set ignorecase

" middle-click paste with
set mouse=v

" Enable Mouse
set mouse=a

" highlight search
set hlsearch

" incremental search
set incsearch

" number of colums occupied by a tab
set tabstop=4

" see multiple spaces as tabstops so <BS> does the right thing
set softtabstop=4

" converts tabs to white spaces
set expandtab

" width for autoindents
set shiftwidth=4

" indent a new line the same amount as the line just typed
set autoindent

" add line numbers
set number

" set relative number
set relativenumber

" get bash like tab completions
set wildmode=longest,list

" set an 80 column border for good coding style
" set cc=80

" allow auto-indenting depending on file type
filetype plugin indent on

" syntax highlighting
syntax on

" Using system clipboard
set clipboard=unnamedplus

filetype plugin on

" highlight current cursorline
set cursorline

" speed up scrolling in vim
set ttyfast

" set modifiable
set modifiable

" Plugin Section
call plug#begin('~/.vim/plugged')
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'jiangmiao/auto-pairs'
 Plug 'mhinz/vim-startify'
 Plug 'frazrepo/vim-rainbow'
 Plug 'ap/vim-css-color'
 Plug 'neovim/nvim-lspconfig'
 Plug 'ycm-core/YouCompleteMe'
call plug#end()

" Rainbow 
let g:rainbow_active = 1

" YouCompleteMe
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

" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Shortcuts
map q :quit<CR>
map <C-q> :qa<CR>
map <C-s> :write<CR>
map <F5> :NERDTreeToggle<CR>
