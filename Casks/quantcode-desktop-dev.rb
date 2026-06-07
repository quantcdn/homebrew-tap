cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260607.g354ace6"
  sha256 "28a7f3ef7d56039897f63742da30d037b0bfb3af241a94baff8f49cc6f6595f4"

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
