" map leader to spacebar
let mapleader = " "

" abbreviations
ab sou source %
ab plu PlugInstall
ab copy %w !pbcopy<CR>

" kepmaps in normal mode
nmap 1 ct

" quick w
map w :w

" quick pane changing "
nmap <C-w> <C-w>w

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" select all
nnoremap <silent> <leader>a ggVG

" Delete word backwards
nnoremap dw vb"_d

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

" Move window
map <leader>h <C-w>h
map <leader>k <C-w>k
map <leader>j <C-w>j
map <C-s>s <C-w>l
