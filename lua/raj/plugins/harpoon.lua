return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        vim.keymap.set("n", "<leader>a", function()
            harpoon:list():add()
        end, { desc = "Add current buffer to Harpoon" })

        vim.keymap.set("n", "<C-e>", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = "Open Harpoon UI" })

        vim.keymap.set("n", "<A-1>", function()
            harpoon:list():select(1)
        end, { desc = "Switch to Harpoon buffer 1" })
        vim.keymap.set("n", "<A-2>", function()
            harpoon:list():select(2)
        end, { desc = "Switch to Harpoon buffer 2" })
        vim.keymap.set("n", "<A-3>", function()
            harpoon:list():select(3)
        end, { desc = "Switch to Harpoon buffer 3" })
        vim.keymap.set("n", "<A-4>", function()
            harpoon:list():select(4)
        end, { desc = "Switch to Harpoon buffer 4" })

        vim.keymap.set("n", "<A-6>", function()
            harpoon:list():remove_at(1)
        end, { desc = "Remove Harpoon buffer 1" })
        vim.keymap.set("n", "<A-7>", function()
            harpoon:list():remove_at(2)
        end, { desc = "Remove Harpoon buffer 2" })
        vim.keymap.set("n", "<A-8>", function()
            harpoon:list():remove_at(3)
        end, { desc = "Remove Harpoon buffer 3" })
        vim.keymap.set("n", "<A-9>", function()
            harpoon:list():remove_at(4)
        end, { desc = "Remove Harpoon buffer 4" })
    end,
}
