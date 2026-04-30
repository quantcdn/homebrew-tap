cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260430.g2aca7ae"
  sha256 "588def619e5bc4bb9bf7ec38f9afaddbd10a546286ff505f81c7ac4caa4fcf42"

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
