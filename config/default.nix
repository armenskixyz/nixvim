{ pkgs, ... }: {
  imports = [
    ./plugin-configs/startup.nix
    ./plugin-configs/treesitter.nix
    ./plugin-configs/avante.nix
    ./plugin-configs/trouble.nix
    ./binds.nix
    ./config.nix
  ];
}
