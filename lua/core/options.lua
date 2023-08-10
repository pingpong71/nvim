vim.opt.number = true                          -- line numbers
vim.opt.relativenumber = true                  -- relative numbers 
vim.opt.backspace = "indent,eol,start"         -- sane backspace
vim.opt.encoding = "utf-8"                     -- match encoding
vim.opt.colorcolumn = "80"                     -- visualize column 80
vim.opt.shortmess = vim.opt.shortmess + "I"    -- remove intro message
vim.opt.background = "dark"                    -- dark background 

-- tabs and spaces
vim.opt.tabstop = 4                            -- how many spaces is a tab
vim.opt.softtabstop = 4                        -- 
vim.opt.expandtab = true                       -- convert tabs to spaces
vim.opt.shiftwidth = 4                         -- how many spaces to indent
vim.opt.smartindent = true                     --

vim.opt.mouse = "a"                            -- enable mouse when lazy
vim.opt.showcmd = true                         -- show typed commands
vim.opt.cursorline = true                      -- highlight entire line
vim.opt.termguicolors = true                   -- true colors
vim.opt.wildmenu = true                        -- command completion
vim.opt.showmode = false                       -- active mode in status bar
vim.opt.wrap = false                           --

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true

