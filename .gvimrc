" set default window size
set lines=56
set columns=100
"
" GVIM for Windows options
"
if has("gui_win32")
    " set default font used for GUI Vim
    set guifont=Sauce\ Code\ Powerline:h10
    " hide menu bar
    set guioptions-=m
    " hide tool bar
    set guioptions-=T
endif

"
" MacVIM options
"
if has("gui_macvim")
    " set default font used for GUI Vim
    set guifont=Sauce\ Code\ Powerline:h11
endif

" Options for all GUI VIM
"
" disable scroll bars
set guioptions-=r
set guioptions-=b
set guioptions-=l
set guioptions-=L

" Ctrl+TAB for next tab
noremap <C-Tab> :tabnext<CR>
" Ctrl-Shift-Tab for previous tab
noremap <C-S-Tab> :tabprev<CR>
