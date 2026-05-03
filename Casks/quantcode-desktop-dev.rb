cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260503.g56a8991"
  sha256 "2c39328c256ef8521ec7a192a6811d42984bdce9fb68ac5ad3fec51e4178355d"

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
