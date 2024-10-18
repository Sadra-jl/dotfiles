local _set = require("pale_lotus.utilities.table_utils").set

--keymaps
local function map(mode, key, value, description)
    if description == nil then
        vim.keymap.set(mode, key, value, { silent = true })
        return
    end
    vim.keymap.set(mode, key, value, { desc = description })
end
--changed open buffer(tabs) with tab and shift-tab
map('n', '<Tab>', vim.cmd.bnext, 'Go to next buffer')
map('n', '<S-Tab>', vim.cmd.bprev, 'Go to previous buffer')

-- Mimic shell movements
map("i", "<C-E>", "<ESC>A")
map("i", "<C-A>", "<ESC>I")
--changed open buffer(tabs) with gt and gT
lvim.keys.normal_mode["gt"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["gT"] = ":BufferLineCyclePrev<CR>"

--options
local opts = {
    shiftwidth = 4,
    relativenumber = true,
    number = true,
    statuscolumn = "%s %l %r"
}

for name, value in pairs(opts) do
    vim.opt[name] = value
end

lvim.format_on_save = true

local fish_paths = _set({
    "/usr/bin/fish",
    "/bin/fish"
})

-- If the current system shell or the `shell` option is set to /usr/bin/fish then revert to sh
-- if fish_paths[os.getenv('SHELL')]  or fish_paths[vim.opt.shell] then
--     vim.opt.shell = "/bin/bash"
-- else
--    -- Else default to the system current shell.
--    vim.opt.shell = os.getenv('SHELL')
-- end
--
