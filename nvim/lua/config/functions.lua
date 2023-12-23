local M = {}

local replace_text = function(search_pattern, replace_with, confirm)
  if search_pattern == nil or search_pattern == "" or replace_with == nil or replace_with == "" then
    return
  end
  if confirm then
    vim.cmd("%s/" .. search_pattern .. "/" .. replace_with .. "/gc")
  else
    vim.cmd("%s/" .. search_pattern .. "/" .. replace_with .. "/g")
  end
end

M.replace_text = function()
  local search_pattern = vim.fn.expand("<cword>")
  local replace_with = vim.fn.input("")
  replace_text(search_pattern, replace_with, false)
end

M.replace_text_confirm = function()
  local search_pattern = vim.fn.expand("<cword>")
  local replace_with = vim.fn.input("")
  replace_text(search_pattern, replace_with, true)
end

M.replace_highlighted_text = function()
  -- Save the original cursor position.
  local original_pos = vim.api.nvim_win_get_cursor(0)

  -- Get the start and end position of the visual selection.
  vim.cmd('normal! gv"ay')
  local start_pos = vim.fn.getpos("'<")
  local end_pos = vim.fn.getpos("'>")

  -- Calculate the range.
  local lines = vim.api.nvim_buf_get_lines(0, start_pos[2] - 1, end_pos[2], false)
  if #lines == 0 then
    return ""
  end
  lines[1] = string.sub(lines[1], start_pos[3])
  lines[#lines] = string.sub(lines[#lines], 1, end_pos[3] - 1)

  -- Restore the original cursor position
  vim.api.nvim_win_set_cursor(0, original_pos)

  -- Return the concatenated lines
  local search_pattern = table.concat(lines, "\n")
  local replace_with = vim.fn.input("")
  replace_text(search_pattern, replace_with, false)
end

M.replace_highlighted_text_confirm = function()
  -- Save the original cursor position.
  local original_pos = vim.api.nvim_win_get_cursor(0)

  -- Get the start and end position of the visual selection.
  vim.cmd('normal! gv"ay')
  local start_pos = vim.fn.getpos("'<")
  local end_pos = vim.fn.getpos("'>")

  -- Calculate the range.
  local lines = vim.api.nvim_buf_get_lines(0, start_pos[2] - 1, end_pos[2], false)
  if #lines == 0 then
    return ""
  end
  lines[1] = string.sub(lines[1], start_pos[3])
  lines[#lines] = string.sub(lines[#lines], 1, end_pos[3] - 1)

  -- Restore the original cursor position
  vim.api.nvim_win_set_cursor(0, original_pos)

  -- Return the concatenated lines
  local search_pattern = table.concat(lines, "\n")
  local replace_with = vim.fn.input("")
  replace_text(search_pattern, replace_with, true)
end

return M
