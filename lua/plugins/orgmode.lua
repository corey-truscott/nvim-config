return {
  'nvim-orgmode/orgmode',
  config = function()
    require('orgmode').setup_ts_grammar()
    require('orgmode').setup({
      org_agenda_files = { '~/.org/agenda/*' },
      org_default_notes_file = '~/.org/notes.org',
    })
  end
}
