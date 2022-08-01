{config, lib, pkgs, ...}:
with lib;

{
    options.services.keyd = {
        enable = mkEnableOption ''
          keyd, a keyboard keybinding daemon
        '';
        package = mkOption {
            type = types.package;
            default = pkgs.keyd;
        };
    };
}
