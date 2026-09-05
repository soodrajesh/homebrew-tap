# homebrew-macgroom

Homebrew tap for the MacGroom family:

- [macgroom-cli](https://github.com/soodrajesh/macgroom-cli), the free open-source CLI for clearing dev-tool caches and project build artifacts (Formula).
- [MacGroom](https://gogenops.com/mac-apps/macgroom/), the native Mac app for finding AI model caches, dev-tool clutter, and other disk-space hogs (Cask).

## Install

```bash
# CLI
brew install soodrajesh/macgroom/macgroom

# Mac app
brew install --cask soodrajesh/macgroom/macgroom
```

## Updating the CLI formula

On each `macgroom-cli` release, bump `url` and `sha256` in `Formula/macgroom.rb`:

```bash
curl -sL "https://github.com/soodrajesh/macgroom-cli/archive/refs/tags/vX.Y.Z.tar.gz" -o /tmp/macgroom.tar.gz
shasum -a 256 /tmp/macgroom.tar.gz
```

Then `brew audit --strict macgroom` and `brew install --build-from-source ./Formula/macgroom.rb` to verify before pushing.

## Updating the app cask

On each MacGroom app release, bump `version` and `sha256` in `Casks/macgroom.rb`:

```bash
curl -sL "https://github.com/soodrajesh/macgroom-support/releases/download/vX.Y.Z/MacGroom.dmg" -o /tmp/MacGroom.dmg
shasum -a 256 /tmp/MacGroom.dmg
```

Then `brew style Casks/macgroom.rb` and `brew install --cask ./Casks/macgroom.rb` to verify before pushing. Note: this tap's cask has not been (and, per Homebrew's notability bar for new core-repo submissions, currently cannot be) submitted to `Homebrew/homebrew-cask` — this tap is the only way to `brew install --cask` it today.
