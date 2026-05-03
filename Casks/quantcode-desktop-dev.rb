cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260503.g146c2ed"
  sha256 "9ec2533924571ba4250d31b6960ff1d8eac72050d2d0fb88f9f094ec93c698cc"

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
