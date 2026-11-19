cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20261119.gec9442e"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/dev-20261119.gec9442e/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "6d7c5a6fa77e50b275ebfe5a510547ba9945b4b8301c5635e98fb8eb091e6c41"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/dev-20261119.gec9442e/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "b47c3b124182dce7c0e6b2a8f07330ef33e560eeeda33b77c0c8b9a31e6e4ae6"
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
