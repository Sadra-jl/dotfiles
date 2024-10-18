local plugins = {
    {
        "lervag/vimtex",
        lazy = false,
        init = function()
            vim.g.vimtex_view_method = "zathura"
        end
    },
    {
        "iamcco/markdown-preview.nvim",
        build = "cd app && npm install",
        ft = "markdown",
        config = function()
            vim.g.mkdp_auto_start = 0
        end,
    } }

vim.list_extend(lvim.plugins, plugins)

-- lvim.lsp.installer.setup.ensure_installed = {
--  "texlab",
-- }

-- lvim.builtin.which_key.mappings["x"] = {
--     name = "+LaTeX",
--     c = { "<cmd>TexlabBuild<cr>", "Compile" },
--     x = { "<cmd>TexlabForward<cr>", "Compile and Search" },
-- }
-- lvim.builtin.which_key.mappings["P"] = {
--     name = "+Papis",
--     s = { "<cmd>Telescope papis<cr>", "Search" },
--     o = { "<cmd>PapisOpenFile<cr>", "Open" },
--     i = { "<cmd>PapisShowPopup<cr>", "Info" },
-- }

-- local plugins = {
--     {
--         'f3fora/nvim-texlabconfig',
--         ft = { 'tex', 'bib' },
--         build = "go build -o $GOPATH/bin/",
--         config = function() require('texlabconfig').setup() end,
--         -- Enable back search on Skim -> Preference -> Sync:
--         --   Preset: Custom
--         --   Command: /Users/simo/go/bin/nvim-texlabconfig
--         --   Arguments: -file '%file' -line %line -cache_root /Users/simo/.cache/lvim
--         -- (Commands and Arguments accept only full path, change '/User/simo')
--     },

--     -- Integration with papis (bibliography manager)
--     {
--         "jghauser/papis.nvim",
--         after = { "telescope.nvim", "nvim-cmp" },
--         dependencies = {
--             "kkharji/sqlite.lua",
--             "nvim-lua/plenary.nvim",
--             "MunifTanjim/nui.nvim",
--             "nvim-treesitter/nvim-treesitter", },
--         rocks = {
--             {
--                 "lyaml",
--                 -- brew install libyaml
--                 -- and then set YAML_DIR env variable (see zshenv)
--                 -- Moreover see this issue for debug compilation process of LuaJIT
--                 -- https://github.com/wbthomason/packer.nvim/discussions/937
--             }
--         },
--         config = function()
--             require("papis").setup(
--                 { init_filenames = { "%info_name%", "*.md", "*.norg", "*.tex" } }
--             )
--         end,
--     }
-- }
-- vim.list_extend(lvim.plugins, plugins)
