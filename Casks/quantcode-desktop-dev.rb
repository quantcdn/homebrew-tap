cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20261102.g36987ca"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "6498d071b893ebdd350b2d27df757bb68fbb7c939701e6bd90b67b4fbdbb503f"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "97ed28bc9c1aa73c8ce42fc0601c5669a0cf0d2d03bb9db94c66b2e2f01a37d4"
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
