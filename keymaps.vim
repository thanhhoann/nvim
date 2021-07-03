let mapleader = " "

" telescope 
nnoremap <Leader>' :lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>
nnoremap <Leader>, :lua require'telescope.builtin'.live_grep(require('telescope.themes').get_ivy({ winblend = 0 }))<CR>
nnoremap <Leader>. :lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_ivy({ winblend = 0 }))<CR>
nnoremap <Leader>p :lua require'telescope.builtin'.file_browser(require('telescope.themes').get_ivy({ winblend = 0 }))<CR>
"  -------------------------------------
"  ---- VSNIP --------------------------

" floatern
nnoremap   <F1>  :w <bar> :FloatermNew --wintype=vsplit --width=0.4 --autoclose=0  node %<CR>
nnoremap   <F2>  :w <bar> :FloatermNew --wintype=vsplit --width=0.4 --autoclose=0  g++ % -o %< && ./%<<CR>
nnoremap   <Leader>th :FloatermNew --autoclose=0 --width=0.9 --height=0.9<CR>

" prettier format
command! -nargs=0  Prettier :CocCommand prettier.formatFile

nmap <silent> <leader>e :NvimTreeToggle<CR>

nmap <leader><C-s> :source %<CR>

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

" word motion
let g:wordmotion_nomap = 1
nmap w          <Plug>WordMotion_w
nmap b          <Plug>WordMotion_b
nmap gE         <Plug>WordMotion_gE
omap aW         <Plug>WordMotion_aW
cmap <C-R><C-W> <Plug>WordMotion_<C-R><C-W>

" trouble.nvim
nnoremap <leader>xx <cmd>TroubleToggle<cr>

" TS text object
omap     <silent> m :<C-U>lua require('tsht').nodes()<CR>
vnoremap <silent> m :lua require('tsht').nodes()<CR>

" select all
nnoremap <silent> <C-a> ggVG


" Delete word backwards
nnoremap dw vb"_d

" Better movement
nnoremap <silent> <C-j> :normal 5j<CR>
nnoremap <silent> <C-k> :normal 5k<CR>
nnoremap <silent> <C-h> :normal 5h<CR>
nnoremap <silent> <C-l> :normal 5l<CR>
"-------------------------------------------------------------------------------
" Tabs
"-------------------------------------------------------------------------------
nmap te :tabedit<CR>
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>
"-------------------------------------------------------------------------------
" Buffers
"-------------------------------------------------------------------------------
nnoremap <Leader>tt :bnext<CR> 
nnoremap <Leader>dd :bd<CR>
"-------------------------------------------------------------------------------
" Windows
"-------------------------------------------------------------------------------
" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-
" Move window
map <leader>h <C-w>h
map <leader>k <C-w>k
map <leader>j <C-w>j
map <leader>s <C-w>l
