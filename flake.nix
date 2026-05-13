{
  description = "armenski's nixvim config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs = { self, nixpkgs, nixvim, ...}:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { system = "x86_64-linux"; config.allowUnfree = true;};
    
  
    myNeovim = nixvim.legacyPackages.${system}.makeNixvimWithModule {
      inherit pkgs;
      module = import ./config; 
    };
  in {
    packages.${system}.default = myNeovim;
  };
}
