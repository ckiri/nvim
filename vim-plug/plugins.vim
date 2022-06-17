" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Colorscheme
    Plug 'morhetz/gruvbox'
    " Colors
    Plug 'chrisbra/Colorizer'
    " Statusline
    Plug 'itchyny/lightline.vim'
    " Completion Service
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Wrapper for GDB
    Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }

call plug#end()
