cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260502.g5743d41"
  sha256 "953ec624832067e507b4cbbf82eae7fc486d77df53a1620f4be76e6e13bc5ed7"

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
