{ }:

with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "notes";
  buildInputs = [
    gnumake
    lilypond
    fluidsynth
    opusTools
  ];
}
