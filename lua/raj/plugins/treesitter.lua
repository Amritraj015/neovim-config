return {
    "nvim-treesitter/nvim-treesitter",
    event = {
        "BufReadPre",
        "BufNewFile",
    },
    biuld = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        local opt = vim.opt

        opt.foldmethod = "expr"
        opt.foldexpr = "nvim_treesitter#foldexpr()"
        opt.foldlevelstart = 99

        treesitter.setup({
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enable = true },
            auto_install = true,
            sync_install = false,
            ignore_install = {},
            modules = {},
            ensure_installed = {
                "html",
                "angular",
                "lua",
                "c_sharp",
                "rust",
                "typescript",
                "yaml",
                "dockerfile",
                "cpp",
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        })
    end,
}
