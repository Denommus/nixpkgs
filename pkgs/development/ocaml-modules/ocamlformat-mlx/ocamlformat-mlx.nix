{
  lib,
  buildDunePackage,
  fetchFromGitHub,
  cmdliner,
  odoc,
  ocamlformat-mlx-lib,
  re,
}:
buildDunePackage rec {
  pname = "ocamlformat-mlx";
  version = "0.26.2.0";
  minimalOcamlVersion = "4.08";

  src = fetchFromGitHub {
    owner = "ocaml-mlx";
    repo = "ocamlformat-mlx";
    rev = version;
    hash = "sha256-I9ZP8Ory/CRFbHUCe5NkZKKYMwtL1gl8xw965k5R718=";
  };

  buildInputs = [
    cmdliner
    re
    odoc
    ocamlformat-mlx-lib
  ];

  meta = {
    homepage = "https://github.com/ocaml-mlx/ocamlformat-mlx";
    description = "Auto-formatter for OCaml .mlx code";
    maintainers = with lib.maintainers; [
      Denommus
    ];
    license = lib.licenses.mit;
    mainProgram = "ocamlformat-mlx";
  };
}
