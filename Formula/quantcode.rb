class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.3/quantcode-darwin-arm64.zip"
      sha256 "7525dc5f2d13b29125acc41a9786a1f39b0093d6fe743f18ec256e8fe57f7df1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.3/quantcode-linux-arm64.tar.gz"
      sha256 "cbc752aff5c56a05e9a27f8d6312a6e72f29b7f42d9f3ecd16c40986fc60f1c9"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.3/quantcode-linux-x64.tar.gz"
      sha256 "76e3f7f0d57b81d0cd8d733a7505bb3a015f67685b38156a4cd90fa6129c34d4"
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
