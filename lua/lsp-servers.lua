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
  basedpyright = {
    settings = {
      basedpyright = {
        analysis = {
          typeCheckingMode = "basic",
          autoImportCompletions = true,
          autoSearchPaths = true,
        }
      }
    }
  },
  ts_ls = {},

  -- Only specify settings when you need them
  clangd = {
    cmd = { "clangd", "--background-index" },
  },
}

return M
