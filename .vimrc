set mouse=a
syntax on
set number
set cursorline
:highlight Cursorline cterm=bold ctermbg=black
set hlsearch
set ignorecase
set smartcase
set relativenumber
set tabstop	=4
set softtabstop =4
set shiftwidth  =4
set textwidth   =79
set expandtab
set autoindent
set showmatch
autocmd BufWritePre *.py :%$/\s\+$//e
autocmd BufWritePre *.f90 :%$/\s\+$//e
autocmd BufWritePre *.f95 :%$/\s\+$//e
autocmd BufWritePre *.for :%$/\s\+$//e
if !has('gui_running')
        set t_Co=256
endif
colorscheme desert
set termguicolors
set laststatus=2
set wrap
set encoding=utf-8

if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

let g:airline#extensions#tabline#enabled = 1
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
nmap <C-b> :StartBrowserSync<CR>
nmap <C-q> :wq<CR>
let g:NERDTreeDitStatusWithFlags = 1
