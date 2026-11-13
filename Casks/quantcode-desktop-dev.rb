cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20261113.g88a5ff6"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "4377ec0382a6b8901cb11746f318d9bbc40f3d0d85cb369c2e5d70ce2fa6ad5c"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "49b8aaa454233c0d3c0f90a98bc76f2f4609ad8cb909997dd1ed0034db016656"
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
