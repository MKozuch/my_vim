return { 
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {},
  config = function()
    local wk = require("which-key")

     wk.register({
        ["<leader>f"] = { name = "+file/find" },
        ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
        ["<leader>fg"] = { "<cmd>Telescope live_grep<cr>", "Live grep" },
        ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        ["<leader>fn"] = { "<cmd>enew<cr>", "New File" },

        ["<leader>t"] = {name = "+tree"},
        ["<leader>tf"] = {"<cmd>Neotree filesystem focus left<cr>", "Toggle files view"},
        ["<leader>tb"] = {"<cmd>Neotree buffers focus right<cr>", "Toggle buffers view"},
        ["<leader>ts"] = {"<cmd>Neotree buffers focus float<cr>", "Toggle symbols view"},

        ["<c-k>"] = {name = "+kode actions"},
        ["<c-k><c-i>"] = {function() vim.lsp.buf.hover() end, 'Hover'} 
    })

  end
 }

