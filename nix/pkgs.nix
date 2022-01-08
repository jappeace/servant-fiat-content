import ./pin.nix {
  config = {

    packageOverrides = pkgs: {
        haskell = pkgs.lib.recursiveUpdate pkgs.haskell {
        packageOverrides = hpNew: hpOld: {
            servant-fiat-content = hpNew.callPackage ../default.nix {};
            };
        };
    };
  };
}
