cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260605.g7c547ab"
  sha256 "89d42e5fbf69ea0c918213b76b7abc8e7f3b8e4e9cb18890e2d96d246d85939b"

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
