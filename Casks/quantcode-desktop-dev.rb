cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260421.900f35a"
  sha256 "1e3fa57e636e5853ec9379a0c256ed5b62a0b0e29716a8115e80a0d5ebb6032b"

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
