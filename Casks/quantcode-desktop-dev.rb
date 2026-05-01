cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260501.gcfa7480"
  sha256 "58a58ec0c5d00c93659d0af7b4bb661df1a9304ceee3534cc70bd0e87f60ea52"

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
