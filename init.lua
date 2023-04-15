-- adds configuration for sets and remaps
require("vanilla.set")
require("vanilla.remaps")

-- boostrap lazy :checkhealth lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print("installing plugins. please wait.")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- maps leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- starts lazy
require('lazy').setup('plugins')

-- install treesitter syntax and lsp servers
function TSplusLSPinstaller()
  vim.cmd[[
    TSUpdate
    TSInstall all
    MasonInstall fixjson lua-language-server bash-language-server black clang-format clangd flake8 html-lsp json-lsp pyright rust-analyzer stylua rustfmt
  ]]
end
