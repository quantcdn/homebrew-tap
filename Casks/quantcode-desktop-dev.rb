cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260522.gab5ae5f"
  sha256 "e78fdac3c79eb4c5944222c2067c75bb8a33920c609986037b4d11f798f4a040"

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
