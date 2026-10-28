class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.70"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.70/quantcode-darwin-arm64.zip"
      sha256 "34816dbbe97fd7420fc5140e4a7c131344b3ca640fc7ede011d24d066a75946d"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.70/quantcode-darwin-x64.zip"
      sha256 "a9935151e8ad8bbd0d0aa55e48b7e8a937a25433f5ea4c271356f6ccd3ddd531"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.70/quantcode-linux-arm64.tar.gz"
      sha256 "f80cec65a6e740d17b8b648bfa2eefe649af99af38e853e020f77bebc677e5e3"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.70/quantcode-linux-x64.tar.gz"
      sha256 "c703f527284110c9feee2abbdfb7eb183c92b8fbbb2813a1154f90b3a62935d4"
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
