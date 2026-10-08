{config, pkgs, ...}:{
    imports = [
        ./modules/default.nix
    ];

    home.username = "pepe";
    home.homeDirectory = "/home/pepe";
    home.stateVersion = "26.05";

    programs.bash = {
        enable = true;
        shellAliases = {
            rebuild = "sudo nixos-rebuild switch --flake ./";
        };
    };

}
