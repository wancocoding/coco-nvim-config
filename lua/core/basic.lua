-- vim:set ft=lua et sts=2 ts=2 sw=2 tw=78:

-- set option
--   vim.api.nvim_set_option('selection', 'exclusive')
--   or
--   vim.o.smarttab = false
-- vim.wo.{name}: 窗口选项,也就是作用于本次启动的窗口

-- set variables
-- vim.g.{name}: 全局变量
-- vim.b.{name}: 缓冲区变量
-- vim.w.{name}: 窗口变量
-- vim.t.{name}: 选项卡变量
-- vim.v.{name}: 预定义变量


-- 1. Leader key setting
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- 2. File encoding
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"


-- 3. clipboard
vim.cmd("set clipboard+=unnamed")

-- 4. Fix backspace indent
vim.o.backspace = "indent,eol,start"

-- 5. Backup setting
-- do not keep a backup file, use versions instead
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false


-- 6. Undo and history
vim.o.history = 700
vim.o.undolevels = 700

-- 7. Tab settings
vim.o.smarttab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.shiftround = true

-- 8. indent settings
vim.o.autoindent = true
vim.o.smartindent = true

-- 9. auto read when file is changed from outside
vim.o.autoread = true

-- 10. File name expanding
-- A file that matches with one of these patterns is ignored when expanding
vim.cmd("set wildignore=*.o,*.class,*.pyc")
vim.cmd("set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite")

-- 11. Searching
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- 12. disable sound on errors
vim.o.errorbells = false
vim.o.visualbell = false

-- 13. Time in milliseconds to wait for a mapped sequence to complete.
vim.o.tm = 500

-- 14. command completion like zsh
vim.o.wildmenu = true
-- how to complete match, see: `:h wildmode`
-- list full but not auto complete to the next match
vim.o.wildmode = "longest:full"

-- 15. Completion add Dictionary
vim.cmd("set complete+=k")
if vim.fn.has('win32') == 1 then
	vim.cmd("set dictionary+=" .. vim.env.HOME .. "/.config/words.txt")
else
	vim.cmd("set dictionary+=/usr/share/dict/words")
end

-- 16. hidden ,switch unsaved file witout warnning
-- vim.o.hidden = true

-- 17. always enable statusline
-- vim.o.laststatus = 2

-- 18. fold settings, use marker, you can use fdm=marker in you  modeline
-- use tree-sitter instead
-- vim.cmd("set foldmethod=marker")

-- 19. show command in the last line of screen
-- vim.o.showcmd = true
