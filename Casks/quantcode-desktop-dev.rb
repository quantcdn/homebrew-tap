cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20261026.gcaa2fe7"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "4fd3d2d7ca5bdd18e4f1c1ee95da826cc3c5348b43034e9a5684e520d7c88377"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "5b6ee0c264a5b40beae8503fda8d145ad879d23a397fe15b8a9a45811a742a5f"
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
