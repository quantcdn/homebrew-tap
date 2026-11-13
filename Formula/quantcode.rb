class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.80"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.80/quantcode-darwin-arm64.zip"
      sha256 "9c0a67b2c20d8bcc321976f23171d8d49bfb374a726cc3e5ee8ce7f7f202c2d2"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.80/quantcode-darwin-x64.zip"
      sha256 "063e3438a421add1db27b9dd8f04db9683a2aeaf8e87f0e86ea6f1773ab1e5a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.80/quantcode-linux-arm64.tar.gz"
      sha256 "44b10aec9d074e084ae92a2b6071b494455898314ce76eb8504deff13abc8d70"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.80/quantcode-linux-x64.tar.gz"
      sha256 "188ffd7e8f0cadf6852c60604f05da78d318c97f6d69d3ecc7879f4d6e31390a"
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
