cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260415.50803c6"
  sha256 "282fd63a96ed78369834b5c9d32bddcb0d93bb3df2612e9769dda20f5c5bc62e"

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
