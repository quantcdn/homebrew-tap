class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.69"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.69/quantcode-darwin-arm64.zip"
      sha256 "507148d02fc5a3acdb194f0f4c265e6037b334806453b7f6dd9e3e80c9d79ea0"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.69/quantcode-darwin-x64.zip"
      sha256 "b83449ac05e82bd4909a7d41ab1f231df43254e8830329685434536947827c80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.69/quantcode-linux-arm64.tar.gz"
      sha256 "b08a0ee8130703ba851a59b2ee512ad61df3b78169c6a165826293fe8cc1d810"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.69/quantcode-linux-x64.tar.gz"
      sha256 "353604c94a916b011faa79af4aac6650c9393299125dd57a242be672388d6d83"
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
