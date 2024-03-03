local M = {}

M.dap = {
  plugin = true,
  n = {
    -- Mappings for dap debugging
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dc"] = { "<cmd> DapContinue <CR>"},
    ["<leader>dsi"] = { "<cmd> DapStepInto <CR>"},
    ["<leader>dso"] = { "<cmd> DapStepOver <CR>"},

    -- Mappings for dap ui
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    },
  }
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

return M
