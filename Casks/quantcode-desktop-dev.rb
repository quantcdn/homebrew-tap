cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260910.ga9f3c88"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "c0f1da5a692ef70a7718cc9dd33d294b5ebca80a1a8285df8dea45d32cfde4c0"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "3f5c397b65be89e44d6ef0e76e81366d8642dd1fca050080ffd3d385ab17ea50"
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
