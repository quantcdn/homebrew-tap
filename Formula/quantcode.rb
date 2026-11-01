class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.73"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.73/quantcode-darwin-arm64.zip"
      sha256 "4363009ea4bee375397dc199b822ecadd8fddf0c4364e66988dab949098d2cc2"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.73/quantcode-darwin-x64.zip"
      sha256 "ac88fbbf25792d74e2b307415f2c08241cfc941655c315b3754913805597ad1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.73/quantcode-linux-arm64.tar.gz"
      sha256 "d3be43210da1561eb786e2eb2bd0367098da4b134df559bc9bb31938d5c6f8e8"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.73/quantcode-linux-x64.tar.gz"
      sha256 "fc73d95d76de7bff8e762d906554be1e97b9b9ae719b1d81a1dd60a0bc58c5ac"
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
