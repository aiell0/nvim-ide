-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.opt.undodir = os.getenv("VIMDATA") .. "/undo"
vim.opt.relativenumber = true

-- history of commands
vim.opt.history = 200
