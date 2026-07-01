cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260701.g71748cc"
  sha256 "a95395c11bbaa3e8692ca86118bd17bdd5bbb85bef62fe51978a96641b95b9a5"

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
