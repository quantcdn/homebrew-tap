class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.7/quantcode-darwin-arm64.zip"
      sha256 "d97ef6f8bfa5f1ddd8be30cf6b172fbdde88383ef1b28ac0fcf8e96c49824cd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.7/quantcode-linux-arm64.tar.gz"
      sha256 "c0ea0882a73a3335fda17d61a9c231a6ee81b3f915f2c0acd8d473bb3a25f59d"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.7/quantcode-linux-x64.tar.gz"
      sha256 "e3bff5a86d42ef4d6c4c578032b0bad0849b5e36e597911e91ec116e9f66f59e"
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
