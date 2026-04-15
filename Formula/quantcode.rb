class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.1/quantcode-darwin-arm64.zip"
      sha256 "276b7b4d52e667e12a8a78e96760f97ef8da841e6787eb701dee85723d946a2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.1/quantcode-linux-arm64.tar.gz"
      sha256 "62d7b20f6b68f67e287c41c898c830abc7473b5844370a04e6ce72f15c93cec0"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.1/quantcode-linux-x64.tar.gz"
      sha256 "5d10523916981f0c7ce65ee0230365d130d4e49116c1deb903dec25408789e4f"
    end
  end

  def install
    bin.install "quantcode"
  end

  test do
    assert_match "quantcode", shell_output("#{bin}/quantcode --version")
  end
end
