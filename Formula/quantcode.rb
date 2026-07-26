class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.47/quantcode-darwin-arm64.zip"
      sha256 "0a1f58ce4dc519215eec142ac7b65a6580ed909cd75f8dd7f1d5accb2ca7af2e"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.47/quantcode-darwin-x64.zip"
      sha256 "90ab4a3a6f77c6550dd85bee60835d1feb5c977c2deb27fe782af0e32fbf4241"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.47/quantcode-linux-arm64.tar.gz"
      sha256 "10e05138cab180f369c96868120fc13510db42e0cd6f8851d47d52efae8be422"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.47/quantcode-linux-x64.tar.gz"
      sha256 "8c83c9c510c78c2f9b4178410543006a12e5dc4edc53593791e31a94fde9c4f7"
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
