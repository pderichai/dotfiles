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

return M
