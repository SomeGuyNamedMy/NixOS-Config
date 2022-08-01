{pkgs, lib, config, ...}:

{
  networking.wireless.iwd.enable = true;
  services.connman.enable = true;
  services.connman.wifi.backend = "iwd";
  networking.useDHCP = lib.mkDefault true;
  networking.hostName = "flex"; # Define your hostname.
}
