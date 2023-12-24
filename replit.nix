{ pkgs }: {
    deps = [
        pkgs.yarn
        pkgs.nodejs-16_x
        pkgs.wget
        pkgs.git
        pkgs.unzip
        pkgs.nodePackages.pm2
    ];
  env ={
    LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [pkgs.libuuid];
  };
}