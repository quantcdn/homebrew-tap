class QuantcodeDev < Formula
  desc "AI coding assistant for Australian Government developers (dev channel)"
  homepage "https://code.quantcdn.io"
  version "0.0.0-dev.20260626.g36a509d"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-darwin-arm64.zip"
      sha256 "72d2e3f3f4e71647a3ec24970bff00d7197606f82508a303098e4c1527574f21"
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
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-linux-arm64.tar.gz"
      sha256 "e409c6c8dd07ac943246c70872696130f96d1564c4ee06f25a99050bd1700df5"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-linux-x64.tar.gz"
      sha256 "794bc80209499facaa954c08f6a52f2d6172702bccc4b5ef5a52a02ed10bc793"
    end
  end

  def install
    bin.install "quantcode-dev"
    bin.install_symlink bin/"quantcode-dev" => "qcode-dev"
  end

  test do
    assert_match "quantcode", shell_output("#{bin}/quantcode-dev --version")
  end
end
