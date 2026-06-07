cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260607.g76debda"
  sha256 "e41ab135bf8b5b26b92ca1ee131da1ec7af87e94fd7b39f6a13042f25051641c"

  url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
  name "QuantCode Dev"
  desc "AI coding assistant for Australian Government developers (dev channel)"
  homepage "https://code.quantcdn.io"

  app "QuantCode Dev.app"

  zap trash: [
    "~/Library/Application Support/cloud.quantcdn.code.dev",
    "~/Library/Preferences/cloud.quantcdn.code.dev.plist",
  ]
end
