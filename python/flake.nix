{
  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    };
    flake-utils = {
      url = "github:numtide/flake-utils";
    };
  };

  outputs =
    { nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        inherit (nixpkgs.lib) optional;
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = [
            pkgs.python312Full
            # pkgs.
          ];
        };
      }
    );
}
