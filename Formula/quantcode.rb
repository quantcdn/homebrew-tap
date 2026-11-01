class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.74"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.74/quantcode-darwin-arm64.zip"
      sha256 "1522b5f4e36e2830348e201e27b31034c1cef43d7530ebf166fded7b1121fda6"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.74/quantcode-darwin-x64.zip"
      sha256 "99f205190c618fdb2246a5180f7f96851dfeb902ffdf9e2daca1251e73d1699d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.74/quantcode-linux-arm64.tar.gz"
      sha256 "77e070fa6f29c00e4a25033755e681f9b6c02001ada0fcb3eaa7ed356b6c207c"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.74/quantcode-linux-x64.tar.gz"
      sha256 "4549bf9257c1aeda2b352c986dbd2e455ab80fe4a3e2d1c04d06c6880a75ceba"
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
