cask "quantcode-desktop" do
  version "1.4.3-quant.70"

  on_arm do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/v#{version}/quantcode-desktop-mac-arm64.dmg"
    sha256 "085699dcdf9bddaef7537148cf8c8d1c35f27acf3e3b6fb2c57efa0392e2125a"
  end

  on_intel do
    url "https://github.com/quantcdn/quantcode-releases/releases/download/v#{version}/quantcode-desktop-mac-x64.dmg"
    sha256 "d1af1aa580cb4bacc5315c1b274e9e9afb8384a8c2831c6c870d406e67170c33"
  end

  name "QuantCode"
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"

  app "QuantCode.app"

  zap trash: [
    "~/Library/Application Support/cloud.quantcdn.code",
    "~/Library/Application Support/cloud.quantcdn.code.dev",
    "~/Library/Preferences/cloud.quantcdn.code.plist",
    "~/Library/Preferences/cloud.quantcdn.code.dev.plist",
  ]
end
