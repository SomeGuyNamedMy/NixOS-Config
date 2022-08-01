{
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    };
    outputs = { self, nixpkgs, ...}: {
        nixosConfigurations.flex = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [
                ./configuration.nix
                ./networking.nix
                ./hardware-configuration.nix
            ];
        };
    };
}
