cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260503.g8e22cf2"
  sha256 "d759d8fa865ed7436e9e7af0befe6ada50dee1f20fd57dda88da4aa6fd5da6c8"

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
