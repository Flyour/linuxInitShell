" 不与vi兼容，采用vim自己的命令
set nocompatible

" 显示行号
set number

" 语法高亮 
set syntax=on

" Tab键的宽度为4
set tabstop=4

" 统一缩进为4
set softtabstop=4
    
" 用空格表示缩进
set expandtab

" 自动缩进
set autoindent

" 代码补全
set completeopt=preview,menu

" 去掉输入错误的提示声音
set noeb

" 不需要备份
set nobackup

" 命令模式下，在底部显示，当前键入的指令
set showcmd

" 自动折行，即太长的行分成几行显示
set wrap

" 指定折行处与编辑窗口的右边缘之间空出的字符数
set wrapmargin=2

" 出错时，不发出响声
set noerrorbells

" 禁止生成临时文件
" set noswapfile
