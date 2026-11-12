cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20261112.g7cef102"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "50585a8e1a9253a16f5abd9ac69c0210662dd8cb2aea4b94ce42114e6e38442a"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "63b23ff0e4c0e3cbbd2be90d7bdf3509aa70b513f626e0ed3652b4ad529b8af0"
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
