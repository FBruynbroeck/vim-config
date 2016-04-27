function EditNewFilename()
    let curDirNode = g:NERDTreeDirNode.GetSelected()

    let newName = input("Add a new file\n".
                          \ "==========================================================\n".
                          \ "Enter the file name to be created.\n" .
                          \ "", curDirNode.path.str() . g:NERDTreePath.Slash(), "file")

    if newName ==# ''
        call nerdtree#echo("File Creation Aborted.")
        return
    endif
    execute "leftabove vs"
    execute "edit " . newName
endfunction

call NERDTreeAddMenuSeparator()

call NERDTreeAddMenuItem({
  \ 'text': '(n)ew file with template',
  \ 'shortcut': 'n',
  \ 'callback': 'EditNewFilename' })
