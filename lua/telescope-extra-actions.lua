local action_state = require "telescope.actions.state"

local M = {}

M.delete_file = function(prompt_bufnr)
  local current_picker = action_state.get_current_picker(prompt_bufnr)
  local confirm = vim.fn.input("Are you sure? (yes/no): ")
  if confirm == "yes" then
    current_picker:delete_selection(function(selection)
      local ok, err = os.remove(selection[1])
      if not ok then
        print(err)
      end
      return ok
    end)
  end
end

return M
