--keymaps
local function map(mode, key, value, description)
    if description == nil then
        vim.keymap.set(mode, key, value, { silent = true })
        return
    end
        vim.keymap.set(mode, key, value, { desc = description })
end

--changed open buffer(tabs) with tab and shift-tab
map('n', '<Tab>', vim.cmd.bnext,   'Go to next buffer')
map('n', '<S-Tab>', vim.cmd.bprev, 'Go to previous buffer')

-- Mimic shell movements
map("i", "<C-E>", "<ESC>A")

--changed open buffer(tabs) with gt and gT
lvim.keys.normal_mode["gt"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["gT"] = ":BufferLineCyclePrev<CR>"

vim.opt.shiftwidth = 4

--help with jumping.
--vim.opt.relativenumber = true

