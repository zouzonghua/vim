" 通过 [c 和 ]c 在有所变动的区块间跳转。
" hp，显示预览，hunk preview
" hs，暂存代码块，hunk stage
" hu，撤销更改，hunk undo

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nmap <leader>hp <Plug>(GitGutterPreviewHunk)
nmap <leader>hs <Plug>(GitGutterStageHunk)
nmap <leader>hu <Plug>(GitGutterUndoHunk)

