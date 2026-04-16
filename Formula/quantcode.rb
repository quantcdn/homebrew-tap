class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.4/quantcode-darwin-arm64.zip"
      sha256 "eb79f6a84ff5fb62f6910ab079cd5ea075ffad31ee1361f8a4b01a6a2e7f285e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.4/quantcode-linux-arm64.tar.gz"
      sha256 "d11ad810735a6c9a3b650a00ba02caaa2211c6086fc6dc2425568833f7ca9c15"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.4/quantcode-linux-x64.tar.gz"
      sha256 "cf8f3a86185b9c9936ed83580e4247e8b8b09a598296110815a6751633aae732"
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
