with import <nixpkgs> {};

let
 tl = (texlive.combine {
   inherit (texlive) scheme-medium wrapfig ulem capt-of
   titlesec preprint enumitem paralist ctex environ
   beamer trimspaces zhnumber changepage framed minted
   fvextra upquote ifplatform xstring; });

in mkShell {
  buildInputs = [ python3Packages.pygments tl ];
}
