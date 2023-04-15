nvim -c "TSUpdate | q"
echo "TSUpdate complete\n"

nvim -c "TSInstall all | q"
echo "TSInstall all complete\n"

nvim -c "MasonInstall fixjson lua-language-server bash-language-server black clang-format clangd flake8 html-lsp json-lsp pyright rust-analyzer stylua rustfmt | q"
echo "MasonInstall complete\n"
