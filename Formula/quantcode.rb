class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.40/quantcode-darwin-arm64.zip"
      sha256 "848e50c90eb3dc97486d6741b4b57eeb1ba3e03ad89491db7190e825c22eddc0"
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
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.40/quantcode-linux-arm64.tar.gz"
      sha256 "4211bf0e93dfa9cfdbf3fa852009d84e0e6b3e7f6748327bf24168c6235f60bf"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.40/quantcode-linux-x64.tar.gz"
      sha256 "e244a4c57b9464b5561cfb76f8996884d9c8f664c421ae57937a9176bcfbc586"
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
