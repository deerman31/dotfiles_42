"行番号を表示
set number
"右下にどの場所にいるかなどの情報を表示
set ruler

"改行時に現在の行のインデントをキープする。
set autoindent
"tabを4文字分"
set tabstop=4

"syntaxの色付け
syntax enable

"カーソル行をハイライト
set cursorline
"カーソル列をハイライト
set hlsearch

"jkでINSERTモードから、NORMALモードに移行
inoremap jk <ESC>

"改行は↲、tabは→space、余分なspaceは_
set listchars=eol:↲,tab:→\ ,trail:_
"非表示文字を表示する
set list

call plug#begin('~/.vim/plugged')
call plug#end()
