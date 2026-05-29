class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.31/quantcode-darwin-arm64.zip"
      sha256 "4a854de2c1171ef582104884830286e64703725ce7d04430baca9fdd185717ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.31/quantcode-linux-arm64.tar.gz"
      sha256 "858ace56c98e3ed4f155ab83d8a60f22f927ecc1a4b7ec2ce201cc8fab12376c"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.31/quantcode-linux-x64.tar.gz"
      sha256 "2b3fbd505619a2cef8d54d17f2664003b837e479f7db8aa8417168b5ac745370"
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
