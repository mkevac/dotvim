" default .vimrc installed by vim-update-bundles.
" Avoid abbreviations!  Spelling everything out makes grepping easy.

" Load plugins using Pathogen. Don't worry if this bit doesn't make sense.
filetype off
call pathogen#runtime_append_all_bundles()
filetype indent plugin on


" Now you have a working Vim setup.  Customize everything from here on.

" set some directives...
syntax on
set nocompatible
" set incsearch         " find the next match as we type the search
" set hlsearch          " hilight searches by default
" etc.  http://github.com/bronson/vimsy/blob/master/vimrc is one example
"
set t_Co=256
set nocompatible

set expandtab
set smarttab

set showmatch
set visualbell t_vb= " turn off error beep/flash
set ruler " Show the cursor position all the time

set hlsearch
set incsearch
set ignorecase

set termencoding=utf8
set fileencodings=utf8,cp1251
set encoding=utf8

set wildmenu

" Show line number
set number
set numberwidth=4

" Set magic on
set magic

" Always show the statusline
set laststatus=2

set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.DS_Store,*.db
set statusline=%F%m%r%h%w\ [%Y\ %{&ff}\ %{&encoding}]\ [%l/%L\ (%p%%)\ %c]

set nobackup
set nowritebackup
set noswapfile

" Wrap lines
set wrap

" Remove indenting on empty lines
map <F2> :%s/\s*$//g<cr>:noh<cr>''

" Paste toggle - when pasting something in, don't indent.
set pastetoggle=<F3>

map <F4> :TlistToggle<cr>
map <F5> :NERDTreeToggle<cr>

set cursorline
set cursorcolumn
hi cursorline guibg=#333333 
hi cursorcolumn guibg=#333333

" Omni menu colors
hi Pmenu guibg=#333333
hi PmenuSel guibg=#555555 guifg=#ffffff

set backspace=indent,eol,start

set foldcolumn=5
set foldmethod=syntax

