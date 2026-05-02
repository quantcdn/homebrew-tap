class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.19/quantcode-darwin-arm64.zip"
      sha256 "4c0b1cf62dbbf0e563d8c986adfb0e90138d34bafc94af5283768accae459ad2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.19/quantcode-linux-arm64.tar.gz"
      sha256 "07e0853f891d24467828c7891b3592233d0000198ab2d66fcb11942f35856a06"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.19/quantcode-linux-x64.tar.gz"
      sha256 "5379417fb8c28e78b245a727ebcb4a6505b42fb353248d4ff02f5e24ed0b4b3a"
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
