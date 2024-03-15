local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python" },
    modules = {},
    auto_install = false,
    ignore_install = { "" },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  }
end

return M
