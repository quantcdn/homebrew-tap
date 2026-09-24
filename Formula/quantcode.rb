class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.64"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.64/quantcode-darwin-arm64.zip"
      sha256 "43ce920c5602c72a243816ded8b2f992df363de9dd0d6e4d9ba416af23971dba"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.64/quantcode-darwin-x64.zip"
      sha256 "03385e07266df7eaf353923519565dc4e324bc581f489d3fe9f33b035729b3b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.64/quantcode-linux-arm64.tar.gz"
      sha256 "c299ad7dfae995f287c4c81830732656df6618f27dcd4d5a38fb9d3c6dc7e9ea"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.64/quantcode-linux-x64.tar.gz"
      sha256 "20c3a0b1aa9d91b26b004fc9207e7ad70b4f26598967a36c946eb25cf8f0da79"
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
