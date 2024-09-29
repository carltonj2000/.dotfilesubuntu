{inputs, pkgs, ...}:

{
  programs.zsh = {
    enable = true;
    autocd = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      ll = "ls -l";
    };

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "vi-mode"
      ];
    };
    initExtra = ''
      # fnm
      FNM_PATH="/home/carltonj2000/.local/share/fnm"
      if [ -d "$FNM_PATH" ]; then
        export PATH="$FNM_PATH:$PATH"
        eval "`fnm env`"
      fi
      . "$HOME/.cargo/env"
      CARGO_TARGET_DIR="/home/carltonj2000/.cargo/bin"
      export BUN_INSTALL="$HOME/.bun" 
      export PATH="$BUN_INSTALL/bin:$PATH" 
    '';
  };
}