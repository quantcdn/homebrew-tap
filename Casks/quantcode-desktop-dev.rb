cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20261027.g72c3fe5"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "b72d9eb406946240b6279d72d9b5d0b0e79acd24def51bff12d012a04b57b499"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "7cbc6df46a5fa2aaa4a1c4ca9253e74691885396ddcfc70299a6794a932f3de4"
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
