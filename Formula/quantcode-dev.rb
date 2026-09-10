class QuantcodeDev < Formula
  desc "AI coding assistant for Australian Government developers (dev channel)"
  homepage "https://code.quantcdn.io"
  version "0.0.0-dev.20260910.ga9f3c88"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-darwin-arm64.zip"
      sha256 "217ea8633b3b2e159dac1275d0bb8b9041ed96657d801123bd2925dc1589f9f0"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-darwin-x64.zip"
      sha256 "fa45cdfca07d9d59b4be13550c344fd8ffe49d05a83436fafb97a5362af166b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-linux-arm64.tar.gz"
      sha256 "1525a02b43f41ce5713cde2f405f916fa6ed059c8dc280bf58fb95b4460f47d1"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-linux-x64.tar.gz"
      sha256 "26eb5a21bd1cb7890133d983e9b15913f0b21b2b2e8d3021eceaf49b38e2e89c"
    end
  end

  def install
    bin.install "quantcode-dev"
    bin.install_symlink bin/"quantcode-dev" => "qcode-dev"
  end

  test do
    assert_match "quantcode", shell_output("#{bin}/quantcode-dev --version")
  end
end
