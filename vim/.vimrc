set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" auto complete plugin
Plugin 'Valloric/YouCompleteMe'

" nerd tree plugin for directory navigation
Plugin 'scrooloose/nerdtree'

" command-t plugin for fuzzy finding of files
Plugin 'wincent/command-t'

" nerd commenter plugin for toggle comment function
Plugin 'scrooloose/nerdcommenter'

" vim-surround plugin to allow quick modification of parenthesis and quotes
Plugin 'tpope/vim-surround'

" vim-repeat plugin allow repetition of plugin provided functions with .
Plugin 'tpope/vim-repeat'

" vim-fugitive plugin to handle git version control
Plugin 'tpope/vim-fugitive'

" YankRing plugin to maintain history of yanks
Plugin 'vim-scripts/YankRing.vim'
let g:yankring_history_dir = '/tmp/yankring'

" RainbowParenthesis plugin to highlight matching parenthesis
Plugin 'vim-scripts/Rainbow-Parenthesis'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

syntax on
set encoding=utf-8
set spell spelllang=en_us,it
vnoremap . :norm.<cr>

" change split screen default movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" set natural position for splits
set splitbelow
set splitright

" visual improvements
set number
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" resize current split by +/- 5 
nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> ù :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> à :exe "vertical resize " . (winheight(0) * 2/3)<CR>

