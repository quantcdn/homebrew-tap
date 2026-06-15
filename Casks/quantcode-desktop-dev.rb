cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260615.g8025943"
  sha256 "831d41d23c4a4fc9a8348c4d2fa0d9d301ff59b65961df6c9c150d13a2248c39"

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
