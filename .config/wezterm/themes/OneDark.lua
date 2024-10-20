-- name: Doom One
-- author: Henrik Lissner <https://github.com/hlissner>
-- license: MIT
-- blurb: Inspired by Atom's One Dark color scheme.


return {
    -- The basic colors
    foreground = "#bbc2cf",
    background = "#282c34",
    selection_fg = "#bbc2cf",
    selection_bg = "#3f444a",
    cursor_bg = "#bbc2cf",
    cursor_fg = "#282c34",
    cursor_border = "#bbc2cf",
    -- Tab bar colors
    tab_bar = {
        background = "#282c34",
        active_tab = {
            bg_color = "#DFDFDF",
            fg_color = "#282c34",
        },
        inactive_tab = {
            bg_color = "#5B6268",
            fg_color = "#3f444a",
        },
        inactive_tab_hover = {
            bg_color = "#3f444a",
            fg_color = "#282c34",
        },
    },

    -- The basic 16 colors
    ansi = {
        "#2a2e38", -- black
        "#ff6c6b", -- red
        "#98be65", -- green
        "#ECBE7B", -- yellow
        "#51afef", -- blue
        "#c678dd", -- magenta
        "#46D9FF", -- cyan
        "#DFDFDF", -- white
    },
    brights = {
        "#3f444a", -- bright black
        "#ff6655", -- bright red
        "#99bb66", -- bright green
        "#ECBE7B", -- bright yellow
        "#51afef", -- bright blue
        "#c678dd", -- bright magenta
        "#46D9FF", -- bright cyan
        "#bbc2cf", -- bright white
    },
}
