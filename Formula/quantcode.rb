class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.25/quantcode-darwin-arm64.zip"
      sha256 "2a38a303bef9c7e9d6ce3f6d72fa77914e82c806e7c141842e6ba08b1bccfd20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.25/quantcode-linux-arm64.tar.gz"
      sha256 "28be001c7ba351382b93f4cab4cfe85540706d2e95db500462f62618e688880e"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.25/quantcode-linux-x64.tar.gz"
      sha256 "d11b5654ae81e0d2adee0371daa331ed1986ab8337463a11e999ba01250cff81"
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
