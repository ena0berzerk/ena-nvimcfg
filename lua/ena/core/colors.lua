 vim.opt.termguicolors = true

 function SetColor(color)
     color = color or "kanagawa-dragon"
     vim.cmd.colorscheme('kanagawa-dragon')

     -- vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
     -- vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
     -- vim.api.nvim_set_hl(0, "ColorColumn", {bg = "none"})
     -- vim.api.nvim_set_hl(0, "LineNr", {bg = "none"})
 end

 SetColor('aura-dark')
