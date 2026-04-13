cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260413.b945a02"
  sha256 "0a0ab67e69403e91fb03d796ddc17e013847de557ce8a27dd2b8bd16fc29a14b"

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
