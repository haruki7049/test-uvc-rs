let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = with pkgs; [
      cargo
      rustc
      rustfmt
      rust-analyzer
    ];
  }
