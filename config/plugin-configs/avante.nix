{
  plugins.avante = {
    enable = true;
    settings = {
      provider = "ollama";
      providers = {
        ollama = {
          endpoint = "http://127.0.0.1:11434/v1";
          model = "qwen2.5-coder:7b";
          parse_curl_args = {

            __raw = ''

              function(opts, code_opts)
                return {
                  url = opts.endpoint .. "/chat/completions",
                  headers = {
                    ["Accept"] = "application/json",
                    ["Content-Type"] = "application/json",
                  },
                  body = vim.tbl_deep_extend("force", {
                    model = opts.model,
                    messages = code_opts.messages,
                    stream = true,
                  }, opts.extra_fields or {}),
                }
              end
            '';
          };
          parse_response_data = ''
            function(data_stream, event_state, opts)
              require("avante.providers").openai.parse_response_data(data_stream, event_state, opts)
            end
          '';
        };
      };
    };
  };
}
