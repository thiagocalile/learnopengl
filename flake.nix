{
  description = "Flake para gerar o ambiente exigido pelo LearnOpenGL";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = inputs: {
    packages = builtins.mapAttrs (system: pkgs: {
      glfw = pkgs.glfw;

      default = inputs.self.packages.${system}.glfw;
    }) inputs.nixpkgs.legacyPackages;
  };
}
