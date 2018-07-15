{ nixpkgsSrc ? ./nixpkgs.nix }:
import (import ./nixpkgs.nix) {
  config = { };
  overlays = [
    (import ./overlay.nix)
  ];
}
