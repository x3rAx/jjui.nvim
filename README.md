# jjui.nvim

> This is a fork from
> [swaits/lazyjj.nvim](https://github.com/swaits/lazyjj.nvim) but for
> [jjui](https://github.com/idursun/jjui). Thanks to [Stephen
> Waits](https://github.com/swaits) for doing the initial work!

A Neovim plugin that provides a floating window interface for
[jjui](https://github.com/idursun/jjui).

## Requirements

- Neovim >= 0.5.0
- [snacks.nvim](https://github.com/folke/snacks.nvim)
- [jjui](https://github.com/idursun/jjui) installed and available in your PATH

## Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
    "x3rAx/jjui.nvim",
    dependencies = { "folke/snacks.nvim" },
    event = "VeryLazy",
    opts = {},
}
```

## Configuration

The plugin can be configured by passing options to the setup function:

```lua
require("jjui").setup({
    mapping = "<leader>jj"  -- Change the default keymap
})
```

Or when using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
    "x3rAx/jjui.nvim",
    dependencies = { "folke/snacks.nvim" },
    opts = {
      mapping = "<leader>jj"
    }
}
```

## Usage

- Use the configured keymap (default: `<leader>jj`) to open `jjui` in a floating
  window
- Or use the `:JJui` command
- Press `q` or lose focus to close the window
- The window will automatically return focus to your previous window when
  closing `jjui`

## License

This plugin is licensed under the [MIT license](LICENSE).
