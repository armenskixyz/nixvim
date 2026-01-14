{
  description = "armenski's nixvim config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs = { self, nixpkgs, nixvim, ...}:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  
    myNeovim = nixvim.legacyPackages.${system}.makeNixvimWithModule {
      inherit pkgs;
      module = import ./config;
    };
  in {
    packages.${system}.default = myNeovim;
  };
}
