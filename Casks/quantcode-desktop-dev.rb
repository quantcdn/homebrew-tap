cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260416.90f1e1c"
  sha256 "7ea9109fee39890b0dd2bd0368e7f5e884461c2419e64a03377e355e738d62b0"

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
