
" telescope 
nnoremap <Leader>eu :lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>
nnoremap <Leader>.. :lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_ivy({ winblend = 0 }))<CR>

" trouble.nvim
nnoremap <leader>xx <cmd>TroubleToggle<cr>

" Delete word backwards
nnoremap dw vb"_d

" Select all

"-------------------------------------------------------------------------------
" Tabs
"-------------------------------------------------------------------------------
" Open current directory
nmap te :tabedit 
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

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

"-------------------------------------------------------------------------------
" Plugins
"-------------------------------------------------------------------------------
