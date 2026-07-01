class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.43/quantcode-darwin-arm64.zip"
      sha256 "309339eb6c2b39c9328ce7bec0ba925e215760237ff14e7f6d0346b771dc3fc9"
    end
    on_intel do
      odie <<~EOS
        QuantCode does not support Intel Macs.
        If you are on an Apple Silicon Mac running Rosetta, reinstall Homebrew natively:
          /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        After reinstalling, ensure /opt/homebrew/bin is in your PATH, then retry.
        See: https://code.quantcdn.io/docs/install
      EOS
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.43/quantcode-linux-arm64.tar.gz"
      sha256 "09490d01f0c94615ceff62e35503944d6a4324c4790ff4d5257fe8d08cf67bd2"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.43/quantcode-linux-x64.tar.gz"
      sha256 "b71837bf136d785d098a8be222b9473f73cc8a7de97cb71401a8e21e9951ad8f"
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
