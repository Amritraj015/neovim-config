return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio",
    },
    config = function()
        local dap, dapui = require("dap"), require("dapui")

        dapui.setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end

        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end

        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end

        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "DAP: Toggle breakpoint" })
        -- vim.keymap.set("n", "<S-h>", dap.continue, { desc = "DAP: Continue" })
        -- vim.keymap.set("n", "<S-j>", dap.step_over, { desc = "DAP: Step over" })
        -- vim.keymap.set("n", "<S-k>", dap.step_into, { desc = "DAP: Step into" })
        -- vim.keymap.set("n", "<S-l>", dap.step_out, { desc = "DAP: Step out" })
    end,
}
