" Most of this shamelessly stolen from SKWP
" https://github.com/skwp/dotfiles/blob/master/vimrc

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

syntax on                       "Syntax coloring is good
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set visualbell                  "No sounds

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

"====[ Make the 81st column stand out ]====================
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"====[ Do cool stuff with lists ]===== ==================
" This requires listtrans.vim from here:
"  https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup
nmap ;l :call ListTrans_toggle_format()<CR>
vmap ;l :call ListTrans_toggle_format('visual')<CR>

" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc
