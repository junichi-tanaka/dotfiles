" ~/.vimrc
"
"  @see https://github.com/junegunn/vim-plug
"
"  1. Download plugin to autoload directory
"
"      $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
"  2. Install plugins (in vim)
"
"      :PlugInstall
"

" {{{ vim-plug settings
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'editorconfig/editorconfig-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'leafgarland/typescript-vim'
Plug 'fatih/vim-go'

call plug#end()
" }}}


" モードラインを有効にする
set modeline
" モードラインの検索行数を設定
set modelines=5
" 現在の行を強調表示
set cursorline
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
"set laststatus=2
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4
" インデントはスマートインデント
set smartindent
" Folding with markers
set foldmethod=marker


" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 233
colo seoul256


" highlight trailing whitespace in red
highlight ExtraWhitespace ctermbg=darkred guibg=darkred

