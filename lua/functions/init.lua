-- installation of lsp servers and stuff just for me
function TSplusLSPinstaller()
    vim.cmd [[
    e ~/.config/nvim/init.lua
    TSUpdate
    TSInstall all
    MasonInstall fixjson lua-language-server bash-language-server black clang-format clangd flake8 html-lsp json-lsp pyright rust-analyzer stylua rustfmt css-lsp rnix-lsp yamlfix yaml-language-server marksman
  ]]
end
