cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20261028.g0edc2b8"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "8b8be58bbc79d9ab03bb3e32a6acea3e1c391cc5e4ee7918d71211e8d29c1738"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "f5bab75b8a07838adf16ab9e6e5b941e1e68de2be143d34d62cd51a337f1e702"
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
