class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.63"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.63/quantcode-darwin-arm64.zip"
      sha256 "8ea6a07454a02226de08c37c9cc6fcb6efa38fef9206d1f6564cd1bca167e182"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.63/quantcode-darwin-x64.zip"
      sha256 "edc2aa6a95d5318342d47af508db96880875d5398b4f4d03bf44b68c9e0ade86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.63/quantcode-linux-arm64.tar.gz"
      sha256 "39129139a6cf73e66aefd7a068b779be5364c33cf54db7d462e69c7c5425e7fc"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.63/quantcode-linux-x64.tar.gz"
      sha256 "ae809304b1102948ff73e665e830b85798e7bb6ae21fd92a6b61add3a0802c5b"
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
