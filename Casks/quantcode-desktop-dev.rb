cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260419.4a800a7"
  sha256 "722abe7fcb7480bd55def09eac5c5f745d9ce1779e51e29ecc7389a6dd368939"

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
