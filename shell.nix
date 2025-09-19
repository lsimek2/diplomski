{
  pkgs ? import <nixpkgs> { },
}:
let
  tex = (
    pkgs.texlive.combine {
      inherit (pkgs.texlive)
        scheme-medium

        textpos
        etextools
        environ
        fmtcount
        koma-script
        # inputenc
        babel
        babel-croatian
        datetime
        geometry
        amsfonts
        # amsmath
        # amssymb
        # amsthm
        csquotes
        tcolorbox
        pgf
        pgfplots
        arydshln
        float
        xcolor
        # fontenc
        breqn
        thmtools
        multirow
        hyperref
        booktabs
        listings
        letltxmacro
        adjustbox
        enumitem
        biblatex
        placeins
        mathtools
        autonum
        url
        subfiles
        nowidow
        beamertheme-npbt
        ; # dvisvgm
    }
  );
in
pkgs.mkShell {
  # nativeBuildInputs is usually what you want -- tools you need to run
  nativeBuildInputs = [
    tex
    pkgs.biber
    pkgs.texlab
    pkgs.texmaker
  ];
}
