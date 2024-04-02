function! myspacevim#before() abort
    " you can defined mappings in bootstrap function
    " for example, use kj to exit insert mode.
    call SpaceVim#custom#SPC('nore', ['p', 'l'], 'call SpaceVim#plugins#projectmanager#list()', 'list-all-projects', 1)
    set clipboard+=unnamedplus
    " let g:spacevim_enable_ycm = 1
    let g:spacevim_relativenumber = 0 
endfunction

" function! myspacevim#after() abort
    " you can remove key binding in bootstrap_after function
" endfunction
