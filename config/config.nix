{
  globals.mapleader = " ";

  globals = {
    go_highlight_functions = 0;
    go_highlight_methods = 0;
    go_highlight_fields = 0;
    go_highlight_types = 0;
    go_highlight_operators = 0;
    go_highlight_build_constraints = 0;
  };

  diagnostic.settings = {
    virtual_text = true;
  };

  opts = {
    number = true;
    relativenumber = true;
    shiftwidth = 2;
    autoindent = true;
    smartindent = false;
    clipboard = "unnamedplus";
  };

  colorschemes.catppuccin.enable = true;

  plugins = {
    lsp.enable = true;
    lualine.enable = true;
    telescope.enable = true;
    blink-cmp.enable = true;
    colorizer.enable = true;
    comment.enable = true;
    nvim-autopairs.enable = true;
    nvim-surround.enable = true;
    neo-tree.enable = true;
    which-key.enable = true;
    barbar.enable = true;
    markview.enable = true;
    navic.enable = true;
    blink-indent.enable = true;
    none-ls.enable = true;
    trouble.enable = true;
  };

  plugins.lsp = {
    onAttach = ''
      	if client.server_capabilities.documentSymbolProvider then
      	  require("nvim-navic").attach(client, bufnr)
      	end
    '';

    servers = {
      nil_ls.enable = true;
      pyright.enable = true;
      clangd.enable = true;
      gopls.enable = true;
    };

    keymaps.lspBuf = {
      "K" = "hover";
      "gD" = "declaration";
      "gd" = "definition";
      "gi" = "implementation";
      "gt" = "type_definition";
    };
  };

  plugins.none-ls = {

    sources.formatting = {
      gofmt.enable = true;
      prettier.enable = true;
      stylua.enable = true;
      black.enable = true;
    };
  };

  plugins.lualine = {
    settings.winbar.lualine_c = [
      {
        __unkeyed-1 = "navic";
      }
    ];
  };

  plugins.lsp-signature = {
    enable = true;
    settings = {
      bind = true;
      handler_opts.border = "rounded";
      hint_enable = false;
      floating_window = false;
    };
  };
  plugins.blink-cmp.settings = {
    signature = {
      enabled = true;
      window = {
        border = "rounded";
      };
    };
    sources = {
      default = [
        "lsp"
        "path"
        "snippets"
        "buffer"
      ];
    };
  };

}
