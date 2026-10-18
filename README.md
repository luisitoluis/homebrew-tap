# luisitoluis Homebrew Tap

Official Homebrew tap for [LuisitoLuis](https://github.com/luisitoluis) tools.

## Installation

```bash
brew tap luisitoluis/tap
```

Steam needs to be installed, opened, and signed in before the first run.

## Available Formulas

### sam

The window. The command is `sam`.

```bash
brew install luisitoluis/tap/sam
```

Or after tapping:

```bash
brew tap luisitoluis/tap
brew install sam
```

#### Usage

```bash
# Open the window
sam
```

`Sam.app` is installed with the formula, so it also opens from Launchpad, Spotlight, or Finder.

For more info: [sam-macos-rs repository](https://github.com/luisitoluis/sam-macos-rs)

---

### sam-tui

The terminal UI. The command is `sam-tui`.

```bash
brew install luisitoluis/tap/sam-tui
```

Or after tapping:

```bash
brew tap luisitoluis/tap
brew install sam-tui
```

#### Usage

```bash
# Open the terminal UI
sam-tui

# Show version
sam-tui --version
```

For more info: [sam-macos-rs repository](https://github.com/luisitoluis/sam-macos-rs)

---

## Updating

```bash
brew update
brew upgrade sam
brew upgrade sam-tui
```

## Uninstalling

```bash
brew uninstall sam
brew uninstall sam-tui
brew untap luisitoluis/tap
```
