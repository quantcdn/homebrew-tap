class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.77"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.77/quantcode-darwin-arm64.zip"
      sha256 "e02fd5020433d815cc1cb1e32672a3ec42b2dedf59879bdbcba8af2084af8c51"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.77/quantcode-darwin-x64.zip"
      sha256 "47cea60a431e34d677d7aca8d246af1b2fdcfae31ec91719e11ce6a2a862d09b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.77/quantcode-linux-arm64.tar.gz"
      sha256 "d73bc51fadc62709423c029e4d7ee4a8990788fea9b4097274c63f42dc87ba5e"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.77/quantcode-linux-x64.tar.gz"
      sha256 "a57d9ede65e56d5e27eb9453e0f52ace4946d66b2b1be8bf64a5701cc0186e3b"
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
