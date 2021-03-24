set nocompatible              " be iMproved, required
filetype off                  " required

" set mouse mode
set mouse=a

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" auto complete plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" nerd tree plugin for directory navigation
Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
" Make nerdtree look good
Plug 'ryanoasis/vim-devicons'

" nerd commenter plugin for toggle comment function
Plug 'scrooloose/nerdcommenter'
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

" plugin for LaTex support
Plug 'lervag/vimtex'
let g:vimtex_compiler_progname = 'nvr'
" use Zathura for visualization
let g:vimtex_view_method = 'zathura'
let g:tex_flavor = 'latex'

" Themes for vim airline
Plug 'vim-airline/vim-airline-themes'
" vim Airline
Plug 'vim-airline/vim-airline'
let g:airline_theme='night_owl'
let g:airline_powerline_fonts = 1

" colooaaarrzzzzz
Plug 'artanikin/vim-synthwave84'

" allow access to virtualenv packages
Plug 'jmcantrell/vim-virtualenv'

" Generate code documentation
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
let g:doge_doc_standard_python = 'google'

" FZF fuzzy finder support - also ripgrep support
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Non-Plugin stuff after this line
syntax on
set encoding=utf-8
autocmd FileType latex,tex,md,markdown setlocal spell
vnoremap . :norm.<cr>

" colooooooorz
" Necessary for neon theme
set termguicolors
" set background=dark
" let g:edge_style = 'neon'
" let g:edge_disable_italic_comment = 1
" colorscheme edge
colorscheme synthwave84
" let g:airline_theme = 'edge'

" code folding management
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"Change split screen default movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set natural position for splits
set splitbelow
set splitright

" Highlight the 80th char of column
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%80v', 100)

" resize current split by +/- 5
nnoremap <silent> + :exe "resize +5"<CR>
nnoremap <silent> - :exe "resize -5"<CR>
nnoremap <silent> <leader>] :exe "vertical resize +5"<CR>
nnoremap <silent> <leader>[ :exe "vertical resize -5"<CR>

" avoiding escape
:imap jk <Esc>

" prettify json
command! FormatJSON %!python -m json.tool

" generic stuff
set hidden        " buffer file instead of closing them

set expandtab    " On pressing tab, insert 4 spaces
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
" allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
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

" Auto-text wrap at 80 chars only for specific files
au BufRead,BufNewFile *.md setlocal textwidth=80

" Remove trailing spaces on save
autocmd FileType c,cpp,java,php,python,javascript,sh autocmd BufWritePre <buffer> %s/\s\+$//e


" COCVim settings

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

set number relativenumber " Turn line numbering on at startup
" Toggle line numbers from none at all
" to relative numbering with current line number
noremap <F3> :set invnumber invrelativenumber<CR>
