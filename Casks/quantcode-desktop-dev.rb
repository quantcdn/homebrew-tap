cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260626.g36a509d"
  sha256 "eb30a5d48c950bd7de705e6f106dd2192c43feff582f8fe89ff66d5ef9d1fce8"

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
