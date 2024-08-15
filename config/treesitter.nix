{
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      settings.indent.enable = true;
      folding = false;
      settings = {
        ensure_installed = [
          "terraform"
          "hcl"
        ];
      };
    };
    treesitter-context = {
      enable = true;
      settings = { max_lines = 2; };
    };
    rainbow-delimiters.enable = true;
  };
}
