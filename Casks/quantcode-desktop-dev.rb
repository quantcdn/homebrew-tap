cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20261027.g5cda868"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "6f2d19a77ab99295b23ac308582ebc0c8ab78eb0b7a104767df08917d5d40fb8"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "7a36799a55dfa5e32fb7cfc7efd5c8beb745329e21f491a333a354ed7ba9e9e5"
  end

  name "QuantCode Dev"
  desc "AI coding assistant for Australian Government developers (dev channel)"
  homepage "https://code.quantcdn.io"

  app "QuantCode Dev.app"

  zap trash: [
    "~/Library/Application Support/cloud.quantcdn.code.dev",
    "~/Library/Preferences/cloud.quantcdn.code.dev.plist",
  ]
end
