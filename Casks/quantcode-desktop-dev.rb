cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260428.g5fc7a5f"
  sha256 "46747954d0fcb13cf40f133ca28cb447f0cb2e14a84a47fe9665446f2d5af626"

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
