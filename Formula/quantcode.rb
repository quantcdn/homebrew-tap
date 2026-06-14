class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.35/quantcode-darwin-arm64.zip"
      sha256 "4c5979ad6928d2ba34ba79734d36e0fa78eff215573cbe90f3030685f4e169db"
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
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.35/quantcode-linux-arm64.tar.gz"
      sha256 "6cc9d9c23d242d9092e6acc28c8cd8933e88db4e3ef620fa28a2d1fad5663708"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.35/quantcode-linux-x64.tar.gz"
      sha256 "ad56b931b14dbd2a503748c3389792a1bb89972f3f104a2a05f0c3f47283c446"
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
