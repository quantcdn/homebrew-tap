cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260614.g82f1406"
  sha256 "d2253bd7880c6ed0d2c369a59401fb4c9693adff6e0b57a9f84c567ed16a8bf7"

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
