cask "quantcode-desktop" do
  version "1.4.3-quant.40"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/v#{version}/quantcode-desktop-mac-arm64.dmg"
    sha256 "4f37ae957c8a30b23a8b5626f67d1f9f2032e0f4d335ac63ced5d01aaed24e29"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/v#{version}/quantcode-desktop-mac-x64.dmg"
    sha256 "4f37ae957c8a30b23a8b5626f67d1f9f2032e0f4d335ac63ced5d01aaed24e29"
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
