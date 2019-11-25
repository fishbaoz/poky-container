map <F9> :call SaveInputData()<CR>
func! SaveInputData()
	exec "tabnew"
	exec 'normal "+gP'
	exec "w! /tmp/input_data"
endfunc



"colorscheme torte
"colorscheme murphy
"colorscheme desert
"colorscheme desert
"colorscheme elflord
colorscheme ron


set term=builtin_ansi

"set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"set termencoding=utf-8
"set encoding=utf-8
"set fileencodings=ucs-bom,utf-8,cp936
"set fileencoding=utf-8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  display
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set shortmess=atI   " no uganda children
"winpos 5 5          " Windows position
"set lines=40 columns=155    "  windows size
set go=             "  no graphics button
"color asmanian2     " theme
"set guifont=Courier_New:h10:cANSI   " font
"syntax on           " Syntax on
autocmd InsertLeave * se nocul  " highlight currentline
autocmd InsertEnter * se cul    " highlight currentline
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
"set ruler           " ruler
set showcmd         "  show command
"set cmdheight=1     " command line height
"set whichwrap+=<,>,h,l   " backspace 3 lines
"set scrolloff=3     " 3 lines when cursor moves to bottom and top.
set novisualbell    " no bell?
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "
set laststatus=1    "  show status line
set foldenable      "  fold
set foldmethod=manual   " fold manually
"set background=dark " background
set nocompatible  "
" chinese help
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""new file
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"new .c,.h,.sh,.java
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()"
""SetTitle
func SetTitle()
	".sh
	if &filetype == 'sh'
		call setline(1,"\#########################################################################")
		call append(line("."), "\# File Name: ".expand("%"))
		call append(line(".")+1, "\# Author: ma6174")
		call append(line(".")+2, "\# mail: ma6174@163.com")
		call append(line(".")+3, "\# Created Time: ".strftime("%c"))
		call append(line(".")+4, "\#########################################################################")
		call append(line(".")+5, "\#!/bin/bash")
		call append(line(".")+6, "")
	else
		call setline(1, "/*************************************************************************")
		call append(line("."), "	> File Name: ".expand("%"))
		call append(line(".")+1, "	> Author: ma6174")
		call append(line(".")+2, "	> Mail: ma6174@163.com ")
		call append(line(".")+3, "	> Created Time: ".strftime("%c"))
		call append(line(".")+4, " ************************************************************************/")
		call append(line(".")+5, "")
	endif
	if &filetype == 'cpp'
		call append(line(".")+6, "#include<iostream>")
		call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include<stdio.h>")
		call append(line(".")+7, "")
	endif
	"	if &filetype == 'java'
	"		call append(line(".")+6,"public class ".expand("%"))
	"		call append(line(".")+7,"")
	"	endif
	" goto end of file
	autocmd BufNewFile * normal G
endfunc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"keyboard
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>

" ctrl+a
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
map <F12> gg=G
" Ctrl+c
vmap <C-c> "+y
"
nnoremap <F2> :g/^\s*$/d<CR>
" compare file
nnoremap <C-F2> :vert diffsplit
"new tab
map <M-F2> :tabnew<CR>
" list  files
map <F3> :tabnew .<CR>
"treeview
map <C-F3> \be
"C, C++ compile
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "! ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "! ./%<"
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!java %<"
	elseif &filetype == 'sh'
		:!./%
	elseif &filetype == 'py'
		exec "!python %"
		exec "!python %<"
	endif
endfunc
"C,C++debug
map <F8> :call Rungdb()<CR>
func! Rungdb()
	exec "w"
	exec "!g++ % -g -o %<"
	exec "!gdb ./%<"
endfunc



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""useful settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" load when file is changed.
set autoread
" quickfix
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
" autocomplete
set completeopt=preview,menu
" plugin
filetype plugin on
" share clipboard
set clipboard+=unnamed
" never backup
set nobackup
"make
:set makeprg=g++\ -Wall\ \ %
"auto save
set autowrite
set ruler                   " ruler
set cursorline              " current line
set magic                   " magic
set guioptions-=T           " hide toolbar
set guioptions-=m           " hide menubar
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" info in status line
set foldcolumn=0
set foldmethod=indent
set foldlevel=3
set foldenable              " start folding
"
set nocompatible
"
set syntax=on
" no bell
set noeb
" confirm box
set confirm
" auto indent
set autoindent
set cindent
" Tab width
set tabstop=4
" 4
set softtabstop=4
set shiftwidth=4
" no space replacing tab
set noexpandtab
" smart tab
set smarttab
" line no.
set number
"  history
set history=1000
" no tmp file
set nobackup
set noswapfile
"
set ignorecase
"
set hlsearch
set incsearch
"
set gdefault
"code
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"lang
set langmenu=zh_CN.UTF-8
set helplang=cn
"
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
"
set laststatus=2
"
set cmdheight=2
"
filetype on
"
filetype plugin on
"
filetype indent on
"
set viminfo+=!
"
set iskeyword+=_,$,@,%,#,-
"
set linespace=0
"
set wildmenu
"
set backspace=2
"
set whichwrap+=<,>,h,l
"
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" use command to  show which line has been chagned
set report=0
"
set fillchars=vert:\ ,stl:\ ,stlnc:\
"
set showmatch
"
set matchtime=1
"
set scrolloff=3
"
set smartindent
"
au BufRead,BufNewFile *  setfiletype txt
"
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {<CR>}<ESC>O
":inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endfunction
filetype plugin indent on
"
set completeopt=longest,menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""






"NERDtee
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile=$VIM.'\Data\NerdBookmarks.txt'
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
nnoremap f :NERDTreeToggle
map <F7> :NERDTree<CR>
