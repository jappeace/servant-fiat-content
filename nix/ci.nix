{
  default = import ../default.nix {};
  # https://github.com/NixOS/nixpkgs/blob/master/pkgs/top-level/haskell-packages.nix#L47
  pkgs = (import ./pkgs.nix).haskellPackages.servant-fiat-content;

  shell = (import ../shell.nix {});
  # bundle = (import ./bundle.nix {});
  # ghc-901 = import ../default.nix {compiler = "ghc901"; inherit pkgs;};
  # test = pkgs.nixosTest nix/test.nix;
}
