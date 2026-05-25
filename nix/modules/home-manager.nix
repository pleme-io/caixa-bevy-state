# nix/modules/home-manager.nix — auto-generated from bevy_state.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_state; in {
  options.programs.bevy_state = {
    enable = lib.mkEnableOption "bevy_state";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_state or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
