cask "quantcode-desktop" do
  version "1.4.3-quant.7"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/v#{version}/quantcode-desktop-mac-arm64.dmg"
    sha256 "eef0705c5ee1a3e3863070c95f0bd093afb5c010da4a6d8bc989c8f5cd711c7d"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/v#{version}/quantcode-desktop-mac-x64.dmg"
    sha256 "eef0705c5ee1a3e3863070c95f0bd093afb5c010da4a6d8bc989c8f5cd711c7d"
  end

  name "QuantCode"
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"

  app "QuantCode.app"

  zap trash: [
    "~/Library/Application Support/cloud.quantcdn.code",
    "~/Library/Application Support/cloud.quantcdn.code.dev",
    "~/Library/Preferences/cloud.quantcdn.code.plist",
    "~/Library/Preferences/cloud.quantcdn.code.dev.plist",
  ]
end
