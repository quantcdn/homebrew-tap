cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260502.g1313c9c"
  sha256 "b12c89cc2e3dcac4c3a5a4de1f7f27406cc47c6bfff689db3dccf057b89fcb06"

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
