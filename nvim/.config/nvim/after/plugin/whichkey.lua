local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.register({
  f = {
    name = "file", -- optional group name
    f = { "Find File" }, -- create a binding with label
    p = { "Find in Git Files" },
    g = { "Live Grep" },
    b = { "Buffers" },
    h = { "Help Tags" },
    r = { "Replace in File" },
    s = { "Shout out" },
  },
  h = {
    name = "harpoon",
    a = { "Add File" },
    e = { "Show File List" },
    ["1"] = { "Open File in Position 1" },
    ["2"] = { "Open File in Position 2" },
    ["3"] = { "Open File in Position 3" },
    ["4"] = { "Open File in Position 4" },
  },
  s = {
    name = "Lsp Saga",
    o = { ":Lspsaga outline<CR>", "File Outline" },
    d = { ":Lspsaga goto_definition<CR>", "Goto Definition" },
    p = { ":Lspsaga peek_definition<CR>", "Peek Definition" },
    a = { ":Lspsaga code_action<CR>", "Code Action" },
    r = { ":Lspsaga rename<CR>", "Rename" },
    h = { ":Lspsaga hover<CR>", "Hover Documenation" },
    ["ci"] = { ":Lspsaga incoming_calls<CR>", "Incoming Calls" },
    ["co"] = { ":Lspsaga outgoing_calls<CR>", "Outgoing Calls" },
    f = { ":Lspsaga finder<CR>", "Finder" },
  }
}, { prefix = "<leader>" })
