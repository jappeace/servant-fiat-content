{ mkDerivation, base, bytestring, hpack, http-media, servant
, stdenv, text
}:
mkDerivation {
  pname = "servant-fiat-content";
  version = "1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    base bytestring http-media servant text
  ];
  libraryToolDepends = [ hpack ];
  preConfigure = "hpack";
  homepage = "https://github.com/jappeace/template#readme";
  license = stdenv.lib.licenses.mit;
}
