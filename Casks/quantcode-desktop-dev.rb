cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260827.gddfab45"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "d570f64a5bfdcf323acf9c02b111004cc8b0910825cdfcb5d728c18a0e57fd16"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "45c609bf2c8e8ff42579877efa49925bc9512f07d92033603134a51cccb3c9d6"
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
