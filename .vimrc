set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
filetype plugin on      " use the file type plugins

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif

set tabstop=2
set expandtab
set paste
set ic
set number

let @c = ':s/^/# /'
let @r = ':s/^# //'
let @p = '!pbcopyu'

" enable markdown syntax highlighting for *.md files
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
au BufNewFile,BufFilePre,BufRead *.pp set filetype=ruby



" set cursorcolumn
" highlight CursorColumn ctermbg=6

" set cursorline cursorcolumn
" http://stackoverflow.com/questions/9312301/changing-vim-cursor-column-color-to-something-else-than-vim-background
" highlight CursorColumn guibg=#404040

"
" JSON SYNTAX HIGHLIGHTING
"

" augroup json_autocmd
"   autocmd!
"   autocmd FileType json set autoindent
"   autocmd FileType json set formatoptions=tcq2l
"   autocmd FileType json set textwidth=78 shiftwidth=2
"   autocmd FileType json set softtabstop=2 tabstop=8
"   autocmd FileType json set expandtab
"   autocmd FileType json set foldmethod=syntax
" augroup END

" autocmd BufNewFile,BufRead *.json set ft=javascript
