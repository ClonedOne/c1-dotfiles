    set nocompatible              " be iMproved, required
    filetype off                  " required

    " set mouse mode
    set mouse=a
    if has("mouse_sgr")
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    end

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " auto complete plugin
    Plugin 'Valloric/YouCompleteMe'

    " nerd tree plugin for directory navigation
    Plugin 'scrooloose/nerdtree'
    map <C-n> :NERDTreeToggle<CR>

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

    " vim-go plugin for go language support
    Plugin 'fatih/vim-go'

    " plugin for LaTex support
    Plugin 'lervag/vimtex'
    " use Zathura for visualization
    let g:vimtex_view_method = 'zathura'
    let g:latex_view_general_viewer = 'zathura'
    let g:tex_flavor = 'latex'

    " vim-fugitive plugin to handle git version control
    Plugin 'tpope/vim-fugitive'

    " plugins for tag files management
    Plugin 'ludovicchabant/vim-gutentags'

    " tag bar for code navigation
    Plugin 'majutsushi/tagbar'
    nmap <F8> :TagbarToggle<CR>

    " GDB debugger front end
    Plugin 'vim-scripts/Conque-GDB'

    " vim Airline
    Plugin 'vim-airline/vim-airline'

    " colooaaarrzzzzz
    Plugin 'joshdick/onedark.vim'

    " allow access to virtualenv packages
    Plugin 'jmcantrell/vim-virtualenv'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Non-Plugin stuff after this line
syntax on
set encoding=utf-8
autocmd FileType latex,tex,md,markdown setlocal spell
vnoremap . :norm.<cr>

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif

" colooooooorz
colorscheme onedark
let g:airline_theme='onedark'

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" tab management
filetype plugin indent on
" On pressing tab, insert 4 spaces
set expandtab

" code folding management
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2


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

" prettify json 
command! FormatJSON %!python -m json.tool

" generic stuff
set hidden        " buffer file instead of closing them

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" Move across single lines vertically
nnoremap j gj
nnoremap k gk

" Auto-text wrap at 80 chars
au BufRead,BufNewFile *.md setlocal textwidth=80

