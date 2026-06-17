class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.38/quantcode-darwin-arm64.zip"
      sha256 "b72c3147a1320978d92616090d53f51d289c458651b0954595e697438f3139ae"
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
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.38/quantcode-linux-arm64.tar.gz"
      sha256 "b4866b6dd179eab476510b7bce64bdefaf7fcf102391b83658ad2a53a8c806a5"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.38/quantcode-linux-x64.tar.gz"
      sha256 "5283a8d7c87044a8e0005c88d5b75c870d0d31b9e934a9646a9b49cc985a7d31"
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
