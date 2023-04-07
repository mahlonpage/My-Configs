"Init
filetype plugin indent on "plugin and indent file loaded by filetype
set whichwrap+=<,>,h,l "Cursor wrap
syntax on "Syntax highlighting

"Colorscheme
colorscheme koehler

"Add relative line numbers, coloring, ruler
set relativenumber
highlight LineNr ctermfg=grey
set ruler

"Indenting/spacing
set tabstop=4 "Tabstop = as 4 spaces
set shiftwidth=4 smarttab "4 space indents
set expandtab "Auto-replace tabs with spaces
set ai "Auto indent
set si "Smart indent
set wrap "Wrap line

"Searching
set hls "Highlight search results, type :noh to remove highlights afterward
set ic "ignore case in search

"Remove trailing whitespace
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
"Can replace * with filetypes if wanted. ex: *.py,*.zsh,*.c,
"ex: .md need trailing whitespace sometimes
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
