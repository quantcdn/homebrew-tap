cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260503.g393bcc0"
  sha256 "5e6e3ac7e0359d6a100f859a60bbbd93776f9de950076bf22e01e14295a0134d"

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
