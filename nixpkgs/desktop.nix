{ pkgs, lib, config, ... }:

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

  qt.enable = true;
  qt.platformTheme = "gtk";


  wayland.windowManager.hyprland = {
    enable = true;
    systemdIntegration = true;
    extraConfig = ''
      exec-once= wbg /home/may/Pictures/Z3QPnTU.jpg
      monitor=,1920x1080@60,0x0,1
      input {
          kb_layout=
          kb_variant=
          kb_model=
          kb_options=
          kb_rules=
          follow_mouse=1
          touchpad {
              natural_scroll=no
          }
      }
      general {
          sensitivity=1.0 # for mouse cursor
          main_mod=SUPER
          #gaps_in=
          gaps_out=2
          border_size=3
          col.active_border=0x66ee111
          col.inactive_border=0x66333333
          apply_sens_to_raw=0 # whether to apply the sensitivity to raw input (e.g. used by games where you aim using your mouse)
          damage_tracking=full # leave it on full unless you hate your GPU and want to make it suffer
      }
      decoration {
          rounding=3
          blur=1
          blur_size=3 # minimum 1
          blur_passes=1 # minimum 1, more passes = more resource intensive.
      }
      animations {
          enabled=1
          animation=windows,1,7,default
          animation=borders,1,10,default
          animation=fadein,1,10,default
          animation=workspaces,1,6,default
      }
      dwindle {
          pseudotile=0 # enable pseudotiling on dwindle
      }
      bind=SUPER,Return,exec,foot
      bind=SUPER,Q,killactive,
      bind=SUPER,M,exit,
      bind=SUPER,V,togglefloating,
      bind=SUPER,R,exec,rofi -show
      bind=SUPER,P,pseudo,
      bind=SUPER,H,movefocus,l
      bind=SUPER,L,movefocus,r
      bind=SUPER,K,movefocus,u
      bind=SUPER,J,movefocus,d
      bind=SUPER,1,workspace,1
      bind=SUPER,2,workspace,2
      bind=SUPER,3,workspace,3
      bind=SUPER,4,workspace,4
      bind=SUPER,5,workspace,5
      bind=SUPER,6,workspace,6
      bind=SUPER,7,workspace,7
      bind=SUPER,8,workspace,8
      bind=SUPER,9,workspace,9
      bind=SUPER,0,workspace,10
      bind=ALT,1,movetoworkspace,1
      bind=ALT,2,movetoworkspace,2
      bind=ALT,3,movetoworkspace,3
      bind=ALT,4,movetoworkspace,4
      bind=ALT,5,movetoworkspace,5
      bind=ALT,6,movetoworkspace,6
      bind=ALT,7,movetoworkspace,7
      bind=ALT,8,movetoworkspace,8
      bind=ALT,9,movetoworkspace,9
      bind=ALT,0,movetoworkspace,10
      bind=SUPER,mouse_down,workspace,e+1
      bind=SUPER,mouse_up,workspace,e-1
    '';
  };
  fonts.fontconfig.enable = true;

  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    theme = "sidebar";
    extraConfig = {
      modi = "drun,run";
      sidebar-mode = true;
    };
  };

  programs.waybar = {
    enable = true;
    systemd.enable = true;
  };

  programs.foot = {
    enable = true;
  };

  services.fnott = {
    enable = true;
  };

  programs.mpv = {
    enable = true;
  };
}
