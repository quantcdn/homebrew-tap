class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.52/quantcode-darwin-arm64.zip"
      sha256 "94fd577be95e13aef4cf062bd3af2a07d3244b0efa85d50a34ac5c937bf97c33"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.52/quantcode-darwin-x64.zip"
      sha256 "c673b8d8b3b3300bbc888970b93f3350186fd137e5e6397312190beb9b4ccd90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.52/quantcode-linux-arm64.tar.gz"
      sha256 "79f0980dc230cfb89ba858fb827e0653aaf023cc2f71baedb2273e964ee8e19d"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.52/quantcode-linux-x64.tar.gz"
      sha256 "e594b386c8f7859d469f7c5f89f986a946e9cfb4d7dd8ebedea4dc57d307c1ff"
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
