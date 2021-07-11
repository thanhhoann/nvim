" map leader to spacebar
let mapleader = " "

" lsp saga
nnoremap <silent> gh :Lspsaga lsp_finder<CR>
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
nnoremap <silent>K :Lspsaga hover_doc<CR>
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>
nnoremap <silent> gs :Lspsaga signature_help<CR>
nnoremap <silent>gr :Lspsaga rename<CR>
nnoremap <silent> gd :Lspsaga preview_definition<CR>
nnoremap <silent> <leader>cd :Lspsaga show_line_diagnostics<CR>
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>


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

" for faster copy
nmap <leader><C-p> :%w !pbcopy<CR>

" buffers navigation
nnoremap <Leader>1 :lua require("nvim-smartbufs").goto_buffer(1)<CR>
nnoremap <Leader>2 :lua require("nvim-smartbufs").goto_buffer(2)<CR>
nnoremap <Leader>3 :lua require("nvim-smartbufs").goto_buffer(3)<CR>
nnoremap <Leader>4 :lua require("nvim-smartbufs").goto_buffer(4)<CR>
nnoremap <Leader>5 :lua require("nvim-smartbufs").goto_buffer(5)<CR>
nnoremap <Leader>6 :lua require("nvim-smartbufs").goto_buffer(6)<CR>
nnoremap <Leader>7 :lua require("nvim-smartbufs").goto_buffer(7)<CR>
nnoremap <Leader>8 :lua require("nvim-smartbufs").goto_buffer(8)<CR>
nnoremap <Leader>9 :lua require("nvim-smartbufs").goto_buffer(9)<CR>

" Delete the N buffer according to :ls buffer list
nnoremap <Leader>q1 :lua require("nvim-smartbufs").close_buffer(1)<CR>
nnoremap <Leader>q2 :lua require("nvim-smartbufs").close_buffer(2)<CR>
nnoremap <Leader>q3 :lua require("nvim-smartbufs").close_buffer(3)<CR>
nnoremap <Leader>q4 :lua require("nvim-smartbufs").close_buffer(4)<CR>
nnoremap <Leader>q5 :lua require("nvim-smartbufs").close_buffer(5)<CR>
nnoremap <Leader>q6 :lua require("nvim-smartbufs").close_buffer(6)<CR>
nnoremap <Leader>q7 :lua require("nvim-smartbufs").close_buffer(7)<CR>
nnoremap <Leader>q8 :lua require("nvim-smartbufs").close_buffer(8)<CR>
nnoremap <Leader>q9 :lua require("nvim-smartbufs").close_buffer(9)<CR>

" Delete current buffer and goes back to the previous one
nnoremap <Leader>qq :lua require("nvim-smartbufs").close_current_buffer()<CR>

" telescope 
nnoremap <silent> <Leader>' :lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>
nnoremap <silent> <Leader>, :lua require'telescope.builtin'.live_grep(require('telescope.themes').get_ivy({ winblend = 0 }))<CR>
nnoremap <silent> <Leader>. :lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_ivy({ winblend = 0 }))<CR>
nnoremap <silent> <Leader>p :lua require'telescope.builtin'.file_browser(require('telescope.themes').get_ivy({ winblend = 0 }))<CR>

" floatern
nnoremap   <silent> <F1>  :w <bar> :FloatermNew --wintype=vsplit --width=0.4 --autoclose=0  node %<CR>
nnoremap   <silent> <F2>  :w <bar> :FloatermNew --wintype=vsplit --width=0.4 --autoclose=0  g++ % -o %< && ./%<<CR>
nnoremap   <silent> <Leader>th :FloatermNew --autoclose=0 --width=0.9 --height=0.9<CR>

" prettier format
nmap <silent> <leader><C-s> :CocCommand prettier.formatFile<CR>

" Nvim tree toggle
nmap <silent> <leader>e :NvimTreeToggle<CR>

" scrolling

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
nmap e          <Plug>WordMotion_w
nmap b          <Plug>WordMotion_b

" trouble.nvim
nnoremap <leader>xx <cmd>TroubleToggle<cr>

" TS text object
omap     <silent> m :<C-U>lua require('tsht').nodes()<CR>
vnoremap <silent> m :lua require('tsht').nodes()<CR>

" select all
nnoremap <silent> <C-a> ggVG

" Delete word backwards
nnoremap dw vb"_d


"-------------------------------------------------------------------------------
" Tabs
"-------------------------------------------------------------------------------
nmap <S-Tab> :tabprev<Return>

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
