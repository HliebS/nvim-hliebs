-- Set leader and leader in normal mode
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Keymap to move highlighted text up&down as a block : ThePrimeagen
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keymap to append the line bellow to current one with a space : ThePrimeagen
vim.keymap.set("n", "J", "mzJ`z")

-- Keymaps for centered navigation by half of the window height : ThePrimeagen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Set keymaps for centered search & selection : ThePrimeagen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- ? : ThePrimeagen
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- Keymap for multiple pasting of same yank : ThePrimeagen
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Keymaps that allow yanking into system clipboard : asbjornHaland, ThePrimeagen
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- ? : ThePrimeagen
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Keymap setting Ctr+c to Esc to exit modes : ThePrimeagen
vim.keymap.set("i", "<C-c>", "<Esc>")

-- ? : ThePrimeagen
vim.keymap.set("n", "Q", "<nop>")

-- Keymap tho switch betwee projects via tmux : ThePrimeagen
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- ? : ThePrimeagen
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- ? : ThePrimeagen
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Keymap to replace the word under the cursor : ThePrimeagen
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Keymap to make the file executable : ThePrimeagen
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- ? : ThePrimeagen
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- Keymap to shout-out with double space : ThePrimeagen
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
