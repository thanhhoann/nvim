"-------------------------------------------------------------------------------
" Plugins
"-------------------------------------------------------------------------------
" telescope 
nnoremap <Leader>eu :lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>
nnoremap <Leader>.. :lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_ivy({ winblend = 0 }))<CR>
nnoremap <Leader>,, :lua require'telescope.builtin'.file_browser(require('telescope.themes').get_ivy({ winblend = 0 }))<CR>
"  -------------------------------------
"  ---- VSNIP --------------------------
" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" floatern
nnoremap   <silent>   <F1>    :FloatermNew --autoclose=0 g++ % -o %< && ./%<<CR>


" Scroll
map <S-ScrollWheelUp> <C-U>
map <ScrollWheelDown> <C-E>
map <S-ScrollWheelDown> <C-D>

" trouble.nvim
nnoremap <leader>xx <cmd>TroubleToggle<cr>

" Delete word backwards
nnoremap dw vb"_d

" Better movement
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
