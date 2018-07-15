# { dockerTools, belier }:

{ pkgs ? import ./. {} }:

with pkgs;

dockerTools.buildImage {
  name = "belier";
  contents = [ belier ];
  config = {
    Cmd = [ "/bin/belier" ];
    WorkingDir = "/data";
    Volumes = {
      "/data" = {};
    };
    ExposedPorts = {
      "3000/tcp" = {};
    };
    Env = [
      "PORT=3000"
      "URL=http://localhost:3000"
      "PATH=/bin"
    ];
  };
}
