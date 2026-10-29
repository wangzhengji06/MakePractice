let
  pkgs = import <nixpkgs> { };
in

pkgs.mkShell {
  packages = with pkgs; [
    gnumake
    gcc
    gdb
    clang-tools
  ];
}
