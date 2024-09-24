{
  description = "Manage dot files with home-mananager flake";

  inputs = {
    home-manager.url = "github:nix-community/home-manager/master";
  };

  outputs = {self, nixpkgs, home-manager, ...}:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    homeConfigurations = {
      carltonj2000 = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
	modules = [ ./home.nix ];
      };
    };
  }; 
}
