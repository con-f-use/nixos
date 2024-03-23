# This is a function
inputs: {
  wynux = inputs.nixpkgs.lib.nixosSystem {
    specialArgs = { inherit inputs; };
    modules = [
      inputs.self.nixosModules.git
      inputs.self.nixosModules.nvidia

      ./wynux/default.nix
    ];
  };
}
