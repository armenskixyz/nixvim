{
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

    servers.tailwindcss = {
      enable = true;
      filetypes = [
        "html"
        "css"
        "javascript"
        "typescript"
        "go"
      ];
      settings = {
        tailwindCSS = {
          includeLanguages = {
            go = "html";
          };
          experimental = {
            classRegex = [
              # Pattern: Class("...")
              [
                "Class\\(([^)]*)\\)"
                "[\"'`]([^\"'`]*)[\"'`]"
              ]
              # Pattern: ClassX("...")
              [
                "ClassX\\(([^)]*)\\)"
                "[\"'`]([^\"'`]*)[\"'`]"
              ]
              # Pattern: ClassIf("...")
              [
                "ClassIf\\(([^)]*)\\)"
                "[\"'`]([^\"'`]*)[\"'`]"
              ]
              # Pattern: Classes("...")
              [
                "Classes\\(([^)]*)\\)"
                "[\"'`]([^\"'`]*)[\"'`]"
              ]
            ];
          };
        };
      };
    };
  };
}
