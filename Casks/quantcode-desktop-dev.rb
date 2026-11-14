cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20261114.g95aa2e5"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "f5f74bb841a631d8001c9f094ace91c0fd50968d767c0f97b53a4ab5d4f64ee9"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "3d2bb5b4fe1b464c32a4b68d0879a8e6cf63d1ea0f0a7fed111250a82482e6ec"
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
