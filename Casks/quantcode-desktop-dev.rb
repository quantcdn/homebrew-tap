cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260616.g2ceafcc"
  sha256 "2e11e657e514b7e897a59f9a9c70e94433ca94fac0acd9b64f5e2df12b192891"

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
