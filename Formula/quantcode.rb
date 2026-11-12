class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.79"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.79/quantcode-darwin-arm64.zip"
      sha256 "157a0f589ae415e1d08c490ca9200b6b9360eed7cf9a20f2803f2eb1845a7bef"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.79/quantcode-darwin-x64.zip"
      sha256 "7232c897dd3ac1f9b825d3ac20a5d5a6bd48bfbf2d060934e855224cac621eac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.79/quantcode-linux-arm64.tar.gz"
      sha256 "a0d04e8e64a1be7e60ce0d50df85e995ba437da898be95ecbda83ae39d65c0cd"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.79/quantcode-linux-x64.tar.gz"
      sha256 "e6beb249fc074025e46b417332872f3858d9f3bb0ecb12979c66806b7faafbe0"
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
