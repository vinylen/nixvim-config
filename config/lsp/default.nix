{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        ansiblels.enable = true;
        bashls.enable = true;
        gopls.enable = true;
        nixd.enable = true;
        ruff-lsp.enable = true; #python
        terraformls.enable = true;
      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };
    rust-tools.enable = false;
  };
}
