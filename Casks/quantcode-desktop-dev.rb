cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260502.gd9378f5"
  sha256 "f6446fd063c0f03c84bcffa30bf64a5c9270c7d30a69dc9fa3b3e5fc47634ec5"

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
