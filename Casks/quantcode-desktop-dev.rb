cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260428.233210c"
  sha256 "6ef4ca1a4ed7ef83a9d9e92616f64289c090b6b2d9c899357e51ce74fc692e1b"

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
