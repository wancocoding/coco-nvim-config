-- vim:set ft=lua et sts=2 ts=2 sw=2 tw=78:

vim.g.startify_lists = {
	{ type = "files",          header = {"   Recent Files"} },
	{ type = "bookmarks",      header = {"   Bookmarks"} },
	{ type = "dir",           header = {"   Directories"} },
	{ type = "commands",       header = {"   Commands"} },
	{ type = "sessions",       header = {"   Sessions"} },
}


-- auto update session
vim.g.startify_session_persistence = 1

if vim.fn.has('win32') == 1 then
	vim.g.startify_bookmarks = {
		{ i = "~/AppData/Local/nvim/init.lua"},
		{ m =  'd:\\bak\\syncthing\\pc_user_home\\home\\Docs\\cocodocs\\content\\post' },
	}
else
	vim.g.startify_bookmarks = {
		{ i = "~/.config/nvim/init.lua"},
	}
end

-- session storage
vim.g.startify_session_dir = '~/.nvim_startify_session'