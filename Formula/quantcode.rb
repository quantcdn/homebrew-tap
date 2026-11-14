class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.81"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.81/quantcode-darwin-arm64.zip"
      sha256 "ffcdbd2bab87c6891ab3cef5347db55ee3224693cd15b00a893c5d0c1269f14d"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.81/quantcode-darwin-x64.zip"
      sha256 "f3ef344b5e3a231a68c4f4c9bbd96b4f389d7ee0af70f5629b77808fa9a6527f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.81/quantcode-linux-arm64.tar.gz"
      sha256 "a780683c9fdf9c2c767e979a653386c89352223d57cef37b6da97b22e5d136b8"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.81/quantcode-linux-x64.tar.gz"
      sha256 "855073e10a0a5714f4801652a5d8c6db0dbac7e07783e5952b1af306491d42a1"
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
