cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260901.gbfd280e"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "581d80a7b00c7e0e7db732290d7fe95425a23bb77f747e09734c466a922a0bf2"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "a1a509e3ea0a0f3a2db5b5fd9bdccdb67abb85f26e56eb09bbbcabba2bce4177"
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
