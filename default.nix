with import <nixpkgs> {};
{
  idris-gl = idrisPackages.callPackage ./gl.nix {};
}
