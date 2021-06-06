"--------------
" key mapping
"--------------
" disable arrow keys
noremap <UP> <NOP>
noremap <DOWN> <NOP>
noremap <LEFT> <NOP>
noremap <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>

" previous and next buffer
noremap [b :bp<Enter>
noremap ]b :bn<Enter>

imap jj <Esc>

" 切换代码缩进
vmap <S-Tab> <
vmap <Tab> >
nmap <S-Tab> <<
nmap <Tab> >>

" 切换 tab 分页
nmap <S-j> gT
nmap <S-k> gt

" 切换 buffers
nnoremap <C-j> :bNext<CR>
nnoremap <C-k> :bnext<CR>

" 关闭 buffers
nnoremap <A-w> :bw<CR>

noremap <space> :
