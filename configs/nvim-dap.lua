-- Configure python debugger
require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")

-- Configure go debugger
-- Setup adapters
require("dap-go").setup()

local dap = require("dap")
local M = {}

dap.adapters.go = function(callback, _)
  local stdout = vim.loop.new_pipe(false)
  local handle
  local pid_or_err
  local port = 38697
  local opts = {
    stdio = { nil, stdout },
    args = { "dap", "-l", "127.0.0.1:" .. port },
    detached = true,
  }
  handle, pid_or_err = vim.loop.spawn("dlv", opts, function(code)
    stdout:close()
    handle:close()
    if code ~= 0 then
      print("dlv exited with code", code)
    end
  end)
  assert(handle, "Error running dlv: " .. tostring(pid_or_err))
  stdout:read_start(function(err, chunk)
    assert(not err, err)
    if chunk then
      vim.schedule(function()
        require("dap.repl").append(chunk)
      end)
    end
  end)
  -- Wait for delve to start
  vim.defer_fn(function()
    callback { type = "server", host = "127.0.0.1", port = port }
  end, 100)
end
-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
  {
    type = "go",
    name = "Debug",
    request = "launch",
    program = "${file}",
  },
  {
    type = "go",
    name = "Debug test", -- configuration for debugging test files
    request = "launch",
    mode = "test",
    program = "${file}",
  },
  -- works with go.mod packages and sub packages
  {
    type = "go",
    name = "Debug test (go.mod)",
    request = "launch",
    mode = "test",
    program = "./${relativeFileDirname}",
  },
}

-- Custom functions to make life easier
function M.SetDAPBreakpoint()
  local condition = vim.fn.input('Condition: ')
  local hit_condition = vim.fn.input('Hit Condition: ')
  local log_message = vim.fn.input('Log Message: ')

  condition = (condition ~= '') and condition or nil
  hit_condition = (hit_condition ~= '') and hit_condition or nil
  log_message = (log_message ~= '') and log_message or nil

  dap.set_breakpoint(condition, hit_condition, log_message)

  print("Breakpoint set")
end

return M
