class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.71"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.71/quantcode-darwin-arm64.zip"
      sha256 "48a2f6d86ee18c464b62e161e07771346ab9738382e2c249510d35d210414ab4"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.71/quantcode-darwin-x64.zip"
      sha256 "d448144b8765b59506bf7c8ee6b4616f4f89a40476654e56e2cba2233b5876ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.71/quantcode-linux-arm64.tar.gz"
      sha256 "e52851fba7cae91777e5261e2f714d6aba6fac23a0f2fd8bf67aa35b94241be8"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.71/quantcode-linux-x64.tar.gz"
      sha256 "6bd0f7da7037ddd6d05962a057170c49139ebbc2d88cd79c67c1379816b9cdd4"
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
