-- vim:set ft=lua et sts=4 ts=4 sw=4 tw=78:

--     ______                     ___                _    ___
--    / ____/___  _________  ____/ (_)___  ____ _   | |  / (_)___ ___
--   / /   / __ \/ ___/ __ \/ __  / / __ \/ __ `/   | | / / / __ `__ \
--  / /___/ /_/ / /__/ /_/ / /_/ / / / / / /_/ /    | |/ / / / / / / /
--  \____/\____/\___/\____/\__,_/_/_/ /_/\__, /     |___/_/_/ /_/ /_/
--                                      /____/
--
-- Maintainer:         Vincent Wancocoding  <https://cocoding.cc>
-- NeoVim Version:                                          0.6.1
-- Version:                                                 0.2.0
-- Created:                                            2021-01-05
-- Updated:                                            2022-11-11
-- OS:                                                   Win10 64



-- Load Plugin Manager
require("plugins")


-- ===========================
-- Core Settings
-- ===========================
require("core.basic")
require("core.appearance")
require("core.abbreviations")
require("core.mapping")
require("core.provider")


-- ===========================
-- Plugin Settings
-- ===========================

-- telescope
require("plugin.telescope")

-- Lualine
require("plugin.lualine")


-- Startify
require("plugin.startify")

-- nvim-tree
require("plugin.nvim-tree")

-- treesitter
require("plugin.tree-sitter")


-- ============================
-- LSP Settings
-- ============================

require("plugin.lsp-config")
require("plugin.mason")

require("plugin.nvim-cmp")

-- formatting
-- require("plugin.formatter")

-- trouble
-- require("plugin.trouble")

-- vista
-- require("plugin.vista")

-- comment
require("plugin.nvim-comment")

-- -- ============================
-- -- Git
-- -- ============================

-- -- gitsign
-- require("plugin.gitsign")



-- -- ============================
-- -- Misc
-- -- ============================
-- -- hop
-- require("plugin.hop")

-- -- dashboard
-- require("plugin.dashboard")


