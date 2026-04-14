cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260414.626e6ca"
  sha256 "9ab59c3504faf4e3b79abd2fe5734e686eb95bd72f3d5d7d1c05aea8861c7ca7"

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
