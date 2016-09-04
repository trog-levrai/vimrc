set nocompatible
filetype off "Required by vundle

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'SuperTab'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'mhinz/vim-signify'
Plugin 'sickill/vim-pasta'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'

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

match ErrorMsg '\s\+$'
2match ErrorMsg 'for(\|if(\|while(\|sizeof(\|switch('
set colorcolumn=80
set number
set relativenumber
syntax on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set expandtab
set smartindent
set softtabstop=2
set shiftwidth=2
set mouse=a
map <C-c> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg=' . a:bg .' ctermfg=' . a:fg . ' guibg=' . a:guibg .' guifg=' . a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension . '$#'
endfunction

call NERDTreeHighlightFile('cc', 'blue', 'none', 'none', 'none')
call NERDTreeHighlightFile('hh', 'white', 'none', 'none', 'none')
call NERDTreeHighlightFile('hxx', 'cyan', 'none', 'none', 'none')
call NERDTreeHighlightFile('py', 'yellow', 'none', 'none', 'none')
call NERDTreeHighlightFile('Makefile', 'green', 'none', 'none', 'none')
