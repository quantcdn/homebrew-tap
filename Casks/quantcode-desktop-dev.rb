cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260430.g7631a8f"
  sha256 "fa6f34b20fba63e749506a5dd54e10f07c29aa8c5abebd2836bf7649c5352c13"

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
