cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260428.ge5641d7"
  sha256 "674f36db4cf7c5a0fd07d647129de10a83053e1d7c89d3338aca82802dbe902e"

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
