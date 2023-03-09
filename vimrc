"Init
filetype plugin indent on "plugin and indent file loaded by filetype
set whichwrap+=<,>,h,l "Cursor wrap
syntax on "Syntax highlighting

colorscheme koehler "Colorscheme

"Add line numbers, coloring
set number
highlight LineNr ctermfg=grey

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
