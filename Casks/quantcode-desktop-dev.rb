cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260525.g426e768"
  sha256 "0b65b858690393cfdb3ded26f1b3d290d1f7dff88fa76740c630aa4050c27f0c"

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
