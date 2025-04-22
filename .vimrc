set relativenumber

" Use filetype plugin indenting
filetype plugin indent on
syntax on

" Only apply to Python files
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType python setlocal autoindent
autocmd FileType python setlocal formatoptions=cro

" Highlight trailing whitespace (flake8 compliance)
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/ 
