{ pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "nvim-ansible";
      # version = "2024-02-07";
      src = pkgs.fetchFromGitHub {
        owner = "mfussenegger";
        repo = "nvim-ansible";
        rev = "main";
        sha256 = "1p12189367x0x26cys9wxipzwr3i0bmz4lb0s79ki0a49d6zja2c";
      };
    })
  ];
}
