cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260618.g53c930b"
  sha256 "5e6bec72e99c7fdf953970adfa2c0861a3d4fd1a10c7a850b71b0a229d519888"

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
