cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260504.g1b57d2d"
  sha256 "80781c037a26cdfd02f5716942f6708774e2fd7a0a843355f4cfcdecef1e0357"

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
