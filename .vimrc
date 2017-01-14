set nocompatible
syntax enable
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'
Plugin 'airblade/vim-gitgutter'
Plugin 'jszakmeister/vim-togglecursor'
Plugin 'flazz/vim-colorschemes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Valloric/YouCompleteMe'
" NodeJS
Plugin 'ternjs/tern_for_vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'digitaltoad/vim-pug'
Plugin 'dNitro/vim-pug-complete'
" Golang
Plugin 'fatih/vim-go'
call vundle#end()

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

let g:ycm_auto_trigger = 1

" vim-syntastic settings:
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_pug_checkers = ['pug_lint']

set autochdir
set tabstop=4
set shiftwidth=4
set expandtab
set number
set cursorline
set colorcolumn=80
set splitbelow
set updatetime=250
set spell
colorscheme codeschool
highlight SpellBad ctermbg=94 ctermfg=0
