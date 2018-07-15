# This file was generated by https://github.com/kamilchm/go2nix v1.2.1
{ stdenv, buildGoPackage, fetchgit }:

buildGoPackage rec {
  name = "cobra-${version}";
  version = "2018-06-29";
  rev = "a114f312e075f65bf30d6d9a1430113f857e543b";

  goPackagePath = "github.com/spf13/cobra";

  src = fetchgit {
    inherit rev;
    url = "https://github.com/spf13/cobra";
    sha256 = "10lmi5ni06yijxg02fcic5b7ycjkia12yma4a4lz8a56j30wykx1";
  };

  goDeps = ./deps.nix;

  meta = with stdenv.lib; {
    description = "A Commander for modern Go CLI interactions";
    homepage = https://github.com/spf13/cobra;
    license = licenses.asl20;
    platforms = platforms.linux;
    maintainers = [ "bricewge@gmail.com" ];
  };
}
