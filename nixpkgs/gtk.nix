{pkgs, lib, config, ...}:

{
    gtk = {
        enable = true;
        theme = {
            name = "Nordic";
            package = pkgs.nordic;
        };
        iconTheme = {
            name = "Nordic";
            package = pkgs.nordic;
        };
    };
}
