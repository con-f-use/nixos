{
  # Big thanks to con-f-use
  description = "Eve's Configuration Flake.";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = inputs: {
    # Include as modules in nixos configurations
    nixosModules = import ./modules;

    # Use with: nixos-rebuild switch --flake "./#wynux"
    nixosConfigurations = import ./hosts inputs;

    # Run with: `nix fmt`
    formatter.x86_64-linux = inputs.nixpkgs.legacyPackages.x86_64-linux.nixpkgs-fmt;
  };
}
