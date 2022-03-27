" plugins {{{

" dein {{{

let s:dein_dir = expand('$XDG_DATA_HOME/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

execute 'set runtimepath+=' . s:dein_repo_dir

call dein#begin(s:dein_dir)

call dein#add(s:dein_repo_dir)

call dein#add('vim-denops/denops.vim')

call dein#add('vim-skk/skkeleton')

call dein#end()

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" }}}

" skkeleton {{{

cmap <C-j> <Plug>(skkeleton-toggle)
imap <C-j> <Plug>(skkeleton-toggle)

function! s:skkeleton_init() abort
  call skkeleton#config({
    \   'eggLikeNewline': v:true,
    \   'globalJisyo': '~/ghq/github.com/skk-dev/dict/SKK-JISYO.L',
    \   'markerHenkan': '-',
    \   'markerHenkanSelect': '+',
    \   'registerConvertResult': v:true,
    \ })
  call skkeleton#register_kanatable('rom', {
    \   "z\<Space>": ["\u3000", ''],
    \   'z-': ['—', ''],
    \   'z/': ['・', ''],
    \
    \   '!': ['！', ''],
    \   '$': ['＄', ''],
    \   '&': ['＆', ''],
    \   '(': ['（', ''],
    \   ')': ['）', ''],
    \   '*': ['＊', ''],
    \   '+': ['＋', ''],
    \   '/': ['／', ''],
    \   '<': ['＜', ''],
    \   '=': ['＝', ''],
    \   '>': ['＞', ''],
    \   '@': ['＠', ''],
    \   '\': ['＼', ''],
    \   '{': ['｛', ''],
    \   '|': ['｜', ''],
    \   '}': ['｝', ''],
    \   '~': ['〜', ''],
    \ })
endfunction

augroup skkeleton-initialize-pre
  autocmd!
  autocmd User skkeleton-initialize-pre call s:skkeleton_init()
augroup END

" }}}

" }}}

lua require('settings')
lua require('keymaps')

" autocmd {{{

augroup no_auto_comment
  autocmd!
  autocmd BufEnter * set formatoptions-=c
  autocmd BufEnter * set formatoptions-=j
  autocmd BufEnter * set formatoptions-=o
augroup END

" }}}
