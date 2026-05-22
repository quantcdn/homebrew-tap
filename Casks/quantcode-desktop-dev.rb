cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260522.ga7d6aef"
  sha256 "22ed733daaddacb44eaa49945a433020b10c2ff7f5d3fe37b4fb447085248c55"

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
