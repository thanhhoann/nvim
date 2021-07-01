"-------------------------------------------------------------------------------
" Plugins
"-------------------------------------------------------------------------------
" telescope 
nnoremap <Leader>eu :lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>
nnoremap <Leader>.. :lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_ivy({ winblend = 0 }))<CR>
nnoremap <Leader>,, :lua require'telescope.builtin'.file_browser(require('telescope.themes').get_ivy({ winblend = 0 }))<CR>
"  -------------------------------------
"  ---- VSNIP --------------------------

" floatern
nnoremap   <F1>  :w <bar> :FloatermNew --wintype=vsplit --width=0.4 --autoclose=0  node %<CR>
nnoremap   <Leader>cpp   :FloatermNew --wintype=vsplit --width=0.4 --autoclose=0  g++ % -o %< && ./%<<CR>
nnoremap   <Leader>js   :FloatermNew --wintype=vsplit --width=0.4 --autoclose=0 node  % -o %< <<CR>
nnoremap   <Leader>th :FloatermNew --autoclose=0 --width=0.9 --height=0.9<CR>

" prettier format
command! -nargs=0  Prettier :CocCommand prettier.formatFile

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
nnoremap <Leader>h :bnext<CR> 
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
