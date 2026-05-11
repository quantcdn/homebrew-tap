cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260511.g75ce03f"
  sha256 "6e7b0ccec5f71187e9e81fc9c54ad729a18461805b766413c83459cb31e1fbde"

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
