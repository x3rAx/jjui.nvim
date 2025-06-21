local M = {}

function M.setup(opts)
    -- Store user config for later use
    M.config = vim.tbl_deep_extend("force", {
        -- Default configuration options can go here
        mapping = "<leader>jj", -- Default keymapping
    }, opts or {})

    -- Create user command
    vim.api.nvim_create_user_command("JJUI", M.open, {})

    -- Set up keymapping if provided
    if M.config.mapping then
        vim.keymap.set("n", M.config.mapping, M.open, {
            noremap = true,
            silent = true,
            desc = "jjui", -- This will work with WhichKey and similar plugins
        })
    end
end

function M.open()
    -- Store current window ID for late    -- Check if jjui is available
    local cmd = "jjui"
    if vim.fn.executable(cmd) ~= 1 then
        vim.notify("jjui executable not found. Please install jjui and ensure it's in your PATH.", vim.log.levels.ERROR)
        return
    end

    -- Create floating window
    Snacks.terminal({ "jjui" }, {
        win = {
            border = "rounded",
        },
    })

    -- Enter insert mode to allow immediate interaction
    vim.cmd("startinsert")
end

return M
