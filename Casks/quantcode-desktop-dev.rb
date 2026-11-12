cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20261112.g3fe8553"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "356ce0db5e41517ca46bca19517bcb6dc85cc23f14088c9ed93ce8a2a38b62f6"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "b96d92c2ae427bdff4fa3ec7b1203f74b220cf4c18d574e750e8840052ca0be5"
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
