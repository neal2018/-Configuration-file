autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 关闭兼容模式
set nocompatible
"
set nu " 设置行号
set cursorline "突出显示当前行
" set cursorcolumn " 突出显示当前列
set showmatch " 显示括号匹配
"
" tab 缩进
set tabstop=4 " 设置Tab长度为4空格
set shiftwidth=4 " 设置自动缩进长度为4空格
set autoindent " 继承前一行的缩进方式，适用于多行注释
"
" " 定义快捷键的前缀，即<Leader>
let mapleader=";" 
"
" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板
vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p
"
" 开启实时搜索
set incsearch
" 搜索时大小写不敏感
set ignorecase
syntax enable
syntax on                    " 开启文件类型侦测
filetype plugin indent on    " 启用自动补全
call plug#begin('~/.vim/plugged')
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-scripts/SuperTab'
Plug 'Shougo/neocomplete.vim'
" Plug 'rakr/vim-one'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/vim-easy-align'
call plug#end()
" 开启24bit的颜色，开启这个颜色会更漂亮一些
" set termguicolors
" 配色方案, 可以从上面插件安装中的选择一个使用 
colorscheme desert " 主题
set background=dark " 主题背景 dark-深色; light-浅色

" NERDtree
map <F10> :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
" 打开文件时是否显示目录
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=0
" 设置宽度
let NERDTreeWinSize=20
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 打开 vim 文件及显示书签列表
let NERDTreeShowBookmarks=2
"
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1

