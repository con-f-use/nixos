{ config, lib, ... }: {
  options = {
    eve.git.enable = lib.mkEnableOption "Enable the git configuration module.";
  };

  config = lib.mkIf config.eve.git.enable {
    programs.git = {
      enable = true;

      config = {
        alias = {
          l = "log";
          lg = "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cD) %C(bold blue)<%an>%Creset' --abbrev-commit";
        };

        user = {
          name = "its-Lyn";
          email = "14388419+its-Lyn@users.noreply.github.com";
        };
      };
    };
  };
}