if has("autocmd")
    filetype on

    au FileType helpfile set nonumber      " no line numbers when viewing help
    au FileType helpfile nnoremap <buffer><cr> <c-]>   " Enter selects subject
    au FileType helpfile nnoremap <buffer><bs> <c-T>   " Backspace to go back

    au FileType cpp,c setlocal sw=4 ts=4 sts=4 autoindent smartindent cindent cino=:0(0 textwidth=79
    au FileType python setlocal sw=4 ts=4 sts=4 textwidth=79 foldmethod=indent

    au BufRead *.py setlocal makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
    au BufRead *.py setlocal efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

    au BufNewFile,BufRead modprobe.conf setlocal syntax=modconf

    au FileType python setlocal omnifunc=pythoncomplete#Complete
    au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    au FileType html setlocal omnifunc=htmlcomplete#CompleteTags
    au FileType css setlocal omnifunc=csscomplete#CompleteCSS
    au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    au FileType php setlocal omnifunc=phpcomplete#CompletePHP
    au FileType c setlocal omnifunc=ccomplete#Complete

    " highlight lines with width more than textwidth
    au BufNewFile,BufRead *.c exec 'match Todo /\%>' . &textwidth . 'v.\+/'

    " highlight trailing spaces
    au BufNewFile,BufRead * let b:mtrailingws=matchadd('ErrorMsg', '\s\+$', -1)

    " highlight tabs between spaces
    au BufNewFile,BufRead * let b:mtabbeforesp=matchadd('ErrorMsg', '\v(\t+)\ze( +)', -1)
    au BufNewFile,BufRead * let b:mtabaftersp=matchadd('ErrorMsg', '\v( +)\zs(\t+)', -1)

    " Vala support
    au BufRead *.vala setlocal efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
    au BufRead *.vapi setlocal efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
    au BufRead,BufNewFile *.vala setfiletype vala
    au BufRead,BufNewFile *.vapi setfiletype vala
endif

if has("gui_running")
    " See ~/.gvimrc
    set guifont=Monaco\ 8 " use this font
    set lines=50          " height = 50 lines
    set columns=120       " width = 100 columns
    set background=dark   " adapt colors for background
    set guioptions-=T
    colorscheme wombat 
else
    colorscheme wombat
    set background=dark   " adapt colors for background
endif

set grepprg=grep\ -nH\ $*

" NERD_tree config
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\.bak$', '\~$']
let NERDTreeShowBookmarks=1

" TagList Plugin Configuration
"let Tlist_Ctags_Cmd='/opt/local/bin/ctags' " point taglist to ctags
let Tlist_GainFocus_On_ToggleOpen = 1      " Focus on the taglist when its toggled
"let Tlist_Close_On_Select = 1              " Close when something's selected
"let Tlist_Use_Right_Window = 1             " Project uses the left window
let Tlist_File_Fold_Auto_Close = 1         " Close folds for inactive files

" BufExplorer
nmap <C-F5> <Esc>:BufExplorer<cr>
vmap <C-F5> <esc>:BufExplorer<cr>
imap <C-F5> <esc>:BufExplorer<cr>

" F6 - предыдущий буфер
nmap <C-F6> :bp<cr>
vmap <C-F6> <esc>:bp<cr>i
imap <C-F6> <esc>:bp<cr>i

" F7 - следующий буфер
nmap <C-F7> :bn<cr>
vmap <C-F7> <esc>:bn<cr>i
imap <C-F7> <esc>:bn<cr>i

imap <c-space> <c-x><c-o>

menu Encoding.&koi8-r :e ++enc=koi8-r<CR>
menu Encoding.&windows-1251 :e ++enc=cp1251<CR>
menu Encoding.&cp866 :e ++enc=cp866<CR>
menu Encoding.&utf-8 :e ++enc=utf8 <CR>

" Remove any text (like the '#') before BUNDLE to enable a plugin.
"
" Bundle: git://github.com/vim-scripts/Wombat.git

" Generally Useful:
" Bundle: git://github.com/scrooloose/nerdtree.git
" # Bundle: git://github.com/vim-scripts/bufexplorer.zip.git
" # Bundle: git://github.com/bronson/vim-closebuffer.git
" # Bundle: git://github.com/vim-scripts/IndexedSearch.git
" # Bundle: git://github.com/bronson/vim-trailing-whitespace.git
" # Bundle: git://github.com/Raimondi/YAIFA.git
" # Bundle: git://github.com/tpope/vim-vividchalk.git
"
" # BUNDLE: git://git.wincent.com/command-t.git
" #   If rvm is installed, make sure we compile command-t with the system ruby
" #   BUNDLE-COMMAND: if which rvm >/dev/null 2>&1; then rvm system exec rake make; else rake make; fi

" Programming:
" Bundle: git://github.com/scrooloose/nerdcommenter.git
" # Bundle: git://github.com/tpope/vim-surround.git
" # Bundle: git://github.com/vim-scripts/taglist.vim
" # Bundle: git://github.com/msanders/snipmate.vim.git
" # Bundle: git://github.com/scrooloose/snipmate-snippets.git
" # Bundle: git://github.com/vim-scripts/Align.git
" # Bundle: git://github.com/tpope/vim-endwise.git
" # Bundle: git://github.com/tpope/vim-repeat.git
" # Bundle: git://github.com/tpope/vim-fugitive.git
" # Bundle: git://github.com/ervandew/supertab.git
" # Bundle: git://github.com/vim-scripts/jQuery.git
" # Bundle: git://github.com/tpope/vim-git.git
" # Bundle: git://github.com/tpope/vim-markdown.git
" # Bundle: git://github.com/timcharper/textile.vim.git
" # Bundle: git://github.com/kchmck/vim-coffee-script.git

" Ruby/Rails Programming:
" # Bundle: git://github.com/vim-ruby/vim-ruby.git
" # Bundle: git://github.com/tpope/vim-rails.git
" # Bundle: git://github.com/tpope/vim-rake.git
" # Bundle: git://github.com/janx/vim-rubytest.git
" # Bundle: git://github.com/tsaleh/vim-shoulda.git
" # Bundle: git://github.com/tpope/vim-cucumber.git
" # Bundle: git://github.com/tpope/vim-haml.git
" # Bundle: git://github.com/astashov/vim-ruby-debugger.git

