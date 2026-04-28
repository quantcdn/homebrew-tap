class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.12/quantcode-darwin-arm64.zip"
      sha256 "eeef7c03918055f216146983b9dda88e8189130fd1199204b3c99903b2b07ce2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.12/quantcode-linux-arm64.tar.gz"
      sha256 "0e4a04b30296e797fbfc3db92462e427c0fa02ca54e7be9007712f0ec03787dc"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.12/quantcode-linux-x64.tar.gz"
      sha256 "042d3309c65b861846e6ac25a4a399149797016b57420b99562b53c1b46fe5d9"
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
