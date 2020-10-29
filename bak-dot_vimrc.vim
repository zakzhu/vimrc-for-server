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

set autoread
set noautowrite
set nocompatible 
" for search settings
set hlsearch
set incsearch    " Incremental search
set smartcase    " Keep case when searching with *
set nowrapscan
" for filetype settings
filetype indent on
filetype plugin on
filetype plugin indent on
" for history settings
set history=2000
" for bell settings
set novisualbell
set noerrorbells
set t_vb=
" for completion settings
set completeopt=longest,menu
" 当某一行输入注释，禁止下一行自动输入注释
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o






set number
let &titlestring = expand("%:p")
set title
set laststatus=2    " Always show a status line
set showmatch       " Jump to matching bracket
set matchpairs+=<:> " Add HTML brackets to pair matching
set showcmd
set cursorline
highlight CursorLine term=bold cterm=bold guibg=Grey40
set linebreak
set nopaste

















" bash settings
func SetShTitle()
	call setline(1, "#!/bin/bash")
	normal G
endfunc 
autocmd bufnewfile *.sh call SetShTitle()

" go settings

" lua settings

" python settings
func SetPyTitle()
	call setline(1, "#!/usr/bin/python")
	call setline(2, "# -*- coding: utf8 -*-")
	normal G
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






