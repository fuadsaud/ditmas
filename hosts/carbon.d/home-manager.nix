{ config, pkgs, ... }:

{
  imports = [
    <home-manager/nixos>
  ];

  home-manager.users.fuad = {
    gtk = {
      enable = true;

      theme.name = "Adwaita-dark";

      cursorTheme = {
        name = "Adwaita";
        size = 30;
      };

      font.name = "Cantarell";
    };

    # Keyboard Customization
    services = {
      xcape = {
        enable = true;

        mapExpression = {
          Control_L = "Escape";
        };
      };
    };

    # Enable GPG
    programs.gpg = {
      enable = true;
    };

    services.gpg-agent = {
      enable = true;
    };

    xresources.extraConfig = builtins.readFile (
      pkgs.fetchFromGitHub {
        owner = "fuadsaud";
        repo = "Monrovia";
        rev = "master";
        sha256 = "sha256-dGSBZF38JIpoVsgpjsuvT6JF+/xM6y5YuUl/dN+KYKs=";
      } + "/terminal-colors/monrovia.Xresources"
    );
  };
}
