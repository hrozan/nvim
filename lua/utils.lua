local M = {}

M.ToggleNumbers = function()
	if vim.o.number then
		vim.cmd("set nonu")
		vim.cmd("set nornu")
		print("Numbers Off")
		return
	end
	vim.cmd("set nu")
	vim.cmd("set rnu")
	print("Numbers On")
end

return M
