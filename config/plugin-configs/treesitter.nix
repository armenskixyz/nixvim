{ pkgs, ... }: {
plugins.treesitter = {
  enable = true;
  settings = {
    highlight.enable = true;
    indent = {
      enable = false;
      # disable = [ "nix" "python" ];
    };
  };

  nixvimInjections = true;
  grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      # Standard Config & Meta
      nix
      lua
      vim
      vimdoc
      bash
      json
      yaml
      toml
      markdown
      markdown_inline # Critical for seeing code blocks in MD
      dockerfile
      
      # Web & Modern Scripting
      python
      javascript
      typescript
      tsx
      html
      css
      
      # Systems & Low Level
      c
      cpp
      rust
      go
    ];
};

}
