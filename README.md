# dotfiles – macOS with a Linux feel

![Desktop](assets/screenshot.jpg)

| Folder | Contents |
|---|---|
| `rift/` | Rift tiling WM, niri style (scrolling layout, 50 % columns, app rules, key bindings) |
| `sketchybar/` | Bubble bar (Gruvbox): workspaces, media, tray, Bluetooth, Wi‑Fi, volume, battery, calendar, power menu, Control Center, REC indicator; `helpers/*.swift` are compiled on install |
| `kitty/` | Terminal with Linux-style Ctrl bindings, Gruvbox theme |
| `vscode/` | VS Code key bindings for the swapped modifiers (Ctrl+H replace, multi-cursor on ⌘+Shift+↑/↓) |
| `zed/` | Zed keymap for the swapped modifiers (Ctrl+H replace, multi-cursor on ⌘+Shift+↑/↓) |
| `zsh/` | Gruvbox colors for Powerlevel10k (lean) and fzf, sourced from `~/.zshrc` |
| `borders/` | Window borders (yellow = focused) |
| `launcher/` | rofi-like app launcher (choose) on physical ⌥+Space, plus window helpers |
| `scripts/` | Helper scripts called from Rift/BTT bindings (e.g. `move_and_follow.sh`), run straight from the repo (`__DOTFILES__` = repo path) |
| `macos/` | Modifier swap (Ctrl→⌘, ⌘→⌥, ⌥→Ctrl) and faster animations |
| `btt/` | BetterTouchTool preset and notes |
| `tools/` | `gruvboxify` – recolor any image (e.g. a wallpaper) to the Gruvbox palette |
| `assets/` | Screenshot and the Gruvbox wallpaper (`wallpaper-gruvbox.jpg`, made with `gruvboxify`) |
| `Brewfile` | All Homebrew packages |

## Packages

Installed by `./install.sh --brew` from [`Brewfile.core`](Brewfile.core):

| Package | Used for |
|---|---|
| `rift` (tap `acsandmann/tap`) | Tiling window manager. Can also be built from source: <https://github.com/acsandmann/rift> |
| `sketchybar`, `borders` (tap `felixkratz/formulae`) | Status bar and window borders |
| `blueutil` | Bluetooth popup in the bar |
| `switchaudio-osx` | Audio device switching in the volume popup |
| `choose-gui` | rofi-like launcher (⌥+Space) |
| `kitty`, `font-jetbrains-mono-nerd-font` | Terminal and font (also used for bar icons) |
| `fzf`, `fastfetch` | Fuzzy finder, system info |
| `bettertouchtool` | Gestures, ⌘+Tab switcher, Ctrl+Tab (needs a license) |

Not from Homebrew – install once by hand:
- **Oh My Zsh**: <https://ohmyz.sh>
- **Powerlevel10k**: `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k`, then `p10k configure` (lean style)
- **Xcode Command Line Tools** (for the Swift helpers): `xcode-select --install`

`Brewfile` is the complete package list of the original machine (`./install.sh --brew-all`).

## Usage
```bash
./sync.sh                     # system → repo (then commit)
./install.sh                  # repo → system
./install.sh --brew --macos   # fresh Mac: core packages + macOS settings
./install.sh --brew-all       # everything from the full Brewfile
```

Personal home paths are stored as `__HOME__` in the repo; `install.sh` replaces them with your `$HOME`.

After a fresh install, grant **sketchybar** these permissions in Privacy & Security:
Accessibility, Screen & System Audio Recording, Bluetooth.
