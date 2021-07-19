vim.g.nvchad_theme = "onedark"

local present, base16 = pcall(require, "base16")

if present then
    base16(base16.themes["material"], true)
    return true
else
    return false
end
