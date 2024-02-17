{ pkgs, ... }:
{
  programs.git = {
    enable = true;

    userName = "unim8trix";
    userEmail = "me@unim8trix.com";

    extraConfig = {
      init.defaultBranch = "main";
      credential.helper = "store";
    };
  };

  home.packages = [ pkgs.gh ];
}
