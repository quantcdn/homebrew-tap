class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.76"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.76/quantcode-darwin-arm64.zip"
      sha256 "9fc8eadb1b2bba5a31bfd6b88f8a7a6a6644686ae6d14c097c693535e87f75b6"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.76/quantcode-darwin-x64.zip"
      sha256 "81fedf9c75e377443bd6bf8511aac809b573bc0a01c12ec14cbc2b75df66299a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.76/quantcode-linux-arm64.tar.gz"
      sha256 "912dfe7333146e45b55eb6eaba1a47075f776f73d1be30ff36745e7cd9179a03"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.76/quantcode-linux-x64.tar.gz"
      sha256 "701fa6267cad6f4c2996b527390c27647664590cfaa4e7a6b74b2dd51f9e537d"
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
