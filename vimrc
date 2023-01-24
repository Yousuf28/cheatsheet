set relativenumber
set numberwidth=2
set cpoptions+=n
syntax enable

let &t_SI="\e[5 q"
let &t_EI="\e[1 q"

let mapleader = "\<Space>"

nnoremap <leader>d dd
nnoremap <leader>j 5j
inoremap kj <esc>
vnoremap kj <esc>
