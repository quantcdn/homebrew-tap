cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260608.g8aa2c2b"
  sha256 "563507b5e6436baf2b07178898e5cfec4c8a78b9189bacd0bb24680ff3414ad3"

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
