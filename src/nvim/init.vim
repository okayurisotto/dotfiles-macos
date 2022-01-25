" plugins {{{

" dein {{{

let s:dein_dir = expand('$XDG_DATA_HOME/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

execute 'set runtimepath+=' . s:dein_repo_dir

call dein#begin(s:dein_dir)

call dein#add(s:dein_repo_dir)

call dein#add('itchyny/lightline.vim')

call dein#add('vim-denops/denops.vim')

call dein#add('Shougo/ddc.vim')
call dein#add('Shougo/ddc-around')
call dein#add('tani/ddc-fuzzy')

call dein#add('vim-skk/skkeleton')

call dein#end()

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" }}}

" ddc + skkeleton {{{

call ddc#custom#patch_global('sources', ['around'])
call ddc#custom#patch_global('sourceOptions', {
  \   '_': {
  \     'converters': ['converter_fuzzy'],
  \     'matchers': ['matcher_fuzzy'],
  \     'sorters': ['sorter_fuzzy'],
  \   },
  \   'around': {
  \     'mark': 'around',
  \   },
  \ })

call skkeleton#config({
  \   'eggLikeNewline': v:true,
  \   'globalJisyo': '~/ghq/github.com/skk-dev/dict/SKK-JISYO.L',
  \   'markerHenkan': '-',
  \   'markerHenkanSelect': '+',
  \   'registerConvertResult': v:true,
  \ })

cmap <C-j> <Plug>(skkeleton-enable)
imap <C-j> <Plug>(skkeleton-enable)

call ddc#custom#patch_global('sources', ['skkeleton'])
call ddc#custom#patch_global('sourceOptions', {
  \   'skkeleton': {
  \     'mark': 'skkeleton',
  \     'matchers': ['skkeleton'],
  \     'sorters': [],
  \     'minAutoCompleteLength': 2,
  \   },
  \ })

call ddc#enable()

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
