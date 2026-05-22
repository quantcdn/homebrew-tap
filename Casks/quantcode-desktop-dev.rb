cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260522.g3645c24"
  sha256 "734dcb2bb36aa6698900e48aa7c3656be956cf3b5f982f8a82152f7818efbc40"

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
