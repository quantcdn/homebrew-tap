cask "quantcode-desktop" do
  version "1.4.3-quant.25"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/v#{version}/quantcode-desktop-mac-arm64.dmg"
    sha256 "19d54feec11ddaa70810ffb0393b96ced122fc5268868dabff44ccf0b1e7bab9"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/v#{version}/quantcode-desktop-mac-x64.dmg"
    sha256 "19d54feec11ddaa70810ffb0393b96ced122fc5268868dabff44ccf0b1e7bab9"
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
