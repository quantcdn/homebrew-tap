cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20261113.g8ba13fe"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "930cf3b8ebdfedc9ab8c264399299efd0a0d0f26b4d536d4c7d33a6ecf85993d"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "6aaeb3f48d223238ce6f16e760ae92311b451355934fb502e2a74429ed75a7d0"
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
