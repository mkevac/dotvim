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


" Remove any text (like the '#') before BUNDLE to enable a plugin.

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

