cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260610.g9e70198"
  sha256 "7cf081c8a870f2ccd25dc5cbc47cd99f0098c6cdd0f2741cad4ad6c234130f9b"

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
