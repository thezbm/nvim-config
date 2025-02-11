## Usage

To use with other dotfiles, see [dotfiles](https://github.com/thezbm/dotfiles).

To configure Neovim only, 

```shell
git clone https://github.com/thezbm/nvim-config.git ~/.config/nvim
```

Write extra custom configs to `~/.nvim-custom.lua`, for example:

```lua 
return {
    treesitter_languages = {
        "go",
        "python",
    },
    lsp_servers = {
        ensure_installed = {
            "gopls",
            "pyright",
        },
        enabled = {
            "gopls",
            "pyright",
            "ocamllsp",
        }
    },
    colorscheme = "catppuccin",
}
```
