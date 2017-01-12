set nocompatible
filetype off "Required by vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'valloric/youcompleteme'
Plugin 'SuperTab'
Plugin 'scrooloose/syntastic'
Plugin 'leafgarland/typescript-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'mhinz/vim-signify'
Plugin 'sickill/vim-pasta'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Raimondi/delimitMate'
Plugin 'trevordmiller/nova-vim'
Plugin 'jnwhiteh/vim-golang'
Plugin 'kien/ctrlp.vim'

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'L9'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

call vundle#end()
filetype plugin indent on

set enc=utf-8
set fileencoding=utf-8
set laststatus=2
let g:syntastic_cpp_compiler_options='-std=c++14 -Weffc++ -fopenmp'
let g:typescript_compiler_binary = 'npm'
let g:typescript_compiler_options = 'run server'

match ErrorMsg '\s\+$'
2match ErrorMsg 'for(\|if(\|while(\|sizeof(\|switch('
set colorcolumn=80
set cursorcolumn
set cursorline
set number
set relativenumber
syntax on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
"colorscheme nova
set expandtab
set smartindent
set softtabstop=4
set shiftwidth=4
set mouse=a
set backspace=indent,eol,start
map <C-c> :NERDTreeToggle<CR>
map <C-p> :CtrlP ./<CR>
map <F7> :tabp<CR>
map <F8> :tabn<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg=' . a:bg .' ctermfg=' . a:fg . ' guibg=' . a:guibg .' guifg=' . a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension . '$#'
endfunction

"call NERDTreeHighlightFile('cc', 'blue', 'none', 'none', 'none')
"call NERDTreeHighlightFile('hh', 'white', 'none', 'none', 'none')
"call NERDTreeHighlightFile('hxx', 'cyan', 'none', 'none', 'none')
"call NERDTreeHighlightFile('py', 'yellow', 'none', 'none', 'none')
"call NERDTreeHighlightFile('Makefile', 'green', 'none', 'none', 'none')
