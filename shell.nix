{ pkgs ? import <nixpkgs> {} }:
let
  tex = (pkgs.texlive.combine {
    inherit (pkgs.texlive)
      scheme-full
      baskervaldx
      newtx;
      #(setq org-latex-compiler "lualatex")
      #(setq org-preview-latex-default-process 'dvisvgm)
  });
in 
  pkgs.mkShell {
    # nativeBuildInputs is usually what you want -- tools you need to run
    nativeBuildInputs =  [ tex ];
}

