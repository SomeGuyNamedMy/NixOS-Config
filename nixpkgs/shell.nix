{pkgs, lib, config, ...}:

{
  home.sessionVariables = {
      TERMINAL = "foot";
  };

  programs.zsh = {
      enable = true;
      enableAutosuggestions = true;
      enableCompletion = true;
      enableSyntaxHighlighting = true;
      autocd = true;
  };

  programs.direnv = {
      enable = true;
      enableZshIntegration = true;
  };

  programs.lsd = {
      enable = true;
  };

  programs.bat = {
      enable = true;
  };

  programs.starship = {
      enable = true;
      enableZshIntegration = true;
      settings = {
          add_newline = false;
          format = lib.concatStrings [
              "$username"
              "$hostname"
              "$directory"
              #"$git_branch"
              #"$git_state"
              #"$git_state"
              "$cmd_duration"
              "$line_break"
              "$character"
          ];
          directory = {
              style = "blue";
          };
          cmd_duration = {
              format = "[$duration]($style) ";
              style = "yellow";
          };
          character = {
              success_symbol = "[❯](purple)";
              error_symbol = "[❯](red)";
              vicmd_symbol = "[❮](green)";
          };
      };
  };
}
