class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.16/quantcode-darwin-arm64.zip"
      sha256 "af1256b6f20b7ba7d534e8b795e0b41639d07b1504eae71e77a6eb9d4af0d913"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.16/quantcode-linux-arm64.tar.gz"
      sha256 "0c3838163bc5277bb574ccea22e8ce981bd64a70247b90a63a1cd8b8baebc1be"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.16/quantcode-linux-x64.tar.gz"
      sha256 "ecb8aa0116e28dcb64ceeb09c0cc49f43a46338cf01c2c4412b6259add40fe79"
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
