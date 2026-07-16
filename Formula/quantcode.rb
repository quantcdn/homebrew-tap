class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.44/quantcode-darwin-arm64.zip"
      sha256 "234e0329be12687be60bc5905a5c842822514336d0352a4b04b38c3d015715d8"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.44/quantcode-darwin-x64.zip"
      sha256 "b09acc7aa03893f48582cb8c94ced71a2927114a006589aea739b5cbf802a726"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.44/quantcode-linux-arm64.tar.gz"
      sha256 "c0223eb44bccac2ba2c45ab1f0dca02f9ad723dfce8f4d54a18b0abd17538c5b"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.44/quantcode-linux-x64.tar.gz"
      sha256 "2c185d7396bb7c76f1fd64f356d1d0518168c7dde2b4bd668c470e09ad3af996"
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
