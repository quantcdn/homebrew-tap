cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260501.g1d728d3"
  sha256 "73aac70aaa0770b5dd4fdc3fbe457ed7669916de99f8c639c584efef77023ce6"

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
