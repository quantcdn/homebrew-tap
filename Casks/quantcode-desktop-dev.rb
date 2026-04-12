cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260412.9db0881"
  sha256 "9ca975c6a1e1d95b39313b95e46ada94eb45cb5a9b8e4506af6ae5c263ae4833"

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
