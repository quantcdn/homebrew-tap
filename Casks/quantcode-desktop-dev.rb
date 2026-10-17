cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20261017.g248a25a"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "cdf2e8e1b96d4e70ad4d8efab6571894c6d5661f1b2fd02e66fd7a8b428c98c8"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "dacb7d273cd76474c6ce0c5806ee683db3d61c2ee5980c76703ca575acee8b63"
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
