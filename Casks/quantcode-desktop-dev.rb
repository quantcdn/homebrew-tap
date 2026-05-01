cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260501.gb8854f5"
  sha256 "980034889538d8aa2fe3b9d4a178f4fe741c986441f2eefe3998a55ea01998e2"

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
