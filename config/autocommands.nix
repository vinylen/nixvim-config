{
  autoCmd = [
    # Vertically center document when entering insert mode
    {
      event = "InsertEnter";
      command = "norm zz";
    }

    # Autoload ansible-lint lsp for ansible files
    {
      event = [
        "BufRead"
        "BufNewFile"
      ];
      pattern = [
        "*/ansible/*.yml"
        "*/ansible/*.yaml"
      ];
      command = "setlocal filetype=yaml.ansible";
    }
  ];
}
