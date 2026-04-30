class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.13/quantcode-darwin-arm64.zip"
      sha256 "7754a990f564258d106020eb4b3859d44f5e6d5a5b7311f244230c0f63f242ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.13/quantcode-linux-arm64.tar.gz"
      sha256 "13f34328388bbf71ef09e29b019565b695c968a97cf33fc8d6500a00ba019618"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.13/quantcode-linux-x64.tar.gz"
      sha256 "6d8064442d6ec6b81f5fb4dec60f34f890f4021f600cfce8d53433ce5d149049"
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
