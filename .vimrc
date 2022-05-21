"General Editor Setting

set relativenumber
set nu
set nohlsearch
set noerrorbells

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set cindent  
set smartindent

set nowrap
set incsearch
set scrolloff=6
set backspace=indent,eol,start
syntax on
set encoding=utf-8
set nocompatible
set belloff=all
set signcolumn=yes

"Cursor Style on diff mode(Insert & Normal)
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

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

"Remember folds
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

"let g:solarized_termcolors=256
set background=dark
"colorscheme solarized
"colorscheme zenburn
colorscheme gruvbox
"colorscheme onehalfdark
"colorscheme onehalflight

"Append template to new C++ files
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-dispatch'
"Plugin 'lervag/vimtex'
Plugin 'octol/vim-cpp-enhanced-highlight'

call vundle#end()            " required
filetype plugin indent on    " required

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Disable new window popin when YouCompleteMe suggest something
set completeopt-=preview

"General shotcut for compiling and running
set makeprg=cp.sh\ %:r
autocmd filetype cpp nnoremap <F5> :w <bar> Make <CR> 
autocmd filetype cpp nnoremap <F6> :vertical terminal ++shell ++cols=40 ./%:r<CR>
autocmd filetype cpp nnoremap <F8> :!./%:r<CR>

"CodeForces specific
nnoremap <F9> :vertical terminal ++shell ++cols=40 cf test<CR>
nnoremap <F12> :vertical terminal ++shell ++cols=40 cf submit<CR>

"vim utility
nnoremap <F2> :q <CR>

"vimtex
"let g:vimtex_view_general_viewer = 'SumatraPDF'
"let g:vimtex_view_general_options = '-reuse-instance @pdf'
"let g:vimtex_view_general_options_latexmk = '-reuse-instance'
"let g:tex_flavor = 'latex'
"let g:vimtex_motion_matchparen = 0
"let g:vimtex_fold_manual = 1
"let g:vimtex_matchparen_enabled = 0

"c++ highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1
