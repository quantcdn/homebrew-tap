cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260419.9daa799"
  sha256 "67a9cafc47c6a5d2708f5b5acd476fefac1e57ffd1cd3dc0332ae395fce5a705"

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
