cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260412.386ee07"
  sha256 "ec61efeb2ee8ed72632bad9de968afdd2c0f157dcddd8b81a6760e27d8cde2ba"

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
