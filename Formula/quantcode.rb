class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.46/quantcode-darwin-arm64.zip"
      sha256 "9c02d6a6f9683f6686e9c874df5920127d405d7a5f20ae339967767ebe1cf9ad"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.46/quantcode-darwin-x64.zip"
      sha256 "e345fa3a85664a72846365172ad6642b348493dbd4d7aae5fed1799315a0477c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.46/quantcode-linux-arm64.tar.gz"
      sha256 "e04a9ea6cbd0a797cfc3a64a4b337429cb72293e3ae7141566a8cfa5eed5cd3f"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.46/quantcode-linux-x64.tar.gz"
      sha256 "0527ed4037e0eda653a0c5e4a3ed4ee21ead41fb652aa7d69ece59c28d774f10"
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
