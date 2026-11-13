class QuantcodeDev < Formula
  desc "AI coding assistant for Australian Government developers (dev channel)"
  homepage "https://code.quantcdn.io"
  version "0.0.0-dev.20261113.g88a5ff6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-darwin-arm64.zip"
      sha256 "6e7317e60f09f42a86d82a0743eef0305c9abee79cb8b8acb0a1c8f0356df425"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-darwin-x64.zip"
      sha256 "d21c2e1be5f8550d1c27766e448667c8a2a292556d5cb847a0871d393dd48c56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-linux-arm64.tar.gz"
      sha256 "0d8bd512fa4106025274ce675df3fc83379f804f60afc44ea7bd6be031fb1ea6"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-linux-x64.tar.gz"
      sha256 "fdf7c13c18a534134fec6691917a6fea8b4189d6567c8f7bfc57a93101aeec9c"
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
