{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  ############################
  # Hostname + Locale
  ############################

  networking.hostName = "gruvnode";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Berlin";
  i18n.defaultLocale = "de_DE.UTF-8";
  console.keyMap = "de";

  services.xserver.xkb.layout = "de";

  ############################
  # Bootloader + Kernel
  ############################

  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 7;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Intel GPU required in initrd
  boot.initrd.kernelModules = [ "i915" ];
  boot.kernelModules = [ "i915" ];

  ############################
  # Nix GC
  ############################

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  ############################
  # X11 + XFCE
  ############################

  services.xserver.enable = true;
  services.xserver.desktopManager.xfce.enable = true;
  services.xserver.displayManager.lightdm.enable = true;

  ############################
  # Intel Graphics
  ############################

  services.xserver.videoDrivers = [ "intel" ];

hardware.graphics = {
  enable = true;
  enable32Bit = true;
};

  ############################
  # ZRAM
  ############################

  zramSwap = {
    enable = true;
    memoryPercent = 50;
    algorithm = "zstd";
  };

  ############################
  # Audio – PipeWire
  ############################

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;

    wireplumber.enable = true;
  };

  ############################
  # Users
  ############################

  users.users.nebu = {
    isNormalUser = true;
    description = "nebu";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" ];
  };

  ############################
  # ZSH
  ############################

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
  };

  ############################
  # Fonts
  ############################

  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs.nerd-fonts; [
      fira-code
      jetbrains-mono
      hack
    ];
  };

  ############################
  # System Packages
  ############################

  environment.systemPackages = with pkgs; [
    # Shell / Terminal
    alacritty
    zsh
    oh-my-zsh
    neofetch

    # Themes
    gruvbox-gtk-theme
    papirus-icon-theme
    capitaine-cursors

    # Browser
    google-chrome
    ungoogled-chromium

    # Gaming tools
    protonup-qt
    steam
    mangohud
    vulkan-tools
    vulkan-loader

    # Tools / Utilities
    openssl
    xdotool
    wmctrl
    wget
    popsicle
    git
    #sox
    gnutar
    gzip
    unzip
    gnome-disk-utility
    rsync

    # Video / Audio Editing
    obs-studio
    #audacity
    vlc
    #kdePackages.kdenlive

    # Ledger
    #ledger-live-desktop
    #ledger-udev-rules
  ];

  ############################
  # Steam
  ############################

  programs.steam.enable = true;

  ############################
  # Allow Unfree
  ############################

  nixpkgs.config.allowUnfree = true;
  hardware.ledger.enable = true;

  ############################
  # ThinkPad T480 Optimizations
  ############################

  # TLP: battery + thermal optimization
  services.tlp = {
    enable = true;

    settings = {
      # Battery 1 (interner Akku – LGC 01AV489)
      START_CHARGE_THRESH_BAT0 = 60;
      STOP_CHARGE_THRESH_BAT0 = 80;

      # Battery 2 (externer Akku – SONY 01AV427)
      START_CHARGE_THRESH_BAT1 = 60;
      STOP_CHARGE_THRESH_BAT1 = 80;
    };
  };

  # ThinkFan erlaubt bessere Lüftersteuerung
  services.thinkfan.enable = true;

  # TrackPoint
  hardware.trackpoint.enable = true;

  # Libinput Touchpad
  services.libinput = {
    enable = true;
    touchpad.naturalScrolling = true;
    touchpad.tapping = true;
  };

  ############################
  # Custom OS Info
  ############################

  environment.etc."os-release".text = ''
    NAME="I use NixOS btw"
    VERSION="25.05 (T480 Gruvnode)"
    ID=nixos
    PRETTY_NAME="NixOS btw"
  '';

  ############################
  # State Version
  ############################

  system.stateVersion = "25.05";
}
