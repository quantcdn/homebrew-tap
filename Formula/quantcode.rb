class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.21/quantcode-darwin-arm64.zip"
      sha256 "a0c5be7e097fe4490d155b520d74901e25065399b0818a67e321cbd0f3304bb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.21/quantcode-linux-arm64.tar.gz"
      sha256 "2c0cd6d0566481b28092263baa1950e8279763c5ae8b833e0d61bd45d2dcb8bb"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.21/quantcode-linux-x64.tar.gz"
      sha256 "5bf29424628093767d12e18b7de1625d85a671b97e2479c6a007dfcec1181bdf"
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
