class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.28/quantcode-darwin-arm64.zip"
      sha256 "c77f5798041791ad21876b478bfa5d038d49afead811be5169cc33646d3b95ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.28/quantcode-linux-arm64.tar.gz"
      sha256 "4551da90c8c8059643db60bd274a9953a2aaf4a9296a51604fce96386b7f3799"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.28/quantcode-linux-x64.tar.gz"
      sha256 "206da2706138f49d471990a93513d17064fa93636351ff5a4cd7e4d9f5c1ad70"
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
