{
  inputs,
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs; [
    pavucontrol
    imagemagick
    fzf
    ripgrep
    tree

    zip
    unzip
    p7zip

    xfce.thunar
    gparted
    libsForQt5.polkit-kde-agent

    grim
    slurp
    cliphist

    webcord-vencord

    neofetch
    nnn

    nix-output-monitor

    bottom
    foot
    librewolf
    protonup-qt
    steam
    lutris
    wine-wayland
    winetricks
    protontricks
  ];
}
