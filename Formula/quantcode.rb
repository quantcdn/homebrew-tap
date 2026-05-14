class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.29/quantcode-darwin-arm64.zip"
      sha256 "6a315e45c68c55cb5fe57fa0434cc0a70e72bf7fcab3d95f0cc6e9d2f4d6c9f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.29/quantcode-linux-arm64.tar.gz"
      sha256 "c9129c44b7a447953d1ff9043cd10c3bb15f5080ef970b4767199f01315677e7"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.29/quantcode-linux-x64.tar.gz"
      sha256 "72d1839763d27e394379a447d666ec516d3162fd5d886d9397536aa24caeb6ce"
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
