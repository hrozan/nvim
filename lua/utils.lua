local M = {}

M.ToggleNumbers = function()
    if (vim.opt.number and vim.opt.relativenumber) then
        vim.cmd([[
            set nu
            set rnu
        ]])
    else
        vim.cmd([[
            set nonu
            set nornu
        ]])
    end
end

return M
