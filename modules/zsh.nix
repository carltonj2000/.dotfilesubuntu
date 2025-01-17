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
      export LIBVIRT_DEFAULT_URI="qemu:///system"
      if [ -d "$FNM_PATH" ]; then
        export PATH="$FNM_PATH:$PATH"
        eval "`fnm env`"
      fi
      . "$HOME/.cargo/env"
      CARGO_TARGET_DIR="/home/carltonj2000/.cargo/bin"
      export BUN_INSTALL="$HOME/.bun" 
      export PATH="$BUN_INSTALL/bin:$PATH" 
      export PATH=$PATH:/usr/local/go/bin
      export PATH="$PATH:$HOME/go/bin"
      export PATH="$PATH:$HOME/.deno/bin"
      export FLYCTL_INSTALL="$HOME/.fly"
      export PATH="$FLYCTL_INSTALL/bin:$PATH"
      export PATH="$PATH:$HOME/.modular/bin"
    '';
  };
}
