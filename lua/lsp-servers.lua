local M = {}

M.servers = {
  lua_ls = nil, -- Use defaults
  ruff = {
    init_options = {
      settings = {
        -- Any extra CLI arguments for `ruff` go here.
        args = {},
      }
    }
  },
  tsserver = nil,

  -- Only specify settings when you need them
  clangd = {
    cmd = { "clangd", "--background-index" },
  },
}

return M
