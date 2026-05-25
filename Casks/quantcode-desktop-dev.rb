cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260525.gca28f78"
  sha256 "92dd99bce0110aea956e277cc1ac13d1bff66ee1d7fed2d18de5b5b08b629acf"

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
