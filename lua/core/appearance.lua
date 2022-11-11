-- vim:set ft=lua et sts=4 ts=4 sw=4 tw=78:

-- ==============================
-- Appearance
-- ==============================

-- 1. Background color

vim.o.background = "dark"

-- 2. Colorscheme setting

-- ====== oceanic material
-- colorscheme oceanic_material

-- ====== palenight
vim.cmd('colorscheme palenight')

-- ====== material oceanic
-- vim.cmd('colorscheme oceanic_material')

-- ====== material
-- material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
-- vim.g.material_theme_style = 'palenight'
-- vim.cmd('colorscheme material')

-- ====== onedark
-- vim.cmd('colorscheme onedark')

-- ====== Ayu
-- light / mirage / dark
-- vim.cmd("let ayucolor=mirage")
-- vim.g.ayucolor = 'mirage'
-- vim.cmd('colorscheme ayu')

-- ====== gruvbox
-- vim.g.gruvbox_contrast_dark="hard"
-- vim.cmd('colorscheme gruvbox')


-- 3. Syntax highlight
vim.cmd('syntax enable')
vim.cmd('syntax on')


-- 4. Text width
-- Maximum width of text that is being inserted
vim.o.tw = 79
-- vim.o.colorcolumn = 80


-- 5. Tab and Space display
-- whether display tab and space
-- see more: :help 'list'
vim.o.list = true
-- vim.cmd("set listchars=eol:¬,tab:▸\\ ,trail:·,precedes:←,extends:→")
vim.o.listchars = "eol:¬,tab:▸ ,trail:·,precedes:←,extends:→"
-- listchars      = { eol = "↲", tab= "» " }


-- 6. Cursor and Cursorline
-- show the cursor position all the time
vim.o.ruler = true
-- Highlight the text line of the cursor with CursorLine
vim.o.cursorline = true


-- 7. Display Line Number
-- Display line number
-- vim.o.number = true

-- 8. Gui font setting
-- you can use `:set guifont=*` to select font, and then use `:set guifont` to check the variable 
vim.o.guifont = "Consolas-with-Yahei:h11"
-- vim.o.guifont = "Fira Code:h10"

-- 9. Misc
vim.o.termguicolors = true