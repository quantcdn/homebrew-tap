cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260504.g765bf70"
  sha256 "088e1f7333cbd40fdcb0a425ee45b15bb573048392a800388dcedd87cde6dfeb"

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
