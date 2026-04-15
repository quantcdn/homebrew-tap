class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.2/quantcode-darwin-arm64.zip"
      sha256 "93f5c8f08e50ede610c125c6c9adbe01843cdedf0eb36883b7b6afc512222236"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.2/quantcode-linux-arm64.tar.gz"
      sha256 "60ca62921c18b9151af19cd52a60e6dfb9043ccd6821a0756f2bdddb44b82b07"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.2/quantcode-linux-x64.tar.gz"
      sha256 "51a02f5155a5be8e494bb9c4bc0738d369a123c9b9dbcea85bd93d9a40370628"
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
