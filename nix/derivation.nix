{ stdenv, pkgs, fetchFromGitHub, buildGoPackage, ... }:

buildGoPackage rec {
  # name = "belier-${version}";
  # version = "0.1.0";
  # revision = "v${version}";
  name = "belier";
  goPackagePath = "github.com/bricewge/belier";

  src = ./.. ;
  goDeps= ./deps.nix;
  buildInputs = with pkgs; [ go ];

  meta = with stdenv.lib; {
    description = "General purpose torrent tools";
    homepage = https://github.com/bricewge/belier;
    # license = licenses.asl20;
    platforms = platforms.linux;
    maintainers = [ "bricewge@gmail.com" ];
  };
}
