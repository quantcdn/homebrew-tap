cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260413.bf1d774"
  sha256 "6d5253ef6ee82bb94df6affd24150933e9a8fa5b5e71864d2bd40f792a470977"

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
