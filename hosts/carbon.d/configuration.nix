# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    # <home-manager/nixos>
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.initrd.luks.devices = {
    crypted = {
      device = "/dev/disk/by-uuid/a0c6e27c-a09e-4a6a-9a81-cfabb905818f";
      preLVM = true;
      allowDiscards = true;
    };
  };

  networking.hostName = "carbon"; # Define your hostname.
  # Pick only one of the below networking options.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  # i18n.defaultLocale = "en_US.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  #   useXkbConfig = true; # use xkbOptions in tty.
  # };

  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;

    displayManager = {
      defaultSession = "none+i3";

      gdm.enable = true;
    };

    desktopManager = {
      xterm.enable = false;

      gnome.enable = true;
    };

    windowManager.i3 = {
      enable = true;

      package = pkgs.i3-gaps;

      extraPackages = with pkgs; [
        dmenu
        i3status
        i3lock
        i3blocks
      ];
    };
  };

  # Configure keymap in X11
  services.xserver.layout = "us";
  services.xserver.xkbOptions = "caps:escape"; # map caps to escape.

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound.
  sound.enable = false;
  hardware.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;

    # If you want to use JACK applications, uncomment this
    # jack.enable = true;
  };


  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput = {
    enable = true;

    touchpad.naturalScrolling = true;
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.fuad = {
    isNormalUser = true;

    extraGroups = [
      "wheel" # Enable ‘sudo’ for the user.
      "networkmanager"
    ];

    packages = with pkgs; [
      _1password-gui
      alacritty
      dunst
      chruby
      cloc
      clojure
      dropbox
      dunst
      firefox
      google-chrome
      libnotify
      neovim
      nitrogen
      pamixer
      pavucontrol
      picom
      playerctl
      polybar
      powerline
      powerline-fonts
      ripgrep
      rofi
      rofimoji
      spotify
      stow
      tmux
    ];
 };

  # home-manager.users.fuad = { pkgs, ... }: {
  #   home.packages = [
  #     pkgs.dunst
  #   ];
  # };

  programs.zsh.enable = true;

  users.defaultUserShell = pkgs.zsh;

  environment.shells = with pkgs; [ zsh ];

  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [ 
    git
    gnome3.gnome-tweaks
    killall
    python3
    vim
    wget
  ];

  fonts.fonts = with pkgs; [
    profont
    scientifica
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  location.provider = "geoclue2";

  # services.geoclue2 = {
  #   enableDemoAgent = true;
  # };

  services.redshift = {
    enable = true;

    brightness = {
      day = "1";
      night = "1";
    };

    temperature = {
      day = 6700;
      night = 3500;
    };
  };

  services.fprintd = {
    enable = true;
  };

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?

}

