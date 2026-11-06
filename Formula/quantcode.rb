class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.78"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.78/quantcode-darwin-arm64.zip"
      sha256 "615955df3dc95adc52fc102dac5f551380619a7f44e910fa256ea01989285003"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.78/quantcode-darwin-x64.zip"
      sha256 "e68ac503785c3af49c51ae4f66d35b8012255893c1aedc22dce8f1a9b42a2ce9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.78/quantcode-linux-arm64.tar.gz"
      sha256 "6f12e80e7736c25a6e53c98965ebefd29496a6251aa3ad8a1486f2336b0f945a"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.78/quantcode-linux-x64.tar.gz"
      sha256 "1ae01589d57ab9eb9a4beeb1ca7998ab673b64ae9e18e341f858e1a216ca929e"
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
