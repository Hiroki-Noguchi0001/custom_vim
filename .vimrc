"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系------------------------------------------------

" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" 括弧入力時の対応する括弧を表示
set showmatch

" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable

" コマンドラインの補完
set wildmode=list:longest
"



" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"新機能系
"新しい行にしたとき今と同じ行にする
set autoindent
"ヤンクがクリックボードに保持される
set clipboard=unnamedplus
" 入力モード中に素早くjjと入力する場合ESCとみなす
inoremap jj <Esc>

""vim-pulg系

call plug#begin('~/.vim/plugged')
""vim-airline のインストール
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

"vim-airline 設定-----------------

" ステータスラインを常に表示
set laststatus=2
"airline でタブを有効にする
let g:airline#extensions#tabline#enabled = 1
"airline タブ切り替え(ctrl + pで左　ctrl + n で右移動)
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab
"airline テーマ色
let g:airline_theme = 'ouo'

"カラースキーム
colorscheme molokai
