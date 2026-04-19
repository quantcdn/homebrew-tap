cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260419.f008b55"
  sha256 "ac8c68ad06dff7bc545982f4a3e3c17bef71b194246f6fad0b21cf2d05fcfd8e"

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
