cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260503.g6884993"
  sha256 "c5fc8b7884ea9ee811c72703a06b2e185357ddb5cf2bc63dfb5f6db12a8b0baa"

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
