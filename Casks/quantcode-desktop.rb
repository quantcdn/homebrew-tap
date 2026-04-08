cask "quantcode-desktop" do
  version "1.0.0"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/v#{version}/quantcode-desktop-mac-arm64.dmg"
    sha256 "21b98e404f3ff73e68c28faa5c07ad2edf3aa093b740843f40b1fc0e70fc395c"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/v#{version}/quantcode-desktop-mac-x64.dmg"
    sha256 "PLACEHOLDER"
  end

  name "QuantCode"
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"

  app "QuantCode Dev.app"

  zap trash: [
    "~/Library/Application Support/cloud.quantcdn.code",
    "~/Library/Application Support/cloud.quantcdn.code.dev",
    "~/Library/Preferences/cloud.quantcdn.code.plist",
    "~/Library/Preferences/cloud.quantcdn.code.dev.plist",
  ]
end
