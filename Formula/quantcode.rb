class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.75"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.75/quantcode-darwin-arm64.zip"
      sha256 "7aa53c61448063fe63b5ff32c985de8125322f41e8aa7b3df90abcfc9d450e0c"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.75/quantcode-darwin-x64.zip"
      sha256 "88d32e91671124379791d3d1f5e8c7e2fa54aa3d72f874ed460b4b6cc464590a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.75/quantcode-linux-arm64.tar.gz"
      sha256 "91d72262ffa3570c72a66c6e5500cf975ff70270ab7bdc7eea674d4fc70469e1"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.75/quantcode-linux-x64.tar.gz"
      sha256 "552c4cbe5f7306373ea1294b85b794f9e412ce6b72b247bb7f8d3f9b20005390"
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
