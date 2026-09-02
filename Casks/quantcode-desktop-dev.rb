cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260902.g50cbe5e"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "a4261d7c606194094f10dde970cc36c6785cdb5d63acab459ca8d501bed07119"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "7c7786b895cbf1deef41de0a6e21cc779a9b38a4d7e878502c60cfda55b80018"
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
