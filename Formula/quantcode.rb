class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.11/quantcode-darwin-arm64.zip"
      sha256 "76dae8aca0d03b769434fab3aba7fb132f9fb664a916566642c78ff2daaafe36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.11/quantcode-linux-arm64.tar.gz"
      sha256 "e61eaf4d1f386a92bba00019e7512e4fa98e5c070f10a366b1732cf59740484f"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.11/quantcode-linux-x64.tar.gz"
      sha256 "dae7fba8e4388753b710da5ac3f3a8f157406c45d435297bbe9c6a92e67a37bd"
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
