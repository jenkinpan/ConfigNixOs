{ config, lib, pkgs, ... }:
let
  alias = {
    cls = "clear";
  };
in
{
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    enableAutosuggestions = true;
    oh-my-zsh = {
      enable = true;
      theme = "ys";
      plugins = [ "git" ];
    };
    shellAliases = alias;
  };
}
