{ pkgs, ... }: {
  imports = [
    ./plugin-configs/startup.nix
    ./plugin-configs/treesitter.nix
    ./plugin-configs/avante.nix
    ./binds.nix
    ./config.nix
  ];
}
