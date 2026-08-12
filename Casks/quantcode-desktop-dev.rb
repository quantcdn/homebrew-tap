cask "quantcode-desktop-dev" do
  version "0.0.0-dev.20260812.gbd97f31"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-arm64.dmg"
    sha256 "5afcda9cb52edea49ec3db852e24b0831ba0a1036b3b9a286fd989472a608e11"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-desktop-dev-mac-x64.dmg"
    sha256 "ac906fd2f7356f7dcb4ecbbf7492333fc1fdf669a9ba30ebec5f1f7c65c74f3c"
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
