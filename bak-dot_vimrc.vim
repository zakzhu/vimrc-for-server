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


set nocompatible 




" for completion settings
set completeopt=longest,menu




set laststatus=2    
set showmatch       
set showcmd

set nopaste





" line
set number
set wrap
set linebreak
set breakindent
set cursorline
highlight CursorLine term=bold cterm=bold guibg=Grey40

" filetype
filetype plugin indent on
autocmd filetype * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" read & write
set autoread
set noautowrite

" title
let &titlestring = expand("%:p")
set title

" bell
set belloff all
set visualbell off

" search 
set hlsearch
set incsearch    
set smartcase    
set nowrapscan

" auto pair
inoremap ( ()
inoremap [ []
inoremap { {}
inoremap ' ''
inoremap " ""
inoremap < <>
inoremap ` ``

" file header
func Header(lang)
  if a:lang == "bash"
    call setline(1, "#!/bin/bash")
  elseif a:lang == "lua"
    call setline(1, "#!/usr/bin/env lua")
    call setline(2, "-- -*- coding: utf-8 -*-")
  elseif a:lang == "python"
    call setline(1, "#!/usr/bin/python")
    call setline(2, "# -*- coding: utf-8 -*-")
  elseif a:lang == "ruby"
    call setline(1, "#!/usr/bin/env ruby")
    call setline(2, "# -*- coding: utf-8 -*-")
  endif
  normal G
  normal o
  normal o
endfunc

" bash settings
autocmd bufnewfile *.sh call Header("bash")

" lua settings
autocmd bufnewfile *.lua call Header("lua")

" python settings
autocmd bufnewfile *.py call Header("python")

func PyIndent()
  set autoindent 
  set smartindent 
  set expandtab
  set tabstop=4
  set softtabstop=4
endfunc
autocmd bufnewfile,bufread *.py call PyIndent()

" ruby settings
autocmd bufnewfile *.rb call Header("ruby")






