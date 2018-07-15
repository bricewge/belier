let
  # nixpkgs = builtins.fetchTarball {
  #   url = "https://d3g5gsiof5omrk.cloudfront.net/nixos/18.03/nixos-18.03.132008.ad771371fb2/nixexprs.tar.xz";
  #   sha256 = "0kkvbglvjc3qw3170dcy18vq7fj6q0n7liir6vfymjgwb0vdmina";
  # };
  _nixpkgs = import <nixpkgs> {};
  nixpkgs = _nixpkgs.fetchFromGitHub {
    owner = "nixos";
    repo = "nixpkgs";
    rev = "18.03";
    sha256 = "0hk4y2vkgm1qadpsm4b0q1vxq889jhxzjx3ragybrlwwg54mzp4f";
  };
in nixpkgs

