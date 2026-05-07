cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260507.g9debb3e"
  sha256 "09f3f85886561e39f7db62240d047da77a30a8678e410bd5b28e7776e5a9f77f"

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
