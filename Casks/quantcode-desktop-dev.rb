cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260522.g97779fc"
  sha256 "b18a8c64a1785cfd50f0c27356da9bfa33125781dee1e2f7cef1a1d1bcfb174b"

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
