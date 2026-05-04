cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260504.gca5d867"
  sha256 "7f26dffd4bd2ca3e68e8a8af20422f15bdd1e36a19017cee052538d35dcd3db1"

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
