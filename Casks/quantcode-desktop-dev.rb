cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20261017.gb2fa81a"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "9fb2b020e1e3b37e69a9b2f32e99bcb5d166d10463e3c2863a7cbe7a4930d717"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "ce15c30dba6be79c600207f8c619d0b49c195d1e7e9031a88fff6fada79b30f3"
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
