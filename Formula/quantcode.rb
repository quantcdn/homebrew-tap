class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.51/quantcode-darwin-arm64.zip"
      sha256 "080f48c5d86bf5ef754131376bb29d9c88128e1a0a11e653e9335e31ccac83c3"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.51/quantcode-darwin-x64.zip"
      sha256 "224048c9c89a962e8685280d2d599322ddb107d76eb7db93d70de8b816686325"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.51/quantcode-linux-arm64.tar.gz"
      sha256 "f785f23ed10a47efc2de3426051a88436496831d48cefdac4517753a8581fa85"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.51/quantcode-linux-x64.tar.gz"
      sha256 "52541caa74641b600ae3a00ff7f550b1386d6869e6d76276e0277ba5cc7a62c7"
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
