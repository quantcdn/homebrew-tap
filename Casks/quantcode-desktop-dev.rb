cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260419.12469fa"
  sha256 "aeba9c07d24e553d295e40f1bcd9b167946070648c665ab6bd1a96d4ea0293aa"

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
