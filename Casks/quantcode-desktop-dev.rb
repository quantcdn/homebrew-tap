cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260503.gd991c7f"
  sha256 "47c3cb8957160f074fdba00d06272f720856ae293828325b4fdadac21f2b4c5e"

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
