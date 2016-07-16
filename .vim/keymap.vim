" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
" Strip trailing white space (,ss)
noremap <leader>ss :call StripWhitespace()<CR>
" Format xml document (,fx)
noremap <leader>fx :%!xmllint --format --recover - 2>/dev/null<CR>
" Format json document (,fj)
noremap <leader>fj :%!python -m json.tool<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>
" change up and down key behaviour for wrapped lines
nnoremap j gj
nnoremap k gk
" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" remap tab for changing indent
nnoremap <TAB> >>
nnoremap <S-TAB> <<
vnoremap <TAB> >gv
vnoremap <S-TAB> <gv
" disable arrow keys
nnoremap <up>    <nop>
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>
" no idea quite why vnoremap didn't work for visual mode. figure this out at
" some point
noremap <up>    <nop>
noremap <down>  <nop>
noremap <left>  <nop>
noremap <right> <nop>
" allow saving of root files with :w!! when vim opened as user
cmap w!! w !sudo tee % >/dev/null
" unset/clear the "last search pattern" by hitting return
nnoremap <silent> <CR> :noh<CR><CR>
" set F2 to toggle paste mode
set pastetoggle=<F2>
" search for visually selected text
vnoremap // y/<C-R>"<CR>
