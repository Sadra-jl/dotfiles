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

lvim.builtin.which_key.mappings["C"] = {
    name = "python",
    c = {
        "<cmd>lua require('swenv.api').pick_venv()<cr>",
        "choose environment"
    },
}
