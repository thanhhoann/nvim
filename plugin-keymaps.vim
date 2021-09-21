
nmap <Leader>r <Plug>RestNvim 

" Hop.nvim"
" nmap <C-w> <cmd>HopWord<cr>
nmap <C-l> <cmd>HopLine<cr>

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" telescope 
nnoremap <silent> <Leader>' :lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>
nnoremap <silent> <Leader>, :lua require'telescope.builtin'.live_grep(require('telescope.themes').get_ivy({ winblend = 0 }))<CR>
nnoremap <silent> <Leader>. :lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({ winblend = 0 }))<CR>
nnoremap <silent> <Leader>p :lua require('telescope.builtin').oldfiles({layout_strategy='vertical',layout_config={width=0.5}})<CR>

" Floaterm
" Javascript
nnoremap   <silent> <F1>  :w <bar> :FloatermNew --wintype=vsplit --width=0.4 --autoclose=0  node %<CR> 
" TypeScript
nnoremap   <silent> <F2>  :w <bar> :FloatermNew --wintype=vsplit --width=0.4 --autoclose=0  java %<CR>
" Java
nnoremap   <silent> <F3>  :w <bar> :FloatermNew --wintype=vsplit --width=0.4 --autoclose=0  deno run %<CR>
nnoremap   <silent> <Leader>n :FloatermNew --autoclose=0 --width=0.99 --height=0.99<CR>

" prettier format
nmap <leader><leader> :CocCommand prettier.formatFile<CR>

" Java format
nmap <leader>j :Format<CR>

" Nvim tree toggle
nnoremap <silent><leader>e <cmd>CHADopen<cr>

" word motion
let g:wordmotion_nomap = 1
nmap e          <Plug>WordMotion_w
nmap b          <Plug>WordMotion_b

" trouble.nvim
nnoremap <leader>xx <cmd>TroubleToggle<cr>


" TELESCOPE"
highlight TelescopeSelection      guifg=#D79921 gui=bold " Selected item
highlight TelescopeSelectionCaret guifg=#50fa7b          " Selection caret
highlight TelescopeMultiSelection guifg=#928374          " Multisections
highlight TelescopeNormal         guibg=#ffb86c           " Floating windows created by telescope

" Border highlight groups
highlight TelescopeBorder         guifg=#ffb86c
highlight TelescopePromptBorder   guifg=#50fa7b
highlight TelescopeResultsBorder  guifg=#50fa7b
highlight TelescopePreviewBorder  guifg=#50fa7b

" Highlight characters your input matches
highlight TelescopeMatching       guifg=#ffb86c

" Color the prompt prefix
highlight TelescopePromptPrefix   guifg=#50fa7b
