-- install treesitter syntax and lsp servers
function TSplusLSPinstaller()
  vim.cmd[[
    e ~/.config/nvim/init.lua
    TSUpdate
    TSInstall all
    MasonInstall fixjson lua-language-server bash-language-server black clang-format clangd flake8 html-lsp json-lsp pyright rust-analyzer stylua rustfmt
  ]]
end
