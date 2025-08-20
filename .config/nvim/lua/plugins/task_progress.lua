-- ~/.config/nvim/lua/plugins/task_progress.lua
return {
  {
    "nvim-lualine/lualine.nvim",
    optional = true,
    opts = function(_, opts)
      -- タスク進捗を計算する関数
      local function task_progress()
        local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
        local total, done = 0, 0

        for _, line in ipairs(lines) do
          if line:match("%-?%[[xX]%]") then -- -[x] or -[X] as a done
            total = total + 1
            done = done + 1
          elseif line:match("%-?%[%s*%]") then -- -[ ] or -[] as a task
            total = total + 1
          end
        end

        if total == 0 then
          return "no task"
        end
        return string.format("✔ %d/%d (%.0f%%%%)", done, total, (done / total) * 100)
      end

      opts = opts or {}
      opts.sections = opts.sections or {}

      -- Display progress after file name
      opts.sections.lualine_c = { "filename", task_progress }

      opts.options = opts.options or {}
      opts.options.globalstatus = true

      return opts
    end,
  },
}
