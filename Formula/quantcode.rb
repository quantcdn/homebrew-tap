class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.8/quantcode-darwin-arm64.zip"
      sha256 "c9ffa09c8878d6ebd3c996106ca845f21c57f2105742a726d06008f9e8f32426"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.8/quantcode-linux-arm64.tar.gz"
      sha256 "bcbdf0ca792426a9335ed1d20e5c82487910ba7254d85aaf2e72a1ee4226223d"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.8/quantcode-linux-x64.tar.gz"
      sha256 "27d4e915d7b697c991cf23bc3341ca588e23bb1193172ad3a42c8916dd791bdb"
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
