set relativenumber
set numberwidth=2
set cpoptions+=n
syntax on
set clipboard=unnamed
"set laststatus=2
set backspace=2
set mouse=a
filetype on
set incsearch
set ignorecase
set smartcase
set hlsearch
set splitbelow
set splitright
set updatetime =100
set encoding=utf-8
set nobackup
set nowritebackup
"cursor block
let &t_SI="\e[5 q"
let &t_EI="\e[1 q"
set cursorline
set showtabline=0
" You can split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and cursorcolumn ONLY in active window.
" augroup cursor_off
"     autocmd!
"     autocmd WinLeave * set nocursorline nocursorcolumn
"     autocmd WinEnter * set cursorline 
" augroup END
" keymap 

noremap <Space> <Nop>
map <Space> <Leader>
" doomemacs window keybinding
" go to right window
nnoremap <leader>wl <c-w>l
" go to left window
nnoremap <leader>wh <c-w>h
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
" save and close window space w c
nnoremap <leader>wc :wq<cr>
"vertical split
nnoremap <leader>wv :vsp<cr>
"horizontal split
nnoremap <leader>ws :sp<cr>
map <leader>h :noh<CR>

" firs downloa vim plug pluging manager
"https://github.com/junegunn/vim-plug
" plugin
call plug#begin('~/.vim/plugged')
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'joshdick/onedark.vim'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'frazrepo/vim-rainbow'
Plug 'easymotion/vim-easymotion'

Plug 'vim-python/python-syntax'
Plug 'jpalardy/vim-slime'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
call plug#end()
" pluging configuration
"airline setting
let g:airline_theme='wombat'
let g:airline_extensions = ['branch']
let g:airline_section_y = ''
let g:airline_section_z = '%3p%% %3l/%L:%3v'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview = 1
" vim-rainbow setting
let g:rainbow_active = 1
" vim slime
" in tmux C-a q give the pane number
" C-c C-c to run the code
" echo $TMUX | cut -f1 -d',' 
" give tmux session name like default or session2
let g:slime_target = "tmux"
nmap <leader>ss <Plug>SlimeLineSend
" ipython to work correctly
" let g:slime_bracketed_paste = 1
" languaclient-neovim
" let g:LanguageClient_serverCommands = {
"     \ 'r': ['R', '--slave', '-e', 'languageserver::run()'],
"     \ }

" coc-nvim

" inoremap <silent><expr> <TAB>
"       \ coc#pum#visible() ? coc#pum#next(1) :
"       \ CheckBackspace() ? "\<Tab>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" " Make <CR> to accept selected completion item or notify coc.nvim to format
" " <C-g>u breaks current undo, please make your own choice
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" function! CheckBackspace() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" " Use <c-space> to trigger completion
" if has('nvim')
"   inoremap <silent><expr> <c-space> coc#refresh()
" else
"   inoremap <silent><expr> <c-@> coc#refresh()
" endif


" colorscheme
colorscheme onedark

