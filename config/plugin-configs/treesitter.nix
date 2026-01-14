{ pkgs, ... }: {
plugins.treesitter = {
  enable = true;
  settings = {
    highlight.enable = true;
    indent.enable = true;
  };

  nixvimInjections = true;

    grammarPackages = with pkgs.tree-sitter-grammars; [
      tree-sitter-go
      tree-sitter-gomod
      tree-sitter-gowork
      tree-sitter-go-template
    ];
};

}
