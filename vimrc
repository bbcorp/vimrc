filetype plugin on

" Launch pathogen
execute pathogen#infect()

" Enable syntax highlighting
syntax on

" Disable visual mode when using mouse
set mouse-=a

" Disable deprecated commands
set nocompatible

" Show cursorline and column
set cursorline              
set cursorcolumn            
" cursorline blue background and font white
hi CursorLine   cterm=NONE ctermbg=Blue ctermfg=white
" key H to toggle cursorline and cursorcolum ON or OFF
nnoremap H :set cursorline! cursorcolumn!<CR>

" Keep 5 lines shown when scrolling
set scrolloff=5

" Disable paste autocomment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r

"" Airline parameters
" Enable Airline
let g:airline#extensions#tabline#enabled = 1

" Enable powerline fonts
" Carefull on windows you need powerline fonts in your terminal (cygwin,
" putty, etc)
let g:airline_powerline_fonts = 1

 if !exists('g:airline_symbols')
     let g:airline_symbols = {}
     endif

     " unicode symbols
     let g:airline_left_sep = '»'
     let g:airline_left_sep = '▶'
     let g:airline_right_sep = '«'
     let g:airline_right_sep = '◀'
     let g:airline_symbols.linenr = '␊'
     let g:airline_symbols.linenr = '␤'
     let g:airline_symbols.linenr = '¶'
     let g:airline_symbols.branch = '⎇'
     let g:airline_symbols.paste = 'ρ'
     let g:airline_symbols.paste = 'Þ'
     let g:airline_symbols.paste = '∥'
     let g:airline_symbols.whitespace = 'Ξ'

     " airline symbols
     let g:airline_left_sep = ''
     let g:airline_left_alt_sep = ''
     let g:airline_right_sep = ''
     let g:airline_right_alt_sep = ''
     let g:airline_symbols.branch = ''
     let g:airline_symbols.readonly = ''
     let g:airline_symbols.linenr = ''

"" NERD Commenter parameters

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

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

"" NERD Tree parameters

" CTRL + N to show the tree
map <C-n> :NERDTreeToggle<CR>
