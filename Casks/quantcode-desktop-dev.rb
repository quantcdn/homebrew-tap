cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260504.gfffa6c0"
  sha256 "6edd20e454a888f6fcb7084a76f579cc60f7e0c858bcaca9ca804ef1c86dc25b"

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
