cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260502.ga180970"
  sha256 "02de635c69317ea410a3b1f9e4fe8925d7ba0121c34f3cc11c121a9ad38d8e1d"

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
