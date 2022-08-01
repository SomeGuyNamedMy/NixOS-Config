{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, home-manager, hyprland, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      homeConfigurations.may = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./shell.nix
          ./kakoune.nix
          ./mpd.nix
          ./desktop.nix
          ./qutebrowser.nix
          hyprland.homeManagerModules.default
          {
            home.stateVersion = "22.11";
            home.username = "may";
            home.homeDirectory = "/home/may";
            home.packages = with pkgs; [
              xfce.thunar
              imv
              darcs
              connman-gtk
              blueberry
              hyprland
              wbg
              imv
              wlogout
              mirage-im
              fractal
            ];
          }
        ];
      };
    };
}
