
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible  " required
filetype off      " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/ListToggle'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/nerdcommenter' "快速注释
Plugin 'scrooloose/nerdtree'      "目录树
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'majutsushi/tagbar'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'

call vundle#end()
filetype plugin indent on  " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 系统设定
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置 <leader> 的值
let mapleader = ","
let g:mapleader = ","

"映射新按键
nnoremap <leader>w   :w<CR>
nnoremap <leader>q!  :q!<CR>
nnoremap <leader>qq  :q<CR>
nnoremap <leader>wq  :wq<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 常规设定 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"剪贴板 
set clipboard=unnamedplus

"带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

"允许插件
filetype plugin on 

"针对不同的文件类型采用不同的缩进格式
filetype indent on 

"语法高亮
syntax on

"设置退出vim后，内容显示在终端屏幕, 用于查看和复制
set t_ti= t_te=

"状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow 
highlight StatusLineNC guifg=Gray guibg=White 

"显示行号
set nu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件设置 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ffs=unix,dos,mac

"代码补全 
set completeopt=longest,menu

"增强模式中的命令行自动完成操作 
set wildmode=longest,list
set wildmenu 

"在状态行上显示光标所在位置的行号和列号 
set ruler 
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%) 

"设置命令行（在状态行下方）的高度为2 
set cmdheight=2 

"回格键增强
set backspace=eol,start,indent

"关闭启动画面 
set shortmess=atI 

"关闭滴滴声 
set noerrorbells 
set novisualbell
set t_vb=

"在被分割的窗口间显示空白，便于阅读 
set fillchars=vert:\ ,stl:\ ,stlnc:\ 

"设置当文件被改动时自动载入
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch     "高亮显示匹配的括号 
set ignorecase    "搜索时忽略大小写 
set incsearch     "在搜索时，输入的词句的逐字符高亮
set hlsearch      "高亮被搜索的句子
set laststatus=2  "总是显示状态行

"状态行显示的内容
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")} 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set formatoptions=tcrqn "自动格式化
set smartindent         "为C程序提供自动缩进
set autoindent          "继承前一行的缩进方式
set cindent             "使用C样式的缩进
set ts=4                "制表符为2空格宽度
set expandtab           "空格代替制表符

"统一缩进为4 
set softtabstop=4
set shiftwidth=4 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 折叠-使用空格键  "{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set foldenable 
"set foldmethod=syntax
"set foldcolumn=0
"setlocal foldlevel=99
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR> 
"}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 窗口切换 "{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map wj  <c-w>j
map wk  <c-w>k
map wh  <c-w>h
map wl  <c-w>l
"}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 导航 "{{{ 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30
nnoremap <silent> <F9> :TagbarToggle<CR>

let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1
let NERDTreeHighlightCursorline=1
nnoremap <silent> <F8> :NERDTreeToggle<CR>
"}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文件查找 "{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> fd     :FufDir<CR>
nnoremap <silent> ff     :FufFile<CR>
nnoremap <silent> fc     :FufCoverageFile!<CR>
nnoremap <silent> fl     :FufLine<CR>
nnoremap <silent> ft     :FufTag<CR>
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|so|bak|swp|png|jpg|jpeg|gif)$|(^|[/\\])\.(git)($|[/\\])|(tmp|log|db/migrate|vendor)|(ycm_extra_conf)|^(tags)$'
let g:fuf_enumeratingLimit = 5000
"}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动补全 "{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list = 1

" Diagnostic
let g:ycm_error_symbol = '!>'
let g:ycm_warning_symbol = '?>'
nnoremap <F10> :YcmForceCompileAndDiagnostics<CR>

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-t>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/vim-snippets/UltiSnips'

" Jump to definition
nnoremap <leader>jd :YcmCompleter GoTo<CR>
"}}}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" F1-F7
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F1> <Esc>			"禁用F1
function! HideNumber()
    if(&relativenumber == &number)
        set relativenumber! number!
    elseif(&number)
        set number!
    else
        set relativenumber!
    endif
    set number?
endfunc
nnoremap <F2> :call HideNumber()<CR>  "行号开关
nnoremap <F3> :set list! list?<CR>    "显示可打印字符开关
nnoremap <F4> :set wrap! wrap?<CR>    "折行开关
set pastetoggle=<F5>  " when in insert mode, press <F5> to go to
                      " paste mode, where you can paste mass data
                      " that won't be autoindented
" disbale paste mode when leaving insert mode
au InsertLeave * set nopaste
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

set undolevels=1000     " How many undos
set undoreload=10000    " number of lines to save for undo
if v:version >= 730
    set undofile        " keep a persistent backup file
    set undodir=/tmp/vimundo/
endif"
nnoremap <F7> :GundoToggle<CR>
"}}}

