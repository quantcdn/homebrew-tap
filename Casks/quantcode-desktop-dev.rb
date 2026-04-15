cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260415.32a3c1c"
  sha256 "b368becdaadd26abb34a1a31234a98e3d16f8c95c1e4e43633841ef1ef29c763"

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
