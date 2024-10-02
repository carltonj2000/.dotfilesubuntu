{inputs, pkgs, ...}:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    plugins = with pkgs.vimPlugins; [
      # LazyVim
      nvim-lspconfig
      nvim-treesitter.withAllGrammars
      plenary-nvim
      gruvbox-material
      mini-nvim
    ];
    # Use the Nix package search engine to find
    # even more plugins : https://search.nixos.org/packages
  };
}