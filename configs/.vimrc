" Basic Setup
set nu
set ruler

set expandtab " Expands tabs to space
set smarttab
set shiftwidth=4
set tabstop=4

" Add vimfy token
let g:spotify_token='ODk1ODQwMDU1ZGY3NDhiNmE4NjM0OGM3OWY5MzNiODA6NzBiYjU1NzRjZGM5NDM4ZTgzNmQ0NGVmZTRkZWI4MGY='

" vimwiki - Personal Wiki for Vim
" https://github.com/vimwiki/vimwiki
set nocompatible
filetype plugin on
syntax on
" vimwiki with markdown support
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_ext2synatx = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" Vim-instant-markdown - Instant markdown Previews from Vim
" https://github.com/suan/vim-instant-markdown
let g:instant_markdown_autostart = 0 " disable auto start
map <leader> md :InstantmarkdownPreview<CR>

" Add fuzzy finder support
set rtp+=~/.fzf