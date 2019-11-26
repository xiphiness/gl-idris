with import <nixpkgs> {};

{ build-idris-package,
  effects, lightyear, contrib, glew, libpng, pkg-config
}:
build-idris-package  {

  name = "gl";
  version = "2018-01-25";
  # This is the .ipkg file that should be built, defaults to the package name
  # In this case it should build `Yaml.ipkg` instead of `yaml.ipkg`
  # This is only necessary because the yaml packages ipkg file is
  # different from its package name here.
  ipkgName = "gl";
  # Idris dependencies to provide for the build
  idrisDeps = [ effects lightyear contrib ];
  extraBuildInputs = [ glew libpng pkg-config ];
  src = ./.;

  meta = {
    description = "Idris GL lib";
  };
}
