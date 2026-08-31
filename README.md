# homebrew-macgroom

Homebrew tap for [macgroom](https://github.com/soodrajesh/macgroom-cli), the free open-source CLI for clearing dev-tool caches and project build artifacts.

## Install

```bash
brew install soodrajesh/macgroom/macgroom
```

## Updating the formula

On each `macgroom-cli` release, bump `url` and `sha256` in `Formula/macgroom.rb`:

```bash
curl -sL "https://github.com/soodrajesh/macgroom-cli/archive/refs/tags/vX.Y.Z.tar.gz" -o /tmp/macgroom.tar.gz
shasum -a 256 /tmp/macgroom.tar.gz
```

Then `brew audit --strict macgroom` and `brew install --build-from-source ./Formula/macgroom.rb` to verify before pushing.
