local M = {}

local health = vim.health or require("health")

function M.check()
	-- Start health check
	health.start("lazyjj.nvim")

	-- Check for required plugins
	if pcall(require, "plenary") then
		health.ok("plenary.nvim installed")
	else
		health.error("plenary.nvim not installed", {
			"Install plenary.nvim",
			"https://github.com/nvim-lua/plenary.nvim",
		})
	end

	-- Check for lazyjj executable
	if vim.fn.executable("lazyjj") == 1 then
		health.ok("lazyjj executable found in PATH")
	else
		health.error("lazyjj executable not found", {
			"Install lazyjj",
			"Ensure lazyjj is in your PATH",
		})
	end
end

return M
