class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.53/quantcode-darwin-arm64.zip"
      sha256 "e581b7df3e9f67c5697dbb6eae679ee457816fdd1c98090049d1d809a4429c10"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.53/quantcode-darwin-x64.zip"
      sha256 "5c8c51d95e6fe837a1ae85a90a3596442f1cfe46808da7143975d9698cb8a980"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.53/quantcode-linux-arm64.tar.gz"
      sha256 "325132cc189fdde2a3848a4dcf0f75488794bf5fc017e8a4be4867eca798e267"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.53/quantcode-linux-x64.tar.gz"
      sha256 "7ac390dbfa058d1948a724b960243e53d1e7eb279d7431b8b5fcf3531c0ce98b"
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
