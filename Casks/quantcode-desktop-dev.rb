cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260522.g453c189"
  sha256 "ee958c41e3a619c8701d9ff9627d2a9f1005e295eb02c36c65fae5ed434015a2"

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
