cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260701.g44dee20"
  sha256 "e43278bdd349b11bdb5706a4bb1497f1e5bfc903fc3125adbbf36ffc8742799d"

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
