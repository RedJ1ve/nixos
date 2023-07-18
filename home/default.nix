{
  config,
  pkgs,
  ...
}: {
  home.username = "aecyr";
  home.homeDirectory = "/home/aecyr";

  imports = [
    ./packages.nix
    ./hyprland
    ./rofi
    # ./steam
    # ./lutris
  ];

  programs.git = {
    enable = true;
    userName = "Aecyr";
    userEmail = "ollie.f.gutierrez@gmail.com";
  };

  home.stateVersion = "23.05";
  programs.home-manager.enable = true;
}
