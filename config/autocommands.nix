{
  autoCmd = [
    # Vertically center document when entering insert mode
    {
      event = "InsertEnter";
      command = "norm zz";
    }

    # Open help in a vertical split
    {
      event = "FileType";
      pattern = "help";
      command = "wincmd L";
    }

    # Enable spellcheck for some filetypes
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
