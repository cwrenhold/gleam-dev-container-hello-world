# Summary

This is a simple starting point for a gleam dev container project. It includes a Dockerfile and a devcontainer.json file to get started.

In the project itself, you can run `gleam run` to run the project. This project is very minimal, it just shows a "Hello, world" message, and then shows some very simple and example things you can do.

# Using the project

For vscode, this is nice and simple, I've included the extension in the dev container configuration, so if you have the dev containers extension, it should all just work.

For neovim, there is a small bit of additional configuration, if you're using [my set of dev container scripts](https://github.com/cwrenhold/devc-nvim-commands), you can use `devc-nvim setup-nightly` or `devc-nvim setup` to create the dev container and copy your neovim configuration, and after that you just need to setup the LSP and/or Treesitter if you're using them:

- LSP - Go into your configuration inside of the container (using `devc-nvim bash` to shell in nicely), and then add `require('lspconfig').gleam.setup({})` in your lsp config
- Treesitter - Run the `:TSInstall gleam` command

