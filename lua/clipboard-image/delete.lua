local M = {}

M.delete_img = function ()
  local start_line = vim.fn.getpos("'<")[2]
  local end_line = vim.fn.getpos("'>")[2]
  local start_col = vim.fn.getpos("'<")[3]
  local end_col = vim.fn.getpos("'>")[3]

  local img_path = vim.fn.getline(start_line, end_line)[1]:sub(start_col, end_col)

  -- Delete image file
  vim.fn.delete(vim.fn.fnameescape(img_path))
  -- Delete image text
  vim.cmd("s/"..vim.fn.escape(img_path, "/").."/")
end

return M
