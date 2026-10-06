# defaults

macOS setup automation — Homebrew packages and system preferences.

## Usage

### Install packages

```bash
brew bundle
```

The main `Brewfile` loads all category files from `Brewfiles/`:

- `cli-core` — shell essentials
- `cloud-infra` — cloud and infrastructure tools
- `dev-tools` — development utilities
- `embedded` — embedded/hardware toolchains
- `languages` — programming language runtimes
- `vscode` — VS Code extensions

### Apply macOS settings

```bash
./mac_settings.sh
```

Configures Finder, screenshots, keyboard repeat rate, and other system preferences. Some changes require a restart.
