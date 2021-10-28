"General Editor Setting
set relativenumber
set nu
set nohlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nowrap
set incsearch
set scrolloff=6
set ai
set hls
set gfn=Consolas:h14
set backspace=indent,eol,start
syntax on

"Append template to new C++ files
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp

" Keyblindings
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
"Esc to jj
imap jj <Esc>
"inoremap ( ()<Esc>i
"inoremap { {}<Esc>i
"inoremap {<CR> {<CR>}<Esc>O
"inoremap [ []<Esc>i
"inoremap < <><Esc>i
"inoremap ' ''<Esc>i
"inoremap " ""<Esc>i




if has('gui_running')
	set guifont=Consolas:h14
endif

"Extra file
set noundofile
set noswapfile
set nobackup


"colorscheme
colorscheme desert

"Compile and run
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++14 -O2 -Wall % -o %:r && %:r.exe <CR>


