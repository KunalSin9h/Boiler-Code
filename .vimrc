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
set encoding=utf-8
"set signcolumn=yes
set nocompatible
set belloff=all

"Set Shell
set shell=C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe

"Append template to new C++ files
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
"for small cpp code(fake file)
autocmd BufNewFile *.c 0r ~/.vim/templates/quick.c

" Keyblindings
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
inoremap "" ""
inoremap () ()

"Esc to jj
imap jj <Esc>

if has('gui_running')
	set guifont=Consolas:h14
endif

"Extra file
set noundofile
set noswapfile
set nobackup


"colorscheme
syntax enable
if has('gui_running')
    "set background=dark
	colorscheme desert
else
    "set background=light
	colorscheme gruvbox
	
endif

"Compile and run
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++17 -O2 -Wall % -o %:r<CR> 
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 -DDEBUG -O2 -Wall % -o %:r<CR> 
autocmd filetype cpp nnoremap <F10> :!./%:r.exe<CR>

" Plugin octol
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1

" Plugin Airline
let g:airline_theme='base16'


" Plugin Syntastic
if has('gui_running')
	"don't do anything
else
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*

	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0
	let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
endif


"Cursor Style on diff mode(Insert & Normal)
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
