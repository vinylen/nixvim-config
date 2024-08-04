{ pkgs, ... }:

{
  extraPlugins = with pkgs.vimPlugins; [
    markview-nvim
  ];
}
