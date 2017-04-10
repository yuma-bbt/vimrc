set nocompatible
set number
set laststatus=2
filetype off

set encoding=utf-8



if &compatible
	  set nocompatible
  endif
  set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

  call dein#begin(expand('~/.vim/dein'))

  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})
  call dein#add('tomasr/molokai')

  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/neosnippet')
  call dein#add('scrooloose/nerdtree')




filetype plugin indent on
 
"taglist
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1


"-------------------------------------------------
""" neocomplcache設定
"-------------------------------------------------
"""辞書ファイル
""autocmd BufRead *.php\|*.ctp\|*.tpl :set dictionary=~/.vim/dict/php.dict filetype=php
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'


inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
"""""""""""""""""inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>

"""""function! s:my_cr_function()
"""""  return neocomplcache#smart_close_popup() . "\<CR>"
"""""endfunction

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()



"" neocomplcache
          inoremap <expr><C-e>  neocomplcache#cancel_popup()




"-------------------------------------------------
""" neosnippet設定
"""-------------------------------------------------
"""" Plugin key-mappings.
""""imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"""smap <C-k>     <Plug>(neosnippet_expand_or_jump)
""xmap <C-k>     <Plug>(neosnippet_expand_target)
""
""" SuperTab like snippets behavior.
""imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
""\ "\<Plug>(neosnippet_expand_or_jump)"
""\: pumvisible() ? "\<C-n>" : "\<TAB>"
""smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
""\ "\<Plug>(neosnippet_expand_or_jump)"
""\: "\<TAB>"
""
""" For snippet_complete marker.
""if has('conceal')
""  set conceallevel=2 concealcursor=i
""endif
""
""
""
" 移動
imap <C-a>  <Home>
imap <C-e>  <End>
imap <C-b>  <Left>
imap <C-f>  <Right>
imap <C-n>  <Down>
imap <C-p>  <UP>
imap <C-h>  <BS>

nmap j gj
nmap k gk


"imap <ESC>< <ESC>ggi
"imap <ESC>> <ESC>Gi

syntax on 
colorscheme molokai
set backspace=2 
nnoremap <silent><C-e> :NERDTreeToggle<CR>



set fileencoding=utf-8


set noswapfile
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp
au BufRead,BufNewFile *.md set filetype=markdown
 let g:vim_markdown_folding_disabled=1

map <C-\> :set paste<CR> 
map <C-^> :set nopaste<CR> 
nnoremap <silent> <C-@> :PrevimOpen<CR> " Ctrl-pでプレビュー
