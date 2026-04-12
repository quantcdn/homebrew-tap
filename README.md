# Quant Homebrew Tap

Homebrew formulae and casks for [Quant](https://quantcdn.io) tools.

## Install

```bash
brew tap quantcdn/tap
```

### Stable (prod channel)

Published when a `v*` tag is pushed to `quantcdn/quantcode`.

```bash
brew install quantcdn/tap/quantcode              # CLI
brew install --cask quantcdn/tap/quantcode-desktop  # Desktop app
```

### Dev (bleeding edge)

Rolling release, published on every push to the `dev` branch of `quantcdn/quantcode`. Installs alongside the stable version — dev CLI is `quantcode-dev`, dev Desktop is `QuantCode Dev.app`.

```bash
brew install quantcdn/tap/quantcode-dev                # CLI (runs as `quantcode-dev`)
brew install --cask quantcdn/tap/quantcode-desktop-dev # Desktop
```
