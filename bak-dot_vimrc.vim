" @Author: Zak Zhu
" @Github Repo: https://github.com/zakzhu/vimrc-for-server

" auto reload .vimrc
autocmd! bufwritepost .vimrc source %

" common settings
func DefIndent()
  set autoindent
  set smartindent 
  set expandtab
  set tabstop=2
  set softtabstop=2
endfunc
autocmd bufnewfile,bufread * call DefIndent()

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

" bash settings
func SetShTitle()
	call setline(1, "#!/bin/bash")
	normal G
	normal o
	normal o
	normal o
endfunc 
autocmd bufnewfile *.sh call SetShTitle()

" go settings

" lua settings

" python settings
func SetPyTitle()
	call setline(1, "#!/usr/bin/python")
	call setline(2, "# -*- coding: utf8 -*-")
	normal G
	normal o
	normal o
	normal o
endfunc 
autocmd bufnewfile *.py call SetPyTitle()

func PyIndent()
  set autoindent 
  set smartindent 
  set expandtab
  set tabstop=4
  set softtabstop=4
endfunc
autocmd bufnewfile,bufread *.py call PyIndent()

" ruby settings






