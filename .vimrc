func DefIndent()
  set autoindent
  set smartindent 
  set expandtab
  set tabstop=2
  set softtabstop=2
endfunc
autocmd bufnewfile,bufread * call DefIndent()

func PyIndent()
  set autoindent 
  set smartindent 
  set expandtab
  set tabstop=4
  set softtabstop=4
endfunc
autocmd bufnewfile,bufread *.py call PyIndent()

set number

let &titlestring = expand("%:p")
set title
set laststatus=2

set showmatch

set showcmd

set cursorline
highlight CursorLine term=bold cterm=bold guibg=Grey40

set linebreak

set nopaste

func SetPyTitle()
	call setline(1, "#!/usr/bin/python")
	call setline(2, "# -*- coding: utf8 -*-")
	call setline(3, "\"\"\"")
	call setline(4, "# @Author: ")
	call setline(5, "# @Created Time: ".strftime("%Y-%m-%d %H:%M:%S"))
	call setline(6, "# @Description: ")
	call setline(7, "\"\"\"")
	normal G
	normal o
	normal o
	normal o
endfunc 
autocmd bufnewfile *.py call SetPyTitle()

func SetShTitle()
	call setline(1, "#!/bin/bash")
	call setline(2, "")
	call setline(3, "#####################################")
	call setline(4, "# @Author: ")
	call setline(5, "# @Created Time: ".strftime("%Y-%m-%d %H:%M:%S"))
	call setline(6, "# @Description: ")
	call setline(7, "#####################################")
	normal G
	normal o
	normal o
	normal o
endfunc 
autocmd bufnewfile *.sh call SetShTitle()
