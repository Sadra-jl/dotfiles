-- adding plugins
local plugins = {
    "AckslD/swenv.nvim",
    "stevearc/dressing.nvim",
}

table.insert(lvim.plugins, plugins)

-- configuring
require("swenv").setup({
    post_set_env = function ()
        vim.cmd("LspRestart")
    end
})

-- lvim.builtin.which_key.mappings["c"] = {
--     name = "python",
--     c = {
--         "<cmd>lua require('swenv.api').pick_env()<cr>",
--         "choose environment"
--     },
-- }
