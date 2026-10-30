class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.72"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.72/quantcode-darwin-arm64.zip"
      sha256 "594feea2af4fcaff1a3261a7fcd092994dbee6ba26e56a8e563eb0e045f22ed8"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.72/quantcode-darwin-x64.zip"
      sha256 "264051650c824dc6aea66304608887055a473b759513b8fcd8bd7a81a27e43e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.72/quantcode-linux-arm64.tar.gz"
      sha256 "952c7b221f69e310238a328456f22d8a74d17ccff59368ea46f1a2954cebe051"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.72/quantcode-linux-x64.tar.gz"
      sha256 "60035483f19ef750a8765f68250d419353d5ff33ff68748e779f892bd3ef3672"
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
