{ ... }:
{
  globals.mapleader = " ";
  keymaps = [
    {
      mode = "n";
      key = "<leader>/";
      action.__raw = "function() vim.lsp.buf.format() end";
      options = {
        desc = "Format file";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "\\";
      action = "<cmd>Neotree toggle<CR>";
    }

    # Open floating diagnostic message (good for a single error)
    {
      mode = "n";
      key = "<leader>e";
      action.__raw = "function() vim.diagnostic.open_float() end";
      options = {
        desc = "Open floating diagnostic message";
      };
    }
    # Open diagnostic list (Quickfix list for ALL errors in the file)
    {
      mode = "n";
      key = "<leader>q";
      action.__raw = "function() vim.diagnostic.setloclist() end";
      options = {
        desc = "Open diagnostic list";
      };
    }
    #TELESCOPE
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>Telescope live_grep<CR>";
      options = {
        desc = "Live grep";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>fc";
      action = "<cmd>Telescope commands<CR>";
      options.desc = "Find commands";
    }
    {
      mode = "n";
      key = "<leader>fl";
      action = "<cmd>Telescope treesitter<CR>";
      options.desc = "Treesitter locals";
    }

    #BARBAR

    {
      mode = "n";
      key = "<A-,>";
      action = "<cmd>BufferPrevious<CR>";
    }
    {
      mode = "n";
      key = "<A-.>";
      action = "<cmd>BufferNext<CR>";
    }

    {
      mode = "n";
      key = "<A-c>";
      action = "<cmd>BufferClose<CR>";
    }

  ];
}
