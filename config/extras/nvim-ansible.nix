{ pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "nvim-ansible";
      # version = "2024-02-07";
      src = pkgs.fetchFromGitHub {
        owner = "mfussenegger";
        repo = "nvim-ansible";
        rev = "main";
        sha256 = "";
      };
    })
  ];
}
