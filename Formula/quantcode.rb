class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.32/quantcode-darwin-arm64.zip"
      sha256 "7f484165118de1f0d6d3d61c33342d08a4b8889b17b8c5e122dfc211355d5bd0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.32/quantcode-linux-arm64.tar.gz"
      sha256 "5f5632a6b5ecb066822383c8bfb8b8109d27c1de25cdb73c22e4548b63a759e6"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.32/quantcode-linux-x64.tar.gz"
      sha256 "b0cdc1ec9162da78953a09d7298a082cd7a10f38a7cfbfc3496a5111bd53d04f"
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
