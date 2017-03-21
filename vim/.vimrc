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

" fuzzy file finder
Plugin 'ctrlpvim/ctrlp.vim'
" set ctrl-p working dir
let g:ctrlp_working_path_mode = 'ra'
" remap to ctrl-p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" ignore file and dirs
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" nerd commenter plugin for toggle comment function
Plugin 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" vim-surround plugin to allow quick modification of parenthesis and quotes
Plugin 'tpope/vim-surround'

" vim-repeat plugin allow repetition of plugin provided functions with .
Plugin 'tpope/vim-repeat'

" vim-fugitive plugin to handle git version control
Plugin 'tpope/vim-fugitive'

" auto generate ctags on save
Plugin 'craigemery/vim-autotag'
let g:autotagTagsFile="tags"

" GDB debugger front end
Plugin 'vim-scripts/Conque-GDB'

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

" avoiding escape
:imap jk <Esc>
:imap ii <Esc>

" source the regex file
source ~/.regexlist.vim

