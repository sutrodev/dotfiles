dotfiles
========
a place to keep all the things that start with "."

certainly a work in progress and will probably be re-organized as I dig back into this world.

## Ghostty and Fish on macOS

The `.config/ghostty/config.ghostty` and `.config/fish/config.fish` files
contain the current terminal setup, including automatic Solarized light/dark
colors. Older top-level dotfiles are retained separately.

Install Ghostty and Fish with Homebrew:

```sh
brew install --cask ghostty
brew install fish
```

From this repository's root, copy the configurations into place. Back up any
existing destination files first:

```sh
mkdir -p "$HOME/Library/Application Support/com.mitchellh.ghostty" "$HOME/.config/fish"
cp .config/ghostty/config.ghostty "$HOME/Library/Application Support/com.mitchellh.ghostty/config.ghostty"
cp .config/fish/config.fish "$HOME/.config/fish/config.fish"
```

Reload Ghostty with Cmd+Shift+Comma, then open a new tab.
Ghostty launches Fish without changing the macOS account's login shell.

The Fish executable is configured as `/opt/homebrew/bin/fish` for Apple Silicon
Macs. On an Intel Mac, use the path reported by `command -v fish` instead.
Menlo is included with macOS; Linux machines need a different font and a
Ghostty config installed at `~/.config/ghostty/config`.

After changing live settings, copy them back to these repository files before
committing. Fish history and `fish_variables` are intentionally not tracked.
