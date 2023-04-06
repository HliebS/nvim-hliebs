" Store undo files in separate directory
if has("persistent_undo")
   let target_path = expand('~/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

" Window layout
if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 1
endif

" If set, let undotree window get focus after being opened, otherwise
" focus will stay in current window.
if !exists('g:undotree_SetFocusWhenToggle')
    let g:undotree_SetFocusWhenToggle = 1
endif

" Highlight linked syntax type.
" You may chose your favorite through ":hi" command
if !exists('g:undotree_HighlightSyntaxAdd')
    let g:undotree_HighlightSyntaxAdd = "DiffAdd"
endif
if !exists('g:undotree_HighlightSyntaxChange')
    let g:undotree_HighlightSyntaxChange = "DiffChange"
endif
if !exists('g:undotree_HighlightSyntaxDel')
    let g:undotree_HighlightSyntaxDel = "DiffDelete"
endif
