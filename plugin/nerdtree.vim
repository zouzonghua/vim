nnoremap <C-e> :NERDTreeToggle<CR>

" 显示极简模式
let NERDTreeMinimalUI=1

" 打开时显示书签
let NERDTreeShowBookmarks=1

" 删除文件时删除 buffers
let NERDTreeAutoDeleteBuffer = 1

" Start NERDTree. If a file is specified, move the cursor to its window.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
