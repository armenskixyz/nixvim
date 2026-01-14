{ ... }: {
  globals.mapleader = " ";
  keymaps = [
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
    }
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
  ];
}
