let g:auto_save_events = ["InsertLeave", "TextChanged"]
let g:auto_save = 0 " enable AutoSave on Vim startup

augroup vim_autosave_type
  au!
  au FileType cpp      let b:auto_save = 1
  au FileType markdown let b:auto_save = 1
  au FileType python   let b:auto_save = 1
  au FileType go       let b:auto_save = 1
augroup END
