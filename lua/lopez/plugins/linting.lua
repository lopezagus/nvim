return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    -- Define custom linter for golangci-lint
    lint.linters["golangci-lint"] = {
      cmd = "golangci-lint", -- Command to run
      args = { "run", "--out-format", "line-number" }, -- Arguments for golangci-lint
      stdin = false, -- Does not use stdin
      stream = "stdout", -- Output stream
      ignore_exitcode = true, -- Continue even if exit code is non-zero
      parser = require("lint.parser").from_errorformat("%f:%l:%c: %m"),
    }

    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      python = { "pylint" },
      go = { "golangci-lint" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
