cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20261113.ga98d5f7"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "638a315163726d567a9858b9de681ce1d7fe5f29be7c7287082642628933b02a"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "7a635ef5b2c4879e1a41d4b814ce4ed53a72eeb70bbeee615ad6fc39e310e8d4"
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
