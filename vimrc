"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle management
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" N.B. please run command as following before first vim launch
" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github, {format} = {user name} + {repo name}
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'tomasr/molokai'
Bundle 'icymind/NeoSolarized'
"Bundle 'vim-scripts/Tagbar'
Plugin 'majutsushi/tagbar'
Bundle 'fatih/vim-go'
Bundle 'dgryski/vim-godef'
Bundle 'matze/vim-move'
Bundle 'PotHix/Vimpress'
Bundle 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'lervag/vimtex'
"Plugin 'vim-latex/vim-latex'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rust-lang/rust.vim'

" http://www.vim.org/scripts/index.php
" vim-scripts repos, {format} = {plugin name}
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'winmanager'
Bundle 'The-NERD-tree'
Bundle 'bufexplorer.zip'
Bundle 'taglist.vim'
Bundle 'cscope_plus.vim'
Bundle 'YankRing.vim'
Bundle 'c.vim'
"Bundle 'snipMate'
Bundle 'Markdown'
Bundle 'fugitive.vim'
Bundle 'vimwiki'

" non github repos, {format} = {git address}
Bundle 'git://git.wincent.com/command-t.git'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: amix the lucky stiff
"             http://amix.dk - amix@amix.dk
"
" Version: 3.6 - 25/08/10 14:40:30
"
" Blog_post: 
"       http://amix.dk/blog/post/19486#The-ultimate-vim-configuration-vimrc
" Syntax_highlighted:
"       http://amix.dk/vim/vimrc.html
" Raw_version: 
"       http://amix.dk/vim/vimrc.txt
"
" How_to_Install_on_Unix:
"    $ mkdir ~/.vim_runtime
"    $ svn co svn://orangoo.com/vim ~/.vim_runtime
"    $ cat ~/.vim_runtime/install.sh
"    $ sh ~/.vim_runtime/install.sh <system>
"      <sytem> can be `mac`, `linux` or `windows`
"
" How_to_Upgrade:
"    $ svn update ~/.vim_runtime
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Command mode related
"    -> Moving around, tabs and buffers
"    -> Statusline
"    -> Parenthesis/bracket expanding
"    -> General Abbrevs
"    -> Editing mappings
"
"    -> Cope
"    -> Minibuffer plugin
"    -> Omni complete functions
"    -> Python section
"    -> JavaScript section
"
"
" Plugins_Included:
"     > minibufexpl.vim - http://www.vim.org/scripts/script.php?script_id=159
"       Makes it easy to get an overview of buffers:
"           info -> :e ~/.vim_runtime/plugin/minibufexpl.vim
" 
"     > bufexplorer - http://www.vim.org/scripts/script.php?script_id=42
"       Makes it easy to switch between buffers:
"           info -> :help bufExplorer
"
"     > yankring.vim - http://www.vim.org/scripts/script.php?script_id=1234
"       Emacs's killring, useful when using the clipboard:
"           info -> :help yankring
"
"     > surround.vim - http://www.vim.org/scripts/script.php?script_id=1697
"       Makes it easy to work with surrounding text:
"           info -> :help surround
"
"     > snipMate.vim - http://www.vim.org/scripts/script.php?script_id=2540
"       Snippets for many languages (similar to TextMate's):
"           info -> :help snipMate
"
"     > mru.vim - http://www.vim.org/scripts/script.php?script_id=521
"       Plugin to manage Most Recently Used (MRU) files:
"           info -> :e ~/.vim_runtime/plugin/mru.vim
"
"     > Command-T - http://www.vim.org/scripts/script.php?script_id=3025
"       Command-T plug-in provides an extremely fast, intuitive mechanism for opening filesa:
"           info -> :help CommandT
"           screencast and web-help -> http://amix.dk/blog/post/19501
"
"
"  Revisions:
"     > 3.6: Added lots of stuff (colors, Command-T, Vim 7.3 persistent undo etc.)
"     > 3.5: Paste mode is now shown in status line  if you are in paste mode
"     > 3.4: Added mru.vim
"     > 3.3: Added syntax highlighting for Mako mako.vim 
"     > 3.2: Turned on python_highlight_all for better syntax
"            highlighting for Python
"     > 3.1: Added revisions ;) and bufexplorer.vim
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :e! $MYVIMRC<cr>

" Trim space
map <leader>k :%s/\s\+$//g<cr>

" NERDTree toggle
map <leader>nt :NERDTreeToggle<cr>

