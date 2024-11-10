" Basic Neovim Configuration
let mapleader = " "

" Start plugin management
call plug#begin('~/.config/nvim/plugged')

" Add color scheme plugin (Gruvbox in this case)
Plug 'morhetz/gruvbox'            " Gruvbox theme

" Add Comment.nvim plugin for commenting
Plug 'numToStr/Comment.nvim'

" Add NerdTree plugin for file explorer
Plug 'preservim/nerdtree'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" End plugin management
call plug#end()

" Telecope mappings inside the telescope_config.luab file
lua require('telescope_config')

" Enable syntax highlighting
syntax enable

" Enable file type detection and enable plugins for file types
filetype plugin indent on

" Set dark background
set background=dark

" Specify colorscheme (replace with goober-black if you have it)
colorscheme gruvbox

" Set line numbers
set number

" Enable relative line numbers
nmap <Leader>l :set relativenumber!<CR>

" Set tab width
set tabstop=2
set shiftwidth=2
set expandtab

" Set border
set colorcolumn=90
set textwidth=90

" Enable mouse support
set mouse=a

" Enable 24-bit RGB color in the TUI
set termguicolors

" Move selected lines up
xnoremap <A-k> :m '<-2<CR>gv=gv

" Move selected lines down
xnoremap <A-j> :m '>+1<CR>gv=gv

xnoremap <S-K> :m '<-2<CR>gv=gv
xnoremap <S-J> :m '>+1<CR>gv=gv

nnoremap <Leader>f :NERDTreeToggle<CR>

" Set command window at the bottom
:set cmdheight=0
:set linespace=0

" Vertical split with Leader + v
nnoremap <Leader>v :vsplit<CR>

" Horizontal split with Leader + s
nnoremap <Leader>s :split<CR>

" Move between splits with Leader key
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

" Open terminal in neovim
nnoremap <C-T> :term<CR>

" Mapping commenting to CTRL
nmap <C-_> gcc
xmap <C-_> gcc

" Tab settings
" In Visual mode, press Tab to indent selected text
vnoremap <Tab> >gv
" In Visual mode, press Shift+Tab to unindent selected text
vnoremap <S-Tab> <gv
" In Normal mode, press Tab to indent the current line
nnoremap <Tab> >>
" In Normal mode, press Shift+Tab to unindent the current line
nnoremap <S-Tab> <<
