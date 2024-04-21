return {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
        -- Custom color for comments.
        require("tokyonight").setup({
            on_colors = function(colors)
                colors.comment = colors.green1
            end,
        })

        vim.cmd([[colorscheme tokyonight-night]])

        -- Custom colors for line numbers.
        vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#51B3EC", bold = true })
        vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff", bold = true })
        vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#51B3EC", bold = true })
    end,
}
