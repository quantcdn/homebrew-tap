cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260430.g6a222b2"
  sha256 "7ba0b46c2e510e115abbbeab7f883cf7826e971d63f93f57e20e4bdec1d245f6"

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
