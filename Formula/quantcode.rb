class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.20/quantcode-darwin-arm64.zip"
      sha256 "b067d93040dab5fb25be38641a985067ef5f8e9b61e99949cc90e8c3bbf80ad0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.20/quantcode-linux-arm64.tar.gz"
      sha256 "9ef0993685d4a038e46f725ad7c4fb7e0ced6006d42c319a9948bdf0ef66ea05"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.20/quantcode-linux-x64.tar.gz"
      sha256 "d24e1e2f0522bf0f61746e3c5652129902092aedf1fb97ea89e464d5481e9731"
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