" Tag list toggle
map <leader>tl :TlistToggle<cr>

" Quickfix close
map <F8> :cclose<cr>

" Quickfix open
map <F7> :copen<cr>

" Quickfix open full window
map <leader>cf :botright cwindow<cr>

" NERDTree open
map <F10> :NERDTree<cr>

" Buffer explorer invoke
map <F12> :BufExplorer<cr>

" When vimrc is edited, reload it
"autocmd! bufwritepost $MYVIMRC source $MYVIMRC

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the curors - when moving vertical..
"set so=7

"set wildmenu "Turn on WiLd menu

"set ruler "Always show current position

"set cmdheight=2 "The commandbar height

"set hid "Change buffer - without saving

set number "Enable number ruler

set nowrapscan "Disable wrapscan

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros 

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Tag list window
let Tlist_Use_Right_Window = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl

" Set font according to system
"set gfn=Monospace\ 10
"set gfn=Consolas\ 13
set gfn=Yahei\ Consolas\ Hybrid\ 10
set shell=/bin/bash
set t_Co=256

if has("gui_running")
  set guioptions-=T
  "set background=light
  set background=dark
  colorscheme solarized
  "colorscheme molokai
  "colorscheme desert
  "colorscheme peaksea
  "set nonu
else
  let g:molokai_original=1
  let g:rehash256=1
  set background=dark
  colorscheme molokai
  "colorscheme zellner
  "colorscheme solarized
  "set nonu
endif

set encoding=utf8
try
    lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Window parameter settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeWinSize=48


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VimWiki, mouse and key words
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use the mouse mapping
let g:vimwiki_use_mouse = 1

" Don't use camel style words as Wiki words
let g:vimwiki_camel_case = 0

let g:vimwiki_list = [{
\ 'path': '~/Documents/vimwiki/my_wiki_site/wiki',
\ 'template_path': '~/Documents/vimwiki/template/',
\ 'template_default': 'default',
\ 'template_ext': '.tpl', 
\ 'path_html': '~/Documents/vimwiki/my_wiki_site/html/',
\ 'auto_export': 1,},
\{
\ 'path': '~/Documents/vimwiki/my_index_site/wiki',
\ 'template_path': '~/Documents/vimwiki/template/',
\ 'template_default': 'myindex',
\ 'template_ext': '.tpl',
\ 'path_html': '~/Documents/vimwiki/my_index_site/html/',
\ 'auto_export': 1,}] 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Golang, Tagbar and syntax settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set Tagbar
let g:tagbar_type_go = [{
    \ 'ctagstype' : 'go',
    \ 'kinds' : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }]

" set mapleader
"let mapleader = ","

" vim-go custom mappings
let g:go_fmt_autosave = 0
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)

" vim-go settings
let g:go_fmt_command = "goimports"

" vim-move settings
let g:move_key_modifier = 'C'

" ignore vim-go 7.4.1689 warning
let g:go_version_warning = 0


" YCM settings
let g:ycm_key_list_select_completion=['<Down>']
let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_key_list_invoke_completion=['<C-Space>']

" UltiSnips settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnapsJumpForwardTrigger="<c-b>"
let g:UltiSnapsJumpBackwardTrigger="<c-z>"

" TeX live preiview
fu! TexLivePreview()
    if filewritable(bufname('%'))
        silent update %
    endif
endfu

au CursorHold,CursorHoldI,BufWritePost *.tex call TexLivePreview()
"let timer = timer_start(500, 'TexLivePreview', {'repeat': -1})
"au BufWinEnter *.tex call StartTexLivePreview()
"au BufWinLeave *.tex call StopTexLivePreview()

" vimtex settings
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=1
set conceallevel=1
let g:tex_conceal='abdmg'

"let g:vimtex_compiler_latexmk = {
"    \ 'options' : [
"    \   '-xelatex',
"    \   '-verbose',
"    \   '-file-line-error',
"    \   '-synctex=1',
"    \   '-interaction=nonstopmode',
"    \ ],
"    \}

" Tagbar settings
nmap <Leader>tb :TagbarToggle<cr>
let g:tagbar_ctags_bin='/usr/bin/ctags'
" 设置tagbar的宽度
let g:tagbar_width=30

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

" 在某些情况下自动打开tagbar
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()

" vim-airline settings
"let g:airline_theme="luna"
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

" 是否打开tabline
let g:airline#extensions#tabline#enabled = 1
" tab number
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2

let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

