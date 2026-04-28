cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260428.gb975410"
  sha256 "7fdecb45f8b9e4349a9144f501b2f3dc04bef3df8c7fdb6cda8eb9b5b98f9f76"

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
