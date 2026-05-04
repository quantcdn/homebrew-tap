class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.23/quantcode-darwin-arm64.zip"
      sha256 "e39fa78611c474808a4cc6bb6483b044c00543b2640f26ffab75630e88012fe9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.23/quantcode-linux-arm64.tar.gz"
      sha256 "cc2a07bc550ef109392bf30d2952e4d637ee25fa92c9db27f53d589e04d1557c"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.23/quantcode-linux-x64.tar.gz"
      sha256 "d881d92106621de303a12b1cc10f703a07165e287c874578e345ce1c0560c842"
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
