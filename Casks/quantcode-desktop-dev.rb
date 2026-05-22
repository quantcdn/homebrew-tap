cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260522.ga1c8c5e"
  sha256 "534f2ab57275d5ea057e5df0508f989e9a92c82f3bdae7711f9ab7c5ecb34a56"

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
