class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.65"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.65/quantcode-darwin-arm64.zip"
      sha256 "3aa63fce40fe098c60f6ea72cd5f47ec0131f00b6bdfffa02b0ffa586d9f8127"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.65/quantcode-darwin-x64.zip"
      sha256 "a96ab15eb084ee2f9e2b8b85658ae01265880e37e4697e7a3f2f95bad17abe67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.65/quantcode-linux-arm64.tar.gz"
      sha256 "7d361d315a2aa069602e993cad985f2d209bbb50d821243f2ad9a83d600d4019"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.65/quantcode-linux-x64.tar.gz"
      sha256 "b16371e6c0562bbb4c818f360d2ebad256135326ef74fcae3e5df978991d4ebe"
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
