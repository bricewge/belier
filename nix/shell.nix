let
  pkgs = import ./. {};
in

pkgs.mkShell {
  nativeBuildInputs = with pkgs ;[
    git
    go go2nix dep # dep2nix
    cobra
  ];
  shellHook = ''
    export GOPATH=$GOPATH
  '';
}
