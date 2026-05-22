cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260522.ge2d883f"
  sha256 "a78ccb157581beb418ce0c28e4455b22e45d1e89ebebe7b6756a8253a388cd24"

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
