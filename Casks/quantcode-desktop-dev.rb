cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260514.gb2becde"
  sha256 "63bccf9f7a5aafc62e4211eade9848779094c5eddce2d11ac0db974a6b524d6f"

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
