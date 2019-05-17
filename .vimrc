"        _
" __   _(_)_ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|

let mapleader =","

call plug#begin('~/.vim/plugged')
" Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-commentary'
Plug 'mileszs/ack.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'terryma/vim-multiple-cursors'
Plug 'vim-latex/vim-latex'
" Plug 'cmugpi/vim-c0'
Plug 'iamcco/markdown-preview.vim'
" Plug 'vim-scripts/peaksea'
Plug 'jez/vim-better-sml'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/YankRing.vim'
Plug 'danilo-augusto/vim-afterglow'
Plug 'scrooloose/nerdtree'
call plug#end()

" Some basics:
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8

" Hybrid number line
	set number
	set relativenumber
  set nu rnu

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow
	set splitright

" Enable syntax
  syntax enable


" Set tabspaces to 2 and shiftwidth 2
  :set tabstop=2
  :set shiftwidth=2
  :set expandtab


" Shortcutting split navigation, saving a keypress:
	map <C-Left> <C-w>h
	map <C-Down> <C-w>j
	map <C-Up> <C-w>k
	map <C-Right> <C-w>l

" Get line, word and character counts with F3:
	map <F3> :!wc %<CR>

" Spell-check set to F6:
	map <F6> :setlocal spell! spelllang=en_us<CR>

" Readmes autowrap text:
	autocmd BufRead,BufNewFile *.md set tw=79

" Interpret .md files, etc. as .markdown
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}



" Enable autocompletion:
	set wildmode=longest,list,full
	set wildmenu


  " Automatically deletes all tralling whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" When shortcut files are updated, renew bash and ranger configs with new material:
	autocmd BufWritePost ~/.key_directories,~/.key_files !bash ~/.scripts/tools/shortcuts

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

" Opens Ctrl-P using Ctrl-f
  map <C-f> :CtrlP<cr>

" Enables mouse usage
  :set mouse=a

" Afterglow colourscheme settings
  let g:afterglow_italic_comments=1
  colorscheme afterglow



