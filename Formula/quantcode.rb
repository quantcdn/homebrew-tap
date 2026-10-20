class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.66"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.66/quantcode-darwin-arm64.zip"
      sha256 "49c532a276bf13895afbbdee84fff611faa3f0f566f2e46863658ab4320f2bc6"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.66/quantcode-darwin-x64.zip"
      sha256 "20fc659c899370b16492f8712385cd3194d2fc6ffbb06a27352c69992997e1f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.66/quantcode-linux-arm64.tar.gz"
      sha256 "0a561fdb28b2391fd7f0cd5eb854e411d2f7252f82b2e30addcf5f66853bbbd0"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.66/quantcode-linux-x64.tar.gz"
      sha256 "72e3a42bb23cec016b8435a52a60c0a7689c30d660aaf6a8157d7e0bde85887f"
    end
  end

  def install
    bin.install "quantcode"
    bin.install_symlink bin/"quantcode" => "qcode"
  end

  test do
    assert_match "quantcode", shell_output("#{bin}/quantcode --version")
  end
end
