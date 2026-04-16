cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260416.a5fe247"
  sha256 "81d9a913ae99d057cffb58401bb11b630fe30e6e30495f1ca32f5647ff811bc3"

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
