class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.9/quantcode-darwin-arm64.zip"
      sha256 "c53cf71a356b1cedc46ad5d41926c8966708e8734f50900923b27fc0d52c3400"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.9/quantcode-linux-arm64.tar.gz"
      sha256 "a62c5dcf87ee44bfd76fd1879e7d8e0622b1fa47dcd48603b80619f27b549992"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.9/quantcode-linux-x64.tar.gz"
      sha256 "5ca2f22854b0a59e6b60467c3df09b52fda4d6661ce3546d5816728117cf84b7"
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
