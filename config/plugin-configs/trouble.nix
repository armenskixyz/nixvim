{
  plugins.trouble = {
    enable = true;
    settings = {
      auto_close = true;
      restore_input_to_focus = true;
      modes = {
	diagnostics = {
	  group = [
	    ["filename" "pos"]
	  ];
	};
      };
    };
  };
}
