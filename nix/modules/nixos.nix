# nix/modules/nixos.nix — auto-generated from bevy_state.caixa.lisp
# description: "Finite state machines for Bevy"
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_state;
in {
  options.services.bevy_state = {
    enable = lib.mkEnableOption "bevy_state";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_state or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
