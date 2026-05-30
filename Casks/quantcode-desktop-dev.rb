cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260530.gbc92f1e"
  sha256 "98abbd8fbfaf4365c60b157472488ec20151582416c6b0c379d78ebdb30c3b2c"

  url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
  name "QuantCode Dev"
  desc "AI coding assistant for Australian Government developers (dev channel)"
  homepage "https://code.quantcdn.io"

  app "QuantCode Dev.app"

  zap trash: [
    "~/Library/Application Support/cloud.quantcdn.code.dev",
    "~/Library/Preferences/cloud.quantcdn.code.dev.plist",
  ]
end
