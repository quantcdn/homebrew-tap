class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.30/quantcode-darwin-arm64.zip"
      sha256 "4546078096b050c67864538d81cc292637474cb818f3f181c4c5167df236f813"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.30/quantcode-linux-arm64.tar.gz"
      sha256 "40dccd1b4b5d09a1978035b8cd2d05090cb135509c670fe28339c837243eeab4"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.30/quantcode-linux-x64.tar.gz"
      sha256 "65864028648f7b23326c51cc4e1fc94abd8a7263f4e4f778f59175b23b4127a6"
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
