return {
  -- Build systems
  { treesitter = "make" },
  { treesitter = "cmake" },
  { treesitter = "dockerfile" },

  -- Scripting languages
  { treesitter = "bash", lsp = "bashls" },
  { treesitter = "lua", lsp = "lua_ls" },

  -- Programming languages
  { treesitter = "go", lsp = "gopls" },
  { treesitter = "gomod" },
  { treesitter = "gosum" },
  { treesitter = "rust" },
  { treesitter = "proto", lsp = "buf_ls" },
  { treesitter = "zig", lsp = "zls" },
  { treesitter = "gleam", lsp = "gleam" },
  { treesitter = "elixir" },
  { treesitter = "html" },
  { treesitter = "css" },
  { treesitter = "typescript", lsp = "ts_ls" },
  { treesitter = "javascript" },

  -- Data and documentation
  { treesitter = "sql" },
  { treesitter = "csv" },
  { treesitter = "markdown", lsp = "marksman" },

  -- Config and IaC
  { treesitter = "terraform", lsp = "terraformls" },
  { treesitter = "hcl" },
  { treesitter = "json" },
  { treesitter = "yaml" },
  { treesitter = "toml" },
  { treesitter = "regex" },
}
