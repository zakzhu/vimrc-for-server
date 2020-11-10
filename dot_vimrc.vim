" @Author: Zak Zhu
" @Github Repo: https://github.com/zakzhu/vimrc-for-server

" auto reload .vimrc
autocmd! bufwritepost .vimrc source %

" Common Settings

" use extended function of vim (no compatible with vi)
set nocompatible 

" show color display
syntax on

" backup
set backup
set backupdir=/tmp/vimbak
au BufWritePre * let &bex = '.' . strftime("%Y-%m-%d@%T") . '~'

" screen redraw
set lazyredraw

" indent & tab
func SpaceIndent(space)
  let &shiftwidth = a:space
  let &tabstop = &shiftwidth
  let &softtabstop = &shiftwidth
endfunc

set autoindent
set smartindent 
set expandtab
call SpaceIndent(2)
set backspace=indent,eol,start

" wildmenu
set wildmenu

" command
set showcmd
set cmdheight=2

" mode
set showmode
highlight modemsg term=underline,bold cterm=underline,bold ctermfg=Red

" status line
set ruler
set laststatus=2
set statusline=%<%F\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %p%%
highlight StatusLine   cterm=underline,bold ctermfg=Green
highlight StatusLineTerm   cterm=underline,bold ctermfg=Green
highlight StatusLineNC   cterm=underline,bold ctermfg=DarkGreen
highlight StatusLineTermNC cterm=underline,bold ctermfg=DarkGreen

" highlights parentheses
set showmatch

" line
set number
set wrap
set linebreak
set cursorline
highlight cursorline term=bold cterm=bold
highlight cursorlinenr term=bold,underline cterm=bold,underline ctermfg=Red

" cursor
let &t_SI = "\e[5 q"                                                                                                                                          
let &t_EI = "\e[2 q"

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
set noerrorbells
set novisualbell

" search 
set hlsearch
set incsearch    
set ignorecase
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
  elseif a:lang == "perl"
    call setline(1, "#!/usr/bin/perl")
  elseif a:lang == "python"
    call setline(1, "#!/usr/bin/env python")
    call setline(2, "# -*- coding: utf-8 -*-")
  elseif a:lang == "ruby"
    call setline(1, "#!/usr/bin/env ruby")
    call setline(2, "# -*- coding: utf-8 -*-")
  endif
  normal G
  normal o
  normal o
endfunc

" Bash Settings
autocmd bufnewfile *.sh call Header("bash")

" Lua Settings
autocmd bufnewfile *.lua call Header("lua")

" Perl Settings
autocmd bufnewfile *.pl call Header("perl")

" Python Settings
autocmd bufnewfile *.py call Header("python")
autocmd bufnewfile,bufread *.py call SpaceIndent(4)

" Ruby Settings
autocmd bufnewfile *.rb,*.ruby call Header("ruby")
