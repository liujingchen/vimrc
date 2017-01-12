set nocompatible
syntax enable
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'
Plugin 'fatih/vim-go'
Plugin 'airblade/vim-gitgutter'
Plugin 'jszakmeister/vim-togglecursor'
Plugin 'Valloric/YouCompleteMe'
Plugin 'flazz/vim-colorschemes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
call vundle#end()
" The rest of your config follows here
filetype plugin indent on
set background=dark
set term=xterm-256color
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Close the window of autocomplete after selected
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" Remove trailing spaces on save
autocmd BufWritePre * %s/\s\+$//e

set autochdir
set tabstop=4
set shiftwidth=4
set expandtab
set number
set cursorline
set colorcolumn=80
set splitbelow
set updatetime=250
colorscheme codeschool
