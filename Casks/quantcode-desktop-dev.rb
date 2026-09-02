cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260902.gfe43be4"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "804412eab95cc3aa9f36c7fe09f82f8e23f5c8512fe85c9c74e57f2c8234f702"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "04fb2b3bb1285fc1035e7edb3cb6ef023b1dc567e2fe8181c43f8811ae8a0047"
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
