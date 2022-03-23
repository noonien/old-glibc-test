{
  inputs = {
    fup.url = "github:gytis-ivaskevicius/flake-utils-plus";

    nixpkgs.url = "nixpkgs/nixos-21.11";
  };

  outputs = inputs@{ self, fup, nixpkgs}:
    fup.lib.mkFlake {
      inherit self inputs;
      supportedSystems = [ "x86_64-linux" ];

      outputsBuilder = channels: {
        #defaultPackage = channels.nixpkgs.callPackage ./nix/glibc {};

        devShell =
          with channels.nixpkgs;
          let

          in

          mkShellNoCC {
            buildInputs = [
    		pkgsCross.armv7l-hf-multiplatform.stdenv.cc
            ];
          };
      };
    };
}
