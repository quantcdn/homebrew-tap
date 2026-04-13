cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260413.4614e93"
  sha256 "96c3e18187fcb87219dbb2c3a36cfb8f02c63c889f185f0e5a93eff185613fd5"

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
