{ pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "nvim-ansible";
      version = "2024-08-04";
      src = pkgs.fetchFromGitHub {
        owner = "mfussenegger";
        repo = "nvim-ansible";
        rev = "main";
        sha256 = "";
      };
    })
  ];
}
