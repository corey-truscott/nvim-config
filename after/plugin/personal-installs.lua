function installTSAndLSP(colour)
  vim.cmd[[
    TSUpdate
    TSInstall all
    MasonInstall fixjson lua-language-server bash-language-server black clang-format clangd flake8 html-lsp json-lsp pyright rust-analyzer stylua rustfmt
  ]]

end
