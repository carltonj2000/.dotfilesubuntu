{inputs, pkgs, ...}:

{
  home.file."testscript.sh".text = ''
   echo hi
  '';
}