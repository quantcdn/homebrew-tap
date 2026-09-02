cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260902.g8c29bc4"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "62b6baba551c59d1cc301edc4ab08b8e86a1eac23f13111c1f0626bbc38f80fd"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "af72348769b8c50f86f8d207dff3db99e0a3f8cc1f7c62e802a7a0dac91b3e6c"
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
