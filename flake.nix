{
  description = "A nixvim configuration";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, nixvim, flake-utils, ... }@inputs:
    let
      config = import ./config; # import the module directly
    in flake-utils.lib.eachDefaultSystem (system:
      let
        # Extend pkgs to allow unfree packages
        pkgsWithUnfree = import inputs.nixpkgs {
          inherit system;
          config.allowUnfree = true;
        }; 
        nixvimLib = nixvim.lib.${system};
        # pkgs = import nixpkgs { inherit system; };
        nixvim' = nixvim.legacyPackages.${system};
        nvim = nixvim'.makeNixvimWithModule {
          pkgs = pkgsWithUnfree;
          module = config;
        };
      in
      {
        formatter = nixpkgs.legacyPackages.${system}.nixpkgs-fmt;

        checks = {
          default = nixvimLib.check.mkTestDerivationFromNvim {
            inherit nvim;
            name = "My nixvim configuration";
          };
        };

        packages = {
          # Lets you run `nix run .` to start nixvim
          default = nvim;
        };

        devShells.default = import ./shell.nix { inherit pkgsWithUnfree; };
      });
}
