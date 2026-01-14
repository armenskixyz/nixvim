{ pkgs, ... }: {
  imports = [
    ./plugin-configs/startup.nix
    ./plugin-configs/treesitter.nix
    ./binds.nix
    ./config.nix
  ];
}
