cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260503.g1559a6f"
  sha256 "f8a0436b0e03841906f6c08bab8fb32f4764ff9314f22b857f9d4465998c1bb9"

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
