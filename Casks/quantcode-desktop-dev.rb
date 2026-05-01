cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260501.gd1657d3"
  sha256 "51aec8d174b7dc9a94fdb94902e8866aab1ca08ea1abca24c1281e40c2bf4588"

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
