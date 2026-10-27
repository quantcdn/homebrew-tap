cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20261027.gc7b4ef8"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "35fa9ebc621ac7ddaf9864c802912c70d5b492dd2619dc3ac3bc9bd000fc9812"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "95965d95e2ce09c0001cd3960ed9bfa33de1202507a48e080d46371bde4a2b42"
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
