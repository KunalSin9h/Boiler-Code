"Cursor Style when insert or normal
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"Cursor Color
if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;red\x7"
  silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
endif


"Vim Airline
let &t_Co = 256
let g:airline_theme='solarized'
let g:airline_solarized_bg='light'
let g:airline_powerline_fonts = 1

"Disable error bell in wsl2
set visualbell
set t_vb=

"Remember folds
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

"General editor setting
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
"set ruler
set ai
set hls
set gfn=Consolas:h14
set backspace=indent,eol,start
syntax on
set encoding=utf-8
set nocompatible
set belloff=all
set autowrite
setlocal indentkeys-=:


"Append template to new C++ files
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
"Syntax Highlight fix
autocmd BufEnter * :syntax sync minlines=200

" Keyblindings
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
inoremap "" ""
inoremap () ()

"Esc to jj
imap jj <Esc>

"Extra file
set noundofile
set noswapfile
set nobackup

"Theme (requires Solarized Light terminal theme to work properly)
"let g:solarized_termcolors=256
set background=light
colorscheme solarized

"Compile and run
set makeprg=bulid.sh\ %:r
autocmd filetype cpp nnoremap <F9> :w <bar> Make <cr>
autocmd filetype cpp nnoremap <F10> :vertical terminal ++shell ++cols=40 ./%:r<CR>
autocmd filetype cpp nnoremap <F11> :!./%:r<CR>

"autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++17 % -o %:r -Wall<CR>
"autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++17 -DDEBUG % -o %:r -Wall<CR>
"autocmd filetype cpp nnoremap <F10> :vertical terminal ++shell ++cols=40 ./%:r<CR>

" Plugin octol
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1

"Error
let &errorformat="%f:%l:%c: %t%*[^:]:%m,%f:%l: %t%*[^:]:%m," . &errorformat
"set makeprg=LANGUAGE=C\ make


"syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_error_symbol = "✗"
"let g:syntastic_warning_symbol = "⚠"

"Clipboard configuration
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
        augroup WSLYank
                    autocmd!
                            autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
                                augroup END
                            endif
 
        au BufNewFile,BufRead *.tex
            \ set nocursorline |
            \ set nornu |
            \ set number |
            \ let g:loaded_matchparen=1 
